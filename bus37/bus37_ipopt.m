clc;
clear;
yalmip('clear')
%%%%%%%Bus Data%%%%%%%%%%%
bus37_node_line_data
%%%%%%%%%%%%%%%%%%%%%
%bus4_1Area_data
%%%%%%%%%%%%%%%%%%%
% x=sdpvar(4,1);
% f=x(1)*x(4)*(x(1)+x(2)+x(3))+x(3);
% F=[];
% F=[F,x(1)*x(2)*x(3)*x(4)>=25];
% F=[F,x(1)^2+x(2)^2+x(3)^2+x(4)^2==40];
% 
% F=[F,x>=1];
% F=[F,x<=5];
% ops=sdpsettings('solver','ipopt'); 
% diagn =optimize(F,f,ops);
%N_Area=size(Area,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c_k0_p=0;
c_k1_p1=[0.6,0.3,1];
c_k1_p2=[0.6,0.3,1]*0.9;
c_k2_p=0;

V_k_p_min=0.95;%0.95;
V_k_p_max=1.05;%1.05;
P_g_p_min1=0;
P_g_p_max1=10;
Q_g_p_min1=0;
Q_g_p_max1=10;


P_g_p_min2=0;
P_g_p_max2=50/1000/S_base;
Q_g_p_min2=0;
Q_g_p_max2=20/1000/S_base;
%%%%%%%%%%%constraints%%%%%%%%%%
X_v=sdpvar(2*N_of_phases,1);
%%SDP 123
% test=[
% 1.0500
%    -0.5250
%    -0.5250
%     1.0402
%    -0.5274
%    -0.5178
%    -0.5273
%    -0.5166
%    -0.5161
%     0.5156
%     0.5151
%     1.0329
%    -0.5294
%    -0.5134
%     1.0280
%    -0.5308
%    -0.5103
%     1.0266
%     1.0246
%     1.0243
%    -0.5307
%     1.0217
%    -0.5325
%    -0.5053
%     1.0249
%     0.5042
%     0.5035
%     0.5039
%     1.0132
%    -0.5338
%    -0.5034
%     1.0119
%     1.0110
%     1.0128
%    -0.5337
%    -0.5027
%    -0.5334
%     1.0124
%    -0.5336
%    -0.5021
%    -0.5010
%     1.0119
%    -0.5336
%    -0.5018
%     1.0116
%    -0.5015
%     1.0112
%    -0.5016
%     1.0115
%    -0.5337
%    -0.5017
%     1.0113
%    -0.5336
%    -0.5014
%     1.0116
%    -0.5334
%    -0.5009
%    -0.5010
%    -0.5007
%     1.0099
%    -0.5045
%     1.0104
%    -0.5340
%    -0.5026
%     1.0094
%    -0.5345
%     1.0087
%     0.5344
%     0.5343
%     1.0090
%    -0.5341
%    -0.5016
%    -0.5013
%     1.0076
%    -0.5343
%    -0.5008
%    -0.5340
%     1.0066
%    -0.5343
%    -0.5001
%     1.0060
%     1.0057
%     1.0055
%    -0.5343
%    -0.4990
%     1.0052
%    -0.5342
%    -0.4987
%     1.0052
%    -0.5341
%    -0.4984
%     1.0052
%    -0.5340
%    -0.4981
%     1.0051
%    -0.5340
%    -0.4982
%     1.0173
%    -0.5345
%    -0.5014
%     1.0153
%    -0.5354
%    -0.4994
%     1.0143
%    -0.5359
%    -0.4980
%     1.0141
%    -0.5360
%    -0.4981
%     1.0141
%    -0.5361
%    -0.4981
%     1.0120
%    -0.5369
%    -0.4944
%    -0.5368
%    -0.5367
%     1.0072
%    -0.5389
%    -0.4865
%     1.0072
%    -0.5389
%    -0.4865
%     1.0067
%    -0.5379
%    -0.4867
%     1.0063
%    -0.5373
%    -0.4868
%     1.0063
%    -0.5357
%    -0.4867
%     1.0060
%    -0.5348
%    -0.4869
%     1.0062
%    -0.5346
%    -0.4868
%     1.0055
%    -0.5406
%    -0.4846
%     1.0039
%     1.0020
%     1.0007
%     1.0000
%     1.0059
%    -0.5415
%    -0.4832
%     0.4815
%     0.4801
%     0.4793
%     1.0057
%    -0.5427
%    -0.4830
%     1.0067
%    -0.5443
%    -0.4821
%     1.0070
%    -0.5447
%    -0.4819
%     1.0067
%    -0.5448
%    -0.4820
%     1.0089
%    -0.5463
%    -0.4805
%     1.0109
%    -0.5478
%    -0.4792
%     1.0117
%    -0.5488
%    -0.4790
%     1.0128
%    -0.5497
%    -0.4787
%    -0.4771
%    -0.4762
%     1.0051
%    -0.5439
%    -0.4835
%     1.0048
%    -0.5446
%    -0.4837
%     1.0047
%     1.0045
%    -0.5450
%    -0.4838
%    -0.5456
%     1.0043
%    -0.5451
%    -0.4836
%    -0.4828
%     1.0040
%    -0.5452
%    -0.4838
%     1.0033
%     1.0040
%    -0.5453
%    -0.4838
%    -0.5453
%     1.0047
%    -0.5405
%    -0.4842
%     1.0045
%    -0.5405
%    -0.4840
%     1.0047
%    -0.5403
%    -0.4832
%     1.0049
%    -0.5400
%    -0.4828
%     1.0040
%    -0.5405
%    -0.4839
%    -0.4828
%     0.4815
%     0.4801
%     1.0028
%    -0.5410
%    -0.4846
%    -0.5408
%    -0.5404
%     1.0012
%    -0.5416
%    -0.4852
%     0.9970
%     0.9950
%     0.9942
%     0.9943
%     0.9922
%     0.9917
%     1.0116
%    -0.5334
%    -0.5009
%     1.0051
%    -0.5340
%    -0.4982
%     1.0072
%    -0.5389
%    -0.4865
%     1.0012
%    -0.5416
%    -0.4852
%     1.0049
%    -0.5400
%    -0.4828
%    -0.0000
%    -0.9093
%     0.9093
%    -0.0093
%    -0.9074
%     0.9054
%    -0.9072
%     0.9043
%     0.9040
%    -0.9034
%    -0.9030
%    -0.0160
%    -0.9059
%     0.9029
%    -0.0204
%    -0.9048
%     0.9013
%    -0.0209
%    -0.0215
%    -0.0216
%    -0.9045
%    -0.0264
%    -0.9029
%     0.8990
%    -0.0214
%    -0.8980
%    -0.8974
%    -0.8977
%    -0.0323
%    -0.9004
%     0.8937
%    -0.0327
%    -0.0330
%    -0.0330
%    -0.9006
%     0.8930
%    -0.8992
%    -0.0338
%    -0.9012
%     0.8923
%     0.8913
%    -0.0346
%    -0.9018
%     0.8916
%    -0.0350
%     0.8913
%    -0.0353
%     0.8911
%    -0.0350
%    -0.9020
%     0.8913
%    -0.0354
%    -0.9022
%     0.8909
%    -0.0355
%    -0.9023
%     0.8907
%     0.8908
%     0.8906
%    -0.0357
%     0.8983
%    -0.0335
%    -0.8984
%     0.8932
%    -0.0339
%    -0.8976
%    -0.0341
%     0.8969
%     0.8965
%    -0.0340
%    -0.8972
%     0.8927
%     0.8924
%    -0.0345
%    -0.8960
%     0.8923
%    -0.8947
%    -0.0349
%    -0.8953
%     0.8918
%    -0.0350
%    -0.0352
%    -0.0352
%    -0.8942
%     0.8914
%    -0.0354
%    -0.8939
%     0.8913
%    -0.0354
%    -0.8937
%     0.8913
%    -0.0355
%    -0.8938
%     0.8911
%    -0.0357
%    -0.8938
%     0.8911
%    -0.0313
%    -0.9010
%     0.8984
%    -0.0336
%    -0.9000
%     0.8982
%    -0.0349
%    -0.8993
%     0.8981
%    -0.0349
%    -0.8991
%     0.8981
%    -0.0348
%    -0.8989
%     0.8982
%    -0.0388
%    -0.8964
%     0.8976
%    -0.8957
%    -0.8954
%    -0.0477
%    -0.8914
%     0.8961
%    -0.0477
%    -0.8914
%     0.8961
%    -0.0479
%    -0.8909
%     0.8928
%    -0.0479
%    -0.8904
%     0.8910
%    -0.0480
%    -0.8894
%     0.8874
%    -0.0487
%    -0.8899
%     0.8825
%    -0.0491
%    -0.8903
%     0.8805
%    -0.0511
%    -0.8902
%     0.8958
%    -0.0516
%    -0.0521
%    -0.0524
%    -0.0527
%    -0.0524
%    -0.8891
%     0.8966
%    -0.8951
%    -0.8938
%    -0.8930
%    -0.0533
%    -0.8881
%     0.8976
%    -0.0544
%    -0.8883
%     0.8989
%    -0.0548
%    -0.8885
%     0.8992
%    -0.0550
%    -0.8886
%     0.8991
%    -0.0559
%    -0.8893
%     0.9007
%    -0.0574
%    -0.8908
%     0.9020
%    -0.0581
%    -0.8915
%     0.9029
%    -0.0585
%    -0.8921
%     0.9039
%     0.9001
%     0.8992
%    -0.0534
%    -0.8856
%     0.8992
%    -0.0535
%    -0.8843
%     0.8999
%    -0.0540
%    -0.0532
%    -0.8838
%     0.9004
%    -0.8834
%    -0.0532
%    -0.8834
%     0.9007
%     0.9010
%    -0.0533
%    -0.8831
%     0.9007
%    -0.0535
%    -0.0531
%    -0.8827
%     0.9009
%    -0.8824
%    -0.0517
%    -0.8898
%     0.8954
%    -0.0519
%    -0.8895
%     0.8953
%    -0.0517
%    -0.8887
%     0.8954
%    -0.0517
%    -0.8888
%     0.8952
%    -0.0523
%    -0.8896
%     0.8951
%     0.8940
%    -0.8928
%    -0.8915
%    -0.0528
%    -0.8892
%     0.8951
%    -0.8880
%    -0.8865
%    -0.0540
%    -0.8897
%     0.8946
%    -0.0551
%    -0.0557
%    -0.0559
%    -0.0559
%    -0.0565
%    -0.0566
%    -0.0355
%    -0.9023
%     0.8907
%    -0.0357
%    -0.8938
%     0.8911
%    -0.0477
%    -0.8914
%     0.8961
%    -0.0540
%    -0.8897
%     0.8946
%    -0.0517
%    -0.8888
%     0.8952];
%%PF 123 bus
% test=[
% 1.0500
%    -0.5250
%    -0.5250
%     1.0368
%    -0.5291
%    -0.5149
%    -0.5290
%    -0.5137
%    -0.5133
%    -0.5127
%    -0.5122
%     1.0269
%    -0.5324
%    -0.5084
%     1.0205
%    -0.5346
%    -0.5040
%     1.0190
%     1.0170
%     1.0167
%    -0.5345
%     1.0118
%    -0.5374
%    -0.4970
%     1.0174
%    -0.4960
%    -0.4952
%    -0.4956
%     1.0015
%    -0.5397
%    -0.4930
%     1.0002
%     0.9993
%     1.0010
%    -0.5398
%    -0.4921
%    -0.5395
%     1.0005
%    -0.5397
%    -0.4913
%    -0.4902
%     0.9998
%    -0.5398
%    -0.4909
%     0.9995
%    -0.4905
%     0.9991
%    -0.4906
%     0.9994
%    -0.5399
%    -0.4908
%     0.9992
%    -0.5399
%    -0.4905
%     0.9995
%    -0.5397
%    -0.4899
%    -0.4900
%    -0.4897
%     0.9978
%    -0.4963
%     0.9983
%    -0.5400
%    -0.4917
%     0.9973
%    -0.5405
%     0.9965
%    -0.5404
%    -0.5403
%     0.9967
%    -0.5402
%    -0.4905
%    -0.4902
%     0.9951
%    -0.5404
%    -0.4896
%    -0.5401
%     0.9939
%    -0.5404
%    -0.4887
%     0.9934
%     0.9930
%     0.9929
%    -0.5404
%    -0.4875
%     0.9926
%    -0.5403
%    -0.4873
%     0.9926
%    -0.5402
%    -0.4870
%     0.9926
%    -0.5401
%    -0.4867
%     0.9924
%    -0.5401
%    -0.4867
%     1.0055
%    -0.5405
%    -0.4916
%     1.0025
%    -0.5420
%    -0.4888
%     1.0009
%    -0.5428
%    -0.4870
%     1.0007
%    -0.5429
%    -0.4871
%     1.0007
%    -0.5430
%    -0.4871
%     0.9974
%    -0.5445
%    -0.4825
%    -0.5443
%    -0.5442
%     0.9900
%    -0.5478
%    -0.4726
%     0.9900
%    -0.5478
%    -0.4726
%     0.9894
%    -0.5468
%    -0.4727
%     0.9890
%    -0.5461
%    -0.4729
%     0.9890
%    -0.5445
%    -0.4728
%     0.9887
%    -0.5436
%    -0.4731
%     0.9889
%    -0.5433
%    -0.4730
%     0.9871
%    -0.5502
%    -0.4697
%     0.9855
%     0.9836
%     0.9823
%     0.9815
%     0.9870
%    -0.5514
%    -0.4678
%    -0.4661
%    -0.4647
%    -0.4639
%     0.9865
%    -0.5527
%    -0.4674
%     0.9876
%    -0.5543
%    -0.4665
%     0.9879
%    -0.5547
%    -0.4663
%     0.9876
%    -0.5548
%    -0.4664
%     0.9898
%    -0.5563
%    -0.4649
%     0.9918
%    -0.5579
%    -0.4635
%     0.9926
%    -0.5589
%    -0.4633
%     0.9938
%    -0.5598
%    -0.4630
%    -0.4614
%    -0.4605
%     0.9856
%    -0.5542
%    -0.4675
%     0.9850
%    -0.5551
%    -0.4674
%     0.9849
%     0.9845
%    -0.5556
%    -0.4674
%    -0.5561
%     0.9843
%    -0.5556
%    -0.4673
%    -0.4664
%     0.9840
%    -0.5558
%    -0.4674
%     0.9832
%     0.9840
%    -0.5559
%    -0.4675
%    -0.5558
%     0.9860
%    -0.5503
%    -0.4690
%     0.9858
%    -0.5503
%    -0.4688
%     0.9861
%    -0.5500
%    -0.4680
%     0.9863
%    -0.5498
%    -0.4676
%     0.9851
%    -0.5504
%    -0.4686
%    -0.4675
%    -0.4662
%    -0.4648
%     0.9837
%    -0.5510
%    -0.4692
%    -0.5507
%    -0.5503
%     0.9821
%    -0.5515
%    -0.4698
%     0.9778
%     0.9757
%     0.9749
%     0.9750
%     0.9729
%     0.9724
%     0.9995
%    -0.5397
%    -0.4899
%     0.9924
%    -0.5401
%    -0.4867
%     0.9900
%    -0.5478
%    -0.4726
%     0.9821
%    -0.5515
%    -0.4698
%     0.9863
%    -0.5498
%    -0.4676
%          0
%    -0.9093
%     0.9093
%    -0.0118
%    -0.9054
%     0.9043
%    -0.9052
%     0.9032
%     0.9029
%     0.9024
%     0.9019
%    -0.0202
%    -0.9024
%     0.9010
%    -0.0258
%    -0.9003
%     0.8989
%    -0.0262
%    -0.0268
%    -0.0269
%    -0.9000
%    -0.0334
%    -0.8971
%     0.8959
%    -0.0267
%     0.8949
%     0.8942
%     0.8946
%    -0.0410
%    -0.8924
%     0.8895
%    -0.0414
%    -0.0416
%    -0.0419
%    -0.8925
%     0.8887
%    -0.8911
%    -0.0428
%    -0.8930
%     0.8878
%     0.8868
%    -0.0437
%    -0.8934
%     0.8870
%    -0.0442
%     0.8867
%    -0.0445
%     0.8866
%    -0.0442
%    -0.8937
%     0.8867
%    -0.0445
%    -0.8938
%     0.8864
%    -0.0446
%    -0.8939
%     0.8862
%     0.8863
%     0.8860
%    -0.0448
%     0.8952
%    -0.0426
%    -0.8900
%     0.8889
%    -0.0429
%    -0.8892
%    -0.0431
%    -0.8885
%    -0.8881
%    -0.0432
%    -0.8887
%     0.8883
%     0.8880
%    -0.0438
%    -0.8873
%     0.8878
%    -0.8860
%    -0.0443
%    -0.8865
%     0.8874
%    -0.0444
%    -0.0445
%    -0.0446
%    -0.8854
%     0.8869
%    -0.0448
%    -0.8851
%     0.8867
%    -0.0447
%    -0.8848
%     0.8868
%    -0.0449
%    -0.8849
%     0.8866
%    -0.0451
%    -0.8850
%     0.8865
%    -0.0397
%    -0.8942
%     0.8946
%    -0.0427
%    -0.8926
%     0.8941
%    -0.0444
%    -0.8916
%     0.8938
%    -0.0445
%    -0.8914
%     0.8938
%    -0.0444
%    -0.8912
%     0.8939
%    -0.0495
%    -0.8877
%     0.8928
%    -0.8870
%    -0.8867
%    -0.0608
%    -0.8806
%     0.8903
%    -0.0608
%    -0.8806
%     0.8903
%    -0.0610
%    -0.8801
%     0.8868
%    -0.0610
%    -0.8796
%     0.8850
%    -0.0611
%    -0.8787
%     0.8814
%    -0.0618
%    -0.8791
%     0.8764
%    -0.0622
%    -0.8796
%     0.8744
%    -0.0653
%    -0.8784
%     0.8892
%    -0.0657
%    -0.0662
%    -0.0666
%    -0.0668
%    -0.0671
%    -0.8769
%     0.8898
%     0.8882
%     0.8869
%     0.8861
%    -0.0682
%    -0.8757
%     0.8907
%    -0.0695
%    -0.8758
%     0.8920
%    -0.0698
%    -0.8760
%     0.8923
%    -0.0700
%    -0.8761
%     0.8922
%    -0.0710
%    -0.8768
%     0.8938
%    -0.0725
%    -0.8783
%     0.8951
%    -0.0732
%    -0.8790
%     0.8960
%    -0.0737
%    -0.8796
%     0.8970
%     0.8931
%     0.8922
%    -0.0688
%    -0.8727
%     0.8921
%    -0.0692
%    -0.8712
%     0.8927
%    -0.0697
%    -0.0691
%    -0.8706
%     0.8931
%    -0.8701
%    -0.0691
%    -0.8702
%     0.8934
%     0.8937
%    -0.0692
%    -0.8699
%     0.8934
%    -0.0694
%    -0.0690
%    -0.8694
%     0.8936
%    -0.8691
%    -0.0662
%    -0.8778
%     0.8887
%    -0.0664
%    -0.8775
%     0.8886
%    -0.0662
%    -0.8768
%     0.8886
%    -0.0662
%    -0.8768
%     0.8884
%    -0.0669
%    -0.8775
%     0.8883
%     0.8872
%     0.8860
%     0.8846
%    -0.0676
%    -0.8769
%     0.8883
%    -0.8758
%    -0.8742
%    -0.0687
%    -0.8774
%     0.8878
%    -0.0699
%    -0.0704
%    -0.0706
%    -0.0706
%    -0.0712
%    -0.0713
%    -0.0446
%    -0.8939
%     0.8862
%    -0.0451
%    -0.8850
%     0.8865
%    -0.0608
%    -0.8806
%     0.8903
%    -0.0687
%    -0.8774
%     0.8878
%    -0.0662
%    -0.8768
%     0.8884];
%%SDP 37
test=[
    1.0500
   -0.5250
   -0.5250
    1.0428
   -0.5247
   -0.5160
    1.0388
   -0.5242
   -0.5119
    1.0391
   -0.5220
   -0.5107
    1.0390
   -0.5228
   -0.5109
    1.0392
   -0.5227
   -0.5104
    1.0391
   -0.5230
   -0.5109
    1.0391
   -0.5219
   -0.5108
    1.0415
   -0.5184
   -0.5085
    1.0441
   -0.5135
   -0.5079
    1.0443
   -0.5123
   -0.5076
    1.0442
   -0.5128
   -0.5077
    1.0386
   -0.5220
   -0.5109
    1.0360
   -0.5227
   -0.5115
    1.0417
   -0.5179
   -0.5083
    1.0417
   -0.5174
   -0.5082
    1.0328
   -0.5253
   -0.5094
    1.0317
   -0.5255
   -0.5095
    1.0309
   -0.5259
   -0.5099
    1.0305
   -0.5256
   -0.5097
    1.0302
   -0.5260
   -0.5100
    1.0288
   -0.5255
   -0.5080
    1.0271
   -0.5256
   -0.5078
    1.0275
   -0.5247
   -0.5074
    1.0270
   -0.5256
   -0.5077
    1.0242
   -0.5263
   -0.5075
    1.0243
   -0.5262
   -0.5072
    1.0213
   -0.5271
   -0.5076
    1.0179
   -0.5278
   -0.5070
    1.0184
   -0.5266
   -0.5058
    1.0188
   -0.5247
   -0.5053
    1.0185
   -0.5264
   -0.5053
    1.0126
   -0.5295
   -0.5079
    1.0115
   -0.5298
   -0.5077
    1.0124
   -0.5294
   -0.5069
    1.0125
   -0.5292
   -0.5064
    1.0125
   -0.5293
   -0.5065
    0.0000
   -0.9093
    0.9093
   -0.0018
   -0.9049
    0.8998
   -0.0030
   -0.9024
    0.8957
   -0.0025
   -0.9000
    0.8948
   -0.0029
   -0.9013
    0.8944
   -0.0032
   -0.9015
    0.8933
   -0.0028
   -0.9011
    0.8952
   -0.0024
   -0.8998
    0.8955
   -0.0013
   -0.8958
    0.8955
    0.0003
   -0.8898
    0.8983
    0.0008
   -0.8882
    0.8988
    0.0005
   -0.8890
    0.8984
   -0.0023
   -0.8997
    0.8955
   -0.0021
   -0.8998
    0.8955
   -0.0010
   -0.8950
    0.8958
   -0.0009
   -0.8944
    0.8959
   -0.0043
   -0.9020
    0.8925
   -0.0042
   -0.9022
    0.8920
   -0.0042
   -0.9022
    0.8920
   -0.0041
   -0.9019
    0.8917
   -0.0041
   -0.9022
    0.8920
   -0.0053
   -0.9023
    0.8884
   -0.0055
   -0.9020
    0.8874
   -0.0049
   -0.9004
    0.8880
   -0.0055
   -0.9019
    0.8874
   -0.0062
   -0.9025
    0.8855
   -0.0063
   -0.9026
    0.8848
   -0.0066
   -0.9027
    0.8841
   -0.0074
   -0.9032
    0.8815
   -0.0076
   -0.9027
    0.8794
   -0.0069
   -0.9002
    0.8801
   -0.0078
   -0.9030
    0.8785
   -0.0079
   -0.9037
    0.8801
   -0.0083
   -0.9041
    0.8790
   -0.0086
   -0.9045
    0.8779
   -0.0088
   -0.9048
    0.8770
   -0.0088
   -0.9047
    0.8774];
%%SDP 13
% test=[
%     1.0500
%    -0.5250
%    -0.5250
%    -0.5343
%    -0.4642
%    -0.5357
%    -0.4641
%     1.0178
%    -0.5405
%    -0.4640
%     1.0148
%    -0.5403
%    -0.4631
%     0.9918
%    -0.5375
%    -0.4495
%     1.0123
%    -0.5426
%    -0.4494
%    -0.4040
%     0.9928
%    -0.4073
%     0.9948
%    -0.5497
%    -0.4098
%     0.9884
%    -0.5533
%    -0.4091
%     0.9872
%     0.9944
%    -0.5499
%    -0.4100
%    -0.0000
%    -0.9093
%     0.9093
%    -0.8544
%     0.8950
%    -0.8591
%     0.8937
%    -0.0352
%    -0.8729
%     0.8898
%    -0.0358
%    -0.8706
%     0.8880
%    -0.0444
%    -0.8504
%     0.8764
%    -0.0471
%    -0.8736
%     0.8826
%     0.8598
%    -0.0833
%     0.8606
%    -0.0831
%    -0.8774
%     0.8617
%    -0.0867
%    -0.8776
%     0.8600
%    -0.0815
%    -0.0828
%    -0.8771
%     0.8618];

%%test 0
% test=[1.0500
%    -0.5250
%    -0.5250
%    -0.5330
%    -0.4591
%    -0.5344
%    -0.4590
%     1.0189
%    -0.5392
%    -0.4589
%     1.0158
%    -0.5388
%    -0.4576
%     0.9913
%    -0.5361
%    -0.4412
%     1.0137
%    -0.5409
%    -0.4434
%    -0.3951
%     0.9949
%    -0.3985
%     0.9969
%    -0.5472
%    -0.4011
%     0.9903
%    -0.5509
%    -0.4002
%     0.9893
%     0.9969
%    -0.5472
%    -0.4011
%     0.0000
%    -0.9093
%     0.9093
%    -0.8583
%     0.8907
%    -0.8630
%     0.8894
%    -0.0405
%    -0.8768
%     0.8855
%    -0.0415
%    -0.8747
%     0.8832
%    -0.0522
%    -0.8546
%     0.8700
%    -0.0534
%    -0.8782
%     0.8774
%     0.8523
%    -0.0923
%     0.8530
%    -0.0921
%    -0.8842
%     0.8541
%    -0.0959
%    -0.8846
%     0.8522
%    -0.0905
%    -0.0921
%    -0.8842
%     0.8541];

% test=[1.0000
%    -0.5000
%    -0.5000
%     0.9872
%    -0.5029
%    -0.4948
%     0.9410
%    -0.5186
%    -0.4509
%     0.7966
%    -0.5508
%    -0.3923
%     0.0000
%    -0.8660
%     0.8660
%    -0.0055
%    -0.8588
%     0.8629
%    -0.0542
%    -0.8094
%     0.8554
%    -0.1159
%    -0.7280
%     0.8201];
% X_v=[
%     1.0000
%    -0.5000
%    -0.5000
%     0.9872
%    -0.5029
%    -0.4948
%     0.9410
%    -0.5186
%    -0.4509
%     0.7966
%    -0.5508
%    -0.3923
%          0
%    -0.8660
%     0.8660
%    -0.0055
%    -0.8588
%     0.8629
%    -0.0542
%    -0.8094
%     0.8554
%    -0.1159
%    -0.7280
%     0.8201];
%%
X_v(1:3,1)=[1;-0.5;-0.5]*1.05;
X_v(N_of_phases+1:N_of_phases+3,1)=[0;-sqrt(3)/2;sqrt(3)/2]*1.05;

Cg=0;
F_sub=[];
basis_temp=eye(N_of_phases);
count_n_phase_temp=0;
count_g_phase_temp=0;
for i=1:N_node
    for j=1:3
        if node(i).phase(j)==1
            count_n_phase_temp=count_n_phase_temp+1;
            
            y_k_p=basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)*Y;

            Y_k_p_P=0.5*[real(y_k_p+transpose(y_k_p)),imag(transpose(y_k_p)-y_k_p);...
                            imag(y_k_p-transpose(y_k_p)),real(y_k_p+transpose(y_k_p))];
            Y_k_p_Q=-0.5*[imag(y_k_p+transpose(y_k_p)),real(y_k_p-transpose(y_k_p));...
                            real(transpose(y_k_p)-y_k_p),imag(y_k_p+transpose(y_k_p))]; 
            M_k_p=[basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:),zeros(N_of_phases,N_of_phases);...
                       zeros(N_of_phases,N_of_phases),basis_temp(:,count_n_phase_temp)*basis_temp(count_n_phase_temp,:)]; 
                   
                 if(node(i).g==1) %&& (node(i).P(j) > 0 || i==1)
                    count_g_phase_temp=count_g_phase_temp+1;
                 
                     if    i==1
                           P_g_p_min=P_g_p_min1;
                           P_g_p_max=P_g_p_max1;
                           Q_g_p_min=Q_g_p_min1;
                           Q_g_p_max=Q_g_p_max1;
                           c_k1_p=c_k1_p1;
                     else
                           P_g_p_min=P_g_p_min2;
                           P_g_p_max=P_g_p_max2;
                           Q_g_p_min=Q_g_p_min2;
                           Q_g_p_max=Q_g_p_max2; 
                           c_k1_p=c_k1_p2;
                     end
                 
                

                    F_sub=[F_sub,P_g_p_min-node(i).P(j)-transpose(X_v)*Y_k_p_P*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_P*X_v-P_g_p_max+node(i).P(j)<=0];
                    F_sub=[F_sub,Q_g_p_min-node(i).Q(j)-transpose(X_v)*Y_k_p_Q*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*Y_k_p_Q*X_v-Q_g_p_max+node(i).Q(j)<=0];
                    F_sub=[F_sub,V_k_p_min^2-transpose(X_v)*M_k_p*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*M_k_p*X_v-V_k_p_max^2<=0];
                    Cg=Cg+(node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v)*c_k1_p(j);
                else
                    
                      F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v==0];
                      F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v==0];
%                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v<=1e-3];
%                     F_sub=[F_sub,node(i).P(j)+transpose(X_v)*Y_k_p_P*X_v>=-1e-3];
%                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v<=1e-3];
%                     F_sub=[F_sub,node(i).Q(j)+transpose(X_v)*Y_k_p_Q*X_v>=-1e-3];
                    F_sub=[F_sub,V_k_p_min^2-transpose(X_v)*M_k_p*X_v<=0];
                    F_sub=[F_sub,transpose(X_v)*M_k_p*X_v-V_k_p_max^2<=0];
                    
                end
            
        end
    end
end


%ops=sdpsettings('solver','ipopt'); 
for ns=[4:N_of_phases,N_of_phases+4:N_of_phases*2]
assign(X_v(ns),test(ns));
end

ops = sdpsettings('solver', 'ipopt','usex0', 1);
%ops = sdpsettings('solver', 'fmincon', 'fmincon.Algorithm', 'sqp', 'usex0', 1);
%ops=sdpsettings(ops,'fmincon.Algorithm','sqp');

diagn =optimize(F_sub,Cg,ops);
%toc

X_v_val = value(X_v);
disp('voltage results:')
disp(X_v_val(1:N_of_phases)+1i*X_v_val(N_of_phases+1:2*N_of_phases))
   

 


