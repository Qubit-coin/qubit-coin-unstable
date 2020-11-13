# SPDX-License-Identifier: MIT

include(CMakeDependentOption)

if(NOT DEFINED OQS_KEM_DEFAULT)
    set(OQS_KEM_DEFAULT "OQS_KEM_alg_frodokem_640_aes")
endif()
if(NOT DEFINED OQS_SIG_DEFAULT)
    set(OQS_SIG_DEFAULT "OQS_SIG_alg_dilithium_2")
endif()

if(NOT WIN32)
    option(OQS_USE_OPENSSL "" ON)
    cmake_dependent_option(OQS_USE_AES_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)
    cmake_dependent_option(OQS_USE_SHA2_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)
    cmake_dependent_option(OQS_USE_SHA3_OPENSSL "" ON "OQS_USE_OPENSSL" OFF)

    option(OQS_ENABLE_KEM_BIKE "" ON)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l1_cpa "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l1_fo "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l3_cpa "" ON "OQS_ENABLE_KEM_BIKE" OFF)
    cmake_dependent_option(OQS_ENABLE_KEM_bike1_l3_fo "" ON "OQS_ENABLE_KEM_BIKE" OFF)
endif()

option(OQS_ENABLE_KEM_FRODOKEM "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_640_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_640_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_976_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_976_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_1344_aes "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_frodokem_1344_shake "" ON "OQS_ENABLE_KEM_FRODOKEM" OFF)

option(OQS_ENABLE_KEM_SIKE "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p434 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p434_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p503 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p503_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p610 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p610_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p751 "" ON "OQS_ENABLE_KEM_SIKE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sike_p751_compressed "" ON "OQS_ENABLE_KEM_SIKE" OFF)

option(OQS_ENABLE_KEM_SIDH "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p434 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p434_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p503 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p503_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p610 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p610_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p751 "" ON "OQS_ENABLE_KEM_SIDH" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_sidh_p751_compressed "" ON "OQS_ENABLE_KEM_SIDH" OFF)

option(OQS_ENABLE_SIG_PICNIC "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L1_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L1_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L1_full "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L3_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L3_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L3_full "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L5_UR "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L5_FS "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic_L5_full "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic3_L1 "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic3_L3 "" ON "OQS_ENABLE_SIG_PICNIC" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_picnic3_L5 "" ON "OQS_ENABLE_SIG_PICNIC" OFF)

##### OQS_COPY_FROM_PQCLEAN_FRAGMENT_ADD_ENABLE_BY_ALG_START
option(OQS_ENABLE_KEM_CLASSIC_MCELIECE "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_348864 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_348864f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_460896 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_460896f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6688128 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6688128f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6960119 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_6960119f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_8192128 "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_classic_mceliece_8192128f "" ON "OQS_ENABLE_KEM_CLASSIC_MCELIECE" OFF)

option(OQS_ENABLE_KEM_HQC "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_128_1_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_192_1_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_192_2_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_256_1_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_256_2_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_hqc_256_3_cca2 "" ON "OQS_ENABLE_KEM_HQC" OFF)

option(OQS_ENABLE_KEM_KYBER "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_kyber_512 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_512_avx2 "" ON "OQS_ENABLE_KEM_kyber_512" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_kyber_768 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_768_avx2 "" ON "OQS_ENABLE_KEM_kyber_768" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024 "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024_avx2 "" ON "OQS_ENABLE_KEM_kyber_1024" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_kyber_512_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_512_90s_avx2 "" ON "OQS_ENABLE_KEM_kyber_512_90s" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_kyber_768_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_768_90s_avx2 "" ON "OQS_ENABLE_KEM_kyber_768_90s" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024_90s "" ON "OQS_ENABLE_KEM_KYBER" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux" AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_kyber_1024_90s_avx2 "" ON "OQS_ENABLE_KEM_kyber_1024_90s" OFF)
endif()

option(OQS_ENABLE_KEM_NTRU "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048509 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048509_avx2 "" ON "OQS_ENABLE_KEM_ntru_hps2048509" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048677 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps2048677_avx2 "" ON "OQS_ENABLE_KEM_ntru_hps2048677" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps4096821 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntru_hps4096821_avx2 "" ON "OQS_ENABLE_KEM_ntru_hps4096821" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntru_hrss701 "" ON "OQS_ENABLE_KEM_NTRU" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntru_hrss701_avx2 "" ON "OQS_ENABLE_KEM_ntru_hrss701" OFF)
endif()

option(OQS_ENABLE_KEM_NTRUPRIME "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr653 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr653_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_ntrulpr653" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr761 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr761_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_ntrulpr761" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr857 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_ntrulpr857_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_ntrulpr857" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup653 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup653_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_sntrup653" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup761 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup761_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_sntrup761" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup857 "" ON "OQS_ENABLE_KEM_NTRUPRIME" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Linux|Darwin" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_KEM_ntruprime_sntrup857_avx2 "" ON "OQS_ENABLE_KEM_ntruprime_sntrup857" OFF)
endif()

option(OQS_ENABLE_KEM_SABER "" ON)
cmake_dependent_option(OQS_ENABLE_KEM_saber_lightsaber "" ON "OQS_ENABLE_KEM_SABER" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_saber_saber "" ON "OQS_ENABLE_KEM_SABER" OFF)
cmake_dependent_option(OQS_ENABLE_KEM_saber_firesaber "" ON "OQS_ENABLE_KEM_SABER" OFF)

option(OQS_ENABLE_SIG_DILITHIUM "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_dilithium_2 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Darwin|Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_BMI1_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_dilithium_2_avx2 "" ON "OQS_ENABLE_SIG_dilithium_2" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_dilithium_3 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Darwin|Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_BMI1_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_dilithium_3_avx2 "" ON "OQS_ENABLE_SIG_dilithium_3" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_dilithium_4 "" ON "OQS_ENABLE_SIG_DILITHIUM" OFF)
if(ARCH STREQUAL "x86_64" AND CMAKE_SYSTEM_NAME MATCHES "Darwin|Linux" AND OQS_USE_AVX2_INSTRUCTIONS AND OQS_USE_BMI1_INSTRUCTIONS AND OQS_USE_AES_INSTRUCTIONS AND OQS_USE_POPCNT_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_dilithium_4_avx2 "" ON "OQS_ENABLE_SIG_dilithium_4" OFF)
endif()

option(OQS_ENABLE_SIG_FALCON "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_falcon_512 "" ON "OQS_ENABLE_SIG_FALCON" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_falcon_1024 "" ON "OQS_ENABLE_SIG_FALCON" OFF)

option(OQS_ENABLE_SIG_RAINBOW "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Ia_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_IIIc_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_classic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_cyclic "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)
cmake_dependent_option(OQS_ENABLE_SIG_rainbow_Vc_cyclic_compressed "" ON "OQS_ENABLE_SIG_RAINBOW" OFF)

option(OQS_ENABLE_SIG_SPHINCS "" ON)
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_128f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128f_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_128f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_128s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_128s_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_128s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_192f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192f_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_192f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_192s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_192s_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_192s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_256f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256f_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_256f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_robust_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_256s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AES_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_haraka_256s_simple_aesni "" ON "OQS_ENABLE_SIG_sphincs_haraka_256s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_128f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_128f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_128s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_128s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_128s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_192f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_192f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_192s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_192s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_192s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_256f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_256f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_256s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_sha256_256s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_sha256_256s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_128f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_128f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_128s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_128s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_128s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_192f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_192f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_192s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_192s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_192s_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_256f_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256f_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_256f_simple" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_robust "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_robust_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_256s_robust" OFF)
endif()
cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_simple "" ON "OQS_ENABLE_SIG_SPHINCS" OFF)
if(ARCH STREQUAL "x86_64" AND OQS_USE_AVX2_INSTRUCTIONS)
    cmake_dependent_option(OQS_ENABLE_SIG_sphincs_shake256_256s_simple_avx2 "" ON "OQS_ENABLE_SIG_sphincs_shake256_256s_simple" OFF)
endif()
##### OQS_COPY_FROM_PQCLEAN_FRAGMENT_ADD_ENABLE_BY_ALG_END
