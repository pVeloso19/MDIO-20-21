/* Objective function */
min: 200r1_0 + 100r2_0 +
     600r1_1 + 300r2_1 +
     1000r1_2 + 500r2_2 +
     200r1_3 + 100r2_3 +
     800r1_4 + 400r2_4 +
     1600r1_5 + 800r2_5 +
     180r1_6 + 90r2_6 +
     200r1_9 + 400r2_9 +
     1000r1_10 + 500r2_10 +
     600r1_11 + 300r2_11;
     
/* Variable bounds */
// tempo máximo para concluir o projecto
tf <= 20;

// relações de precedência
arco_i0: t0 >= ti + 0;
arco_i6: t6 >= ti + 0;
arco_01: t1 >= t0 - r1_0 - r2_0 + 4;
arco_04: t4 >= t0 - r1_0 - r2_0 + 4;
arco_12: t2 >= t1 - r1_1 - r2_1 + 6;
arco_23: t3 >= t2 - r1_2 - r2_2 + 7;
arco_3f: tf >= t3 - r1_3 - r2_3 + 2;
arco_42: t2 >= t4 - r1_4 - r2_4 + 9;
arco_45: t5 >= t4 - r1_4 - r2_4 + 9;
arco_53: t3 >= t5 - r1_5 - r2_5 + 4;
arco_5f: tf >= t5 - r1_5 - r2_5 + 4;
arco_64: t4 >= t6 - r1_6 - r2_6 + 5;
arco_65: t5 >= t6 - r1_6 - r2_6 + 5;
arco_69: t9 >= t6 - r1_6 - r2_6 + 5;
arco_610: t10 >= t6 - r1_6 - r2_6 + 5;
arco_9f: tf >= t9 - r1_9 - r2_9 + 2;
arco_10_5: t5 >= t10 - r1_10 - r2_10 + 8;
arco_10_9: t9 >= t10 - r1_10 - r2_10 + 8;
arco_10_11: t11 >= t10 - r1_10 - r2_10 + 8;
arco_11_9: t9 >= t11 - r1_11 - r2_11 + 7;

//restrições de redução
0.5 decisao_0 <= r1_0;
r1_0 <= 0.5;
r2_0 <= 0.5 decisao_0;

1 decisao_1 <= r1_1;
r1_1 <= 1;
r2_1 <= 1 decisao_1;

3 decisao_2 <= r1_2;
r1_2 <= 3;
r2_2 <= 1 decisao_2;

0.5 decisao_3 <= r1_3;
r1_3 <= 0.5;
r2_3 <= 0.5 decisao_3;

2 decisao_4 <= r1_4;
r1_4 <= 2;
r2_4 <= 1 decisao_4;

0.5 decisao_5 <= r1_5;
r1_5 <= 0.5;
r2_5 <= 0.5 decisao_5;

1 decisao_6 <= r1_6;
r1_6 <= 1;
r2_6 <= 1 decisao_6;

1 decisao_9 <= r1_9;
r1_9 <= 1;
r2_9 <= 1 decisao_9;

0.5 decisao_10 <= r1_10;
r1_10 <= 0.5;
r2_10 <= 0.5 decisao_10;

1 decisao_11 <= r1_11;
r1_11 <= 1;
r2_11 <= 1 decisao_11;

bin decisao_0, decisao_1, decisao_2, decisao_3,
    decisao_4, decisao_5, decisao_6, decisao_9,
    decisao_10, decisao_11;
    







