#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <cmath>
#include <sys/time.h>
#include <random>
#include <tfhe/tfhe.h>
#include <tfhe/tlwe.h>
#include <tfhe/polynomials.h>

using namespace std;



int32_t main(int32_t argc, char **argv) {
    cout << "lets start" << endl;

    // parameter source: https://github.com/zama-ai/tfhe-rs/blob/main/tfhe/src/shortint/parameters/parameters_wopbs_message_carry.rs
    // i chose: WOPBS_PARAM_MESSAGE_3_CARRY_3_KS_PBS. The authors claim its 123 to 128 bit secure.
    // means: 3 message-bits, 3 carry-bits = mult of two 3-bit values is possible
    const int32_t lwe_dimension = 873;
    const int32_t glwe_dimension = 1; //< number of polynomials in the mask // mask = A. Only needed for GLWE
    const int32_t polynomial_size = 2048; //< a power of 2: degree of the polynomials // each coefficient is one message in tlwe
    const double lwe_noise_distribution_stdev = 0.0000006428797112843789;
    const double glwe_noise_distribution = 0.00000000000000029403601535432533;
    const int32_t pbs_base_log = 9; // pbs = programmable bootstrapping
    const int32_t pbs_level = 4;
    const int32_t ks_level = 1; // key switch
    const int32_t ks_base_log = 10;
    //const int32_t pfks_level = 4; // public functional key switch
    //const int32_t pfks_base_log = 9;
    //const int32_t pfks_noise_distribution_mu = 0.00000000000000029403601535432533;
    const int32_t cbs_level = 3; // circuit bootstrapping --> macht Lwe zu gsw
    const int32_t cbs_base_log = 5;
    const int32_t message_modulus = 8; //number of possible message values: 0 to 7
    const int32_t carry_modulus = 8;

    const double alpha_min = 0.0;
    const double alpha = lwe_noise_distribution_stdev; 
    const double alpha_max = 1.0;

    //the probability that a sample with stdev alpha decrypts wrongly on the a message_modulus message space.
    double expected_error_proba = 1. - erf(1. / (sqrt(2.) * 2. * message_modulus * alpha)); // where does the formular come from?
    cout << "All the tests below are supposed to fail with proba: " << expected_error_proba << endl;

    int32_t decomposition_length = cbs_level;
    int32_t decomposition_Bgbit = cbs_base_log; // Bg = decomposition matrix
    int32_t ks_basebit = ks_base_log;

    // PARAMETERS
    LweParams *lwe_params = new_LweParams(lwe_dimension, alpha_min, alpha_max);
    TLweParams *tlwe_params = new_TLweParams(polynomial_size, glwe_dimension, alpha_min, alpha_max); //les deux alpha mis un peu au hasard
    TGswParams *tgsw_params = new_TGswParams(decomposition_length, decomposition_Bgbit, tlwe_params); // unsure about the params
    // generate placeholders
    LweKey *lwe_key = new_LweKey(lwe_params);
    TLweKey *tlwe_key = new_TLweKey(tlwe_params);
    TGswKey *tgsw_key = new_TGswKey(tgsw_params);
    // plaintext placeholders
    int32_t plaintext_result = 0;
    int32_t message_0 = 2;
    int32_t message_1 = 2;
    int32_t p = 2; // factor for AddMul
    TorusPolynomial *mu0 = new_TorusPolynomial(polynomial_size); 
    TorusPolynomial *mu1 = new_TorusPolynomial(polynomial_size);
    TorusPolynomial *mu = new_TorusPolynomial(polynomial_size); // intermediate value
    IntPolynomial *p_polym = new_IntPolynomial(polynomial_size);
    // ciphertext placeholders
    LweSample *cipher0_lwe = new_LweSample(lwe_params);
    LweSample *cipher1_lwe = new_LweSample(lwe_params);
    LweSample *cipher_lwe = new_LweSample(lwe_params); // intermediate value
    TLweSample *cipher0_tlwe = new_TLweSample(tlwe_params);
    TLweSample *cipher1_tlwe = new_TLweSample(tlwe_params);
    TLweSample *cipher_tlwe = new_TLweSample(tlwe_params); // intermediate value
    TGswSample *cipher0_tgsw = new_TGswSample(tgsw_params);
    TGswSample *cipher1_tgsw = new_TGswSample(tgsw_params);
    TGswSample *cipher_tgsw = new_TGswSample(tgsw_params); // intermediate value
    // others
    LweBootstrappingKey *bootkey = new_LweBootstrappingKey(ks_level, ks_basebit, lwe_params, tgsw_params);
    TLweSampleFFT *cipher1_tlwe_fft = new_TLweSampleFFT(tlwe_params);
    TGswSampleFFT *cipher1_tgsw_fft = new_TGswSampleFFT(tgsw_params);

    // key generation
    lweKeyGen(lwe_key);
    tLweKeyGen(tlwe_key);
    tGswKeyGen(tgsw_key);

    // messag space
    int32_t msg0_arr[] = {0,1,2,3,4,5,6,7};
    int32_t msg1_arr[] = {0,1,2,3,4,5,6,7};

    cout << "-------------------------" << endl;
    cout << "Run it" << endl;
    cout << "-------------------------" << endl;

    int32_t op_id = 0;
    clock_t cstart, cend;
    char op_names[6][5] = {" + ", " - ", " +2*", " -2*", " * ", "none"};


    for (int32_t i = 0; i < 8; i++) {

        // msg generation lwe
        message_0 = msg0_arr[i];
        message_1 = msg1_arr[i];
        int32_t msg0_torus = modSwitchToTorus32(message_0, message_modulus);
        int32_t msg1_torus = modSwitchToTorus32(message_1, message_modulus);
        // lwe encryption  
        lweClear(cipher0_lwe, lwe_params);  
        lweClear(cipher1_lwe, lwe_params);
        lweClear(cipher_lwe, lwe_params);
        lweSymEncrypt(cipher0_lwe, msg0_torus, alpha, lwe_key);
        lweSymEncrypt(cipher1_lwe, msg1_torus, alpha, lwe_key);
        // msg generation tlwe (just lwe copied over and over again)
        torusPolynomialClear(mu0);
        torusPolynomialClear(mu1);
        torusPolynomialClear(mu);
        for (int32_t i = 0; i < mu0->N; ++i) { 
            mu0->coefsT[i] = msg0_torus;
            mu1->coefsT[i] = msg1_torus;
            p_polym->coefs[i] = p % message_modulus;
        }
        // tlwe encryption
        tLweClear(cipher0_tlwe, tlwe_params);
        tLweClear(cipher1_tlwe, tlwe_params);
        tLweClear(cipher_tlwe, tlwe_params);
        tLweSymEncrypt(cipher0_tlwe, mu0, alpha, tlwe_key);
        tLweSymEncrypt(cipher1_tlwe, mu1, alpha, tlwe_key);
        // tgsw encryption
        tGswClear(cipher0_tgsw, tgsw_params);
        tGswClear(cipher1_tgsw, tgsw_params);
        tGswClear(cipher_tgsw, tgsw_params);
        tGswSymEncrypt(cipher0_tgsw, p_polym, alpha, tgsw_key); // Question: why must it be an int polynomial and not a toruspolynomial like for tlwe?
        tGswSymEncrypt(cipher1_tgsw, p_polym, alpha, tgsw_key);
        
        //tLweToFFTConvert(cipher1_tlwe_fft, cipher1_tlwe, tgsw_params->tlwe_params);
        //cipher1_tgsw_fft = new TGswSampleFFT(tgsw_params, cipher1_tlwe_fft); // throws segmentation fault errors later
        // behavoir even occurs when untouched sample is used:
        // TLweSampleFFT *test_tlwe_fft = new_TLweSampleFFT(tgsw_params->tlwe_params);
        // TLweSample *test_tlwe = new_TLweSample(tgsw_params->tlwe_params);
        // tLweToFFTConvert(test_tlwe_fft, test_tlwe, tgsw_params->tlwe_params);
        // cipher1_tgsw_fft = new TGswSampleFFT(tgsw_params, test_tlwe_fft); // throws segmentation fault errors later
        tGswToFFTConvert(cipher1_tgsw_fft, cipher1_tgsw, tgsw_params); // throws no error but results are incorrect

        op_id = 4;

        cstart = clock();
        lweCopy(cipher_lwe, cipher0_lwe, lwe_params);
        tLweCopy(cipher_tlwe, cipher0_tlwe, tlwe_params);

        switch(op_id) {
            case 0:
                lweAddTo(cipher_lwe, cipher1_lwe, lwe_params);
                tLweAddTo(cipher_tlwe, cipher1_tlwe, tlwe_params);
                plaintext_result = message_0 + message_1;
                break;
            case 1:
                lweSubTo(cipher_lwe, cipher1_lwe, lwe_params);
                tLweSubTo(cipher_tlwe, cipher1_tlwe, tlwe_params);
                plaintext_result = message_0 - message_1;
                break;
            case 2:
                lweAddMulTo(cipher_lwe, p, cipher1_lwe, lwe_params);
                tLweAddMulTo(cipher_tlwe, p, cipher1_tlwe, tlwe_params);
                plaintext_result = message_0 + (p * message_1);
                break;
            case 3:
                lweSubMulTo(cipher_lwe, p, cipher1_lwe, lwe_params);
                tLweSubMulTo(cipher_tlwe, p, cipher1_tlwe, tlwe_params);
                plaintext_result = message_0 - (p * message_1);
                break;
            case 4:                
                // the external product IS the multiplication of two ciphertexts
                // HELP: results are incorrect!
                tGswFFTExternMulToTLwe(cipher_tlwe, cipher1_tgsw_fft, tgsw_params);
                //tGswExternProduct(cipher_tlwe, cipher1_tgsw, cipher0_tlwe, tgsw_params); // same issue

                // bootstrap and decrypt first sample
                // convert tlwe to lwe

                // HELP after tLweExtractLweSampleIndex, cipher0_tlwe AND cipher_lwe cannot be deleted or cleared anymore for some reason
                // cipher0_tlwe is the next thing initialized after cipher_lwe --> so it must have to do with memory out of bound
                //tLweExtractLweSampleIndex(cipher_lwe, cipher_tlwe, 0, lwe_params, tlwe_params);
                //delete_LweSample(cipher_lwe); // segmentation fault
                //delete_TLweSample(cipher0_tlwe); // segmentation fault

                // bootstrap lwe sample
                //tfhe_bootstrap(cipher_lwe, bootkey, 1, cipher_lwe); //unsure about the parameters
                
                plaintext_result = message_0 * message_1;
                break;
            
            default:
                plaintext_result = message_0;
                break;
        }
        
        cend = clock();
        double cyc = (cend - cstart);

        // decrypt
        int32_t dec_num = 0; // temp decryption value
        int32_t muInt = 0; // temp value
        // decrypt lwe sample
        int32_t res_torus_lwe = lweSymDecrypt(cipher_lwe, lwe_key, message_modulus);
        dec_num = modSwitchFromTorus32(res_torus_lwe, message_modulus);
        muInt = plaintext_result % message_modulus;
        //cout << "LWE: (" << message_0 << op_names[op_id] << message_1 << ") mod " << message_modulus << " result " << dec_num << " and should be " << muInt << endl;
        // decrypt first tlwe sample
        tLweSymDecrypt(mu, cipher_tlwe, tlwe_key, message_modulus);
        dec_num = modSwitchFromTorus32(mu->coefsT[0], message_modulus);
        cout << "TLWE: (" << message_0 << op_names[op_id] << message_1 << ") mod " << message_modulus << " result " << dec_num << " and should be " << muInt << endl;
        // no need to decrypt tgsw --> its multiplication result is lwe anyway
        
        cout << "----------------------" << endl;
        //cout << "cycles needed for operation: " << cyc << endl;
    }

    
    //delete_TLweSample(cipher0_tlwe); //segmentation fault - WHY?
    //delete_LweSample(cipher_lwe); //segmentation fault - WHY?

    delete_TGswSampleFFT(cipher1_tgsw_fft);
    delete_TLweSampleFFT(cipher1_tlwe_fft);
    delete_LweBootstrappingKey(bootkey);

    delete_TGswSample(cipher_tgsw);
    delete_TGswSample(cipher1_tgsw);
    delete_TGswSample(cipher0_tgsw);
    delete_TLweSample(cipher_tlwe);
    delete_TLweSample(cipher1_tlwe);
    delete_LweSample(cipher1_lwe);
    delete_LweSample(cipher0_lwe);
    delete_IntPolynomial(p_polym);
    delete_TorusPolynomial(mu);
    delete_TorusPolynomial(mu1);
    delete_TorusPolynomial(mu0);
    delete_TGswKey(tgsw_key);
    delete_TLweKey(tlwe_key);
    delete_LweKey(lwe_key);
    // the parameters are used in different deconstructors and must be deleted last
    delete_TGswParams(tgsw_params);
    delete_TLweParams(tlwe_params);
    delete_LweParams(lwe_params);

    return 0;
}
