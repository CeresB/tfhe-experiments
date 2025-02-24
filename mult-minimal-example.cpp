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
    // parameter source: https://github.com/zama-ai/tfhe-rs/blob/main/tfhe/src/shortint/parameters/parameters_wopbs_message_carry.rs
    // i chose: MESSAGE_3_CARRY_4
    const int32_t lwe_dimension = 481;
    const int32_t glwe_dimension = 2; //< number of polynomials in the mask // mask = A. Only needed for GLWE
    const int32_t polynomial_size = 1024; //< a power of 2: degree of the polynomials // each coefficient is one message in tlwe
    const double lwe_noise_distribution_stdev = 0.00061200133780220371345;
    const double glwe_noise_distribution = 0.00000000000000022148688116005568513645324585951;
    const int32_t pbs_base_log = 11; // pbs = programmable bootstrapping
    const int32_t pbs_level = 3;
    const int32_t ks_level = 9; // key switch
    const int32_t ks_base_log = 1;
    //const int32_t pfks_level = 3; // public functional key switch
    //const int32_t pfks_base_log = 11;
    //const int32_t pfks_noise_distribution_mu = 0.00000000000000022148688116005568513645324585951;
    const int32_t cbs_level = 5; // circuit bootstrapping --> macht Lwe zu gsw
    const int32_t cbs_base_log = 4;
    const int32_t message_modulus = 8; //number of possible message values: 0 to 7
    const int32_t carry_modulus = 16;

    const double alpha_min = 0.0;
    const double alpha = lwe_noise_distribution_stdev; 
    const double alpha_max = 1.0;
    int32_t decomposition_length = cbs_level;
    int32_t decomposition_Bgbit = cbs_base_log; // Bg = decomposition matrix
    int32_t ks_basebit = ks_base_log;

    // Parameter sets and keys
    TLweParams *tlwe_params = new_TLweParams(polynomial_size, glwe_dimension, alpha_min, alpha_max);
    TGswParams *tgsw_params = new_TGswParams(decomposition_length, decomposition_Bgbit, tlwe_params);
    TLweKey *tlwe_key = new_TLweKey(tlwe_params);
    TGswKey *tgsw_key = new_TGswKey(tgsw_params);
    // key generation
    tLweKeyGen(tlwe_key);
    tGswKeyGen(tgsw_key);    
    // tlwe encryption
    TLweSample *result = new_TLweSample(tlwe_params);
    TLweSample *zero_tlwe_cipher = new_TLweSample(tlwe_params);
    tLweSymEncryptZero(zero_tlwe_cipher, alpha, tlwe_key);
    // tgsw encryption
    TGswSample *zero_tgsw_cipher = new_TGswSample(tgsw_params);
    tGswEncryptZero(zero_tgsw_cipher, alpha, tgsw_key);

    // mult operation
    tGswExternProduct(result, zero_tgsw_cipher, zero_tlwe_cipher, tgsw_params);

    // decrypt a few tlwe coefficients
    int32_t dec_num = 0; // temp decryption value
    TorusPolynomial *dec_mu = new_TorusPolynomial(polynomial_size);
    tLweSymDecrypt(dec_mu, result, tlwe_key, message_modulus);
    for(int32_t i=0; i<10; i++){
        dec_num = modSwitchFromTorus32(dec_mu->coefsT[i], message_modulus);
        // we multiplied with 0 so all coefficients of the multiplication result should be 0 as well
        cout << "TLWE: (" << 0 << " * " << 0 << ") mod " << message_modulus << " result " << dec_num << " and should be " << 0 << endl;
    }
    cout << "----------------------" << endl;

    
    delete_TLweSample(result);
    delete_TLweSample(zero_tlwe_cipher);
    delete_TGswSample(zero_tgsw_cipher);
    delete_TorusPolynomial(dec_mu);
    delete_TGswKey(tgsw_key);
    delete_TLweKey(tlwe_key);
    delete_TGswParams(tgsw_params);
    delete_TLweParams(tlwe_params);

    return 0;
}
