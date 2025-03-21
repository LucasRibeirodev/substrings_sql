SELECT 
    SUBSTRING(A.linha_arquivo, 1, 1) AS tip_reg,
    SUBSTRING(A.linha_arquivo, 2, 2) AS cod_siste,
    SUBSTRING(A.linha_arquivo, 4, 8) AS dat_movto,
    SUBSTRING(A.linha_arquivo, 12, 1) AS tip_inter,
    SUBSTRING(A.linha_arquivo, 13, 8) AS cod_credor,
    SUBSTRING(A.linha_arquivo, 21, 30) AS des_regis,
    SUBSTRING(A.linha_arquivo, 51, 8) AS cod_parce,
    SUBSTRING(A.linha_arquivo, 59, 8) AS dat_venci,
    SUBSTRING(A.linha_arquivo, 67, 18) AS val_pago,
    SUBSTRING(A.linha_arquivo, 85, 8) AS dat_pagam,
    SUBSTRING(A.linha_arquivo, 93, 8) AS cod_parce_asses,
    SUBSTRING(A.linha_arquivo, 101, 1) AS ind_acao
--INTO #ESTAC
FROM remessas_carteiras AS A
WHERE SUBSTRING(A.linha_arquivo, 12, 1) = 'F'