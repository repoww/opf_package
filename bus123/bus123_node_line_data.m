%% node data %%
%%%%%%%%%%%Slack Bus data%%%%%%%%%%%%%%%%%
S_base = 5;%5MVA 
%% node 1 %%
node(1).phase=[1,1,1];
node(1).np=3;
node(1).g=1;
node(1).P=[0,0,0]/1000/S_base;
node(1).Q=[0,0,0]/1000/S_base;
%% node 2 %%
node(2).phase=[1,1,1];
node(2).np=3;
node(2).g=0;
node(2).P=[40,0,0]/1000/S_base;
node(2).Q=[20,0,0]/1000/S_base;
%% node 3 %%
node(3).phase=[0,1,0];
node(3).np=1;
node(3).g=0;
node(3).P=[0,20,0]/1000/S_base;
node(3).Q=[0,10,0]/1000/S_base;
%% node 4 %%
node(4).phase=[0,0,1];
node(4).np=1;
node(4).g=0;
node(4).P=[0,0,0]/1000/S_base;
node(4).Q=[0,0,0]/1000/S_base;
%% node 5 %%
node(5).phase=[0,0,1];
node(5).np=1;
node(5).g=0;
node(5).P=[0,0,40]/1000/S_base;
node(5).Q=[0,0,20]/1000/S_base;
%% node 6 %%
node(6).phase=[0,0,1];
node(6).np=1;
node(6).g=0;
node(6).P=[0,0,20]/1000/S_base;
node(6).Q=[0,0,10]/1000/S_base;
%% node 7 %%
node(7).phase=[0,0,1];
node(7).np=1;
node(7).g=0;
node(7).P=[0,0,40]/1000/S_base;
node(7).Q=[0,0,20]/1000/S_base;
%% node 8 %% (1)
node(8).phase=[1,1,1];
node(8).np=3;
node(8).g=1;
node(8).P=[20,0,0]/1000/S_base;
node(8).Q=[10,0,0]/1000/S_base;
%% node 9 %%
node(9).phase=[1,1,1];
node(9).np=3;
node(9).g=0;
node(9).P=[0,0,0]/1000/S_base;
node(9).Q=[0,0,0]/1000/S_base;
%% node 10 %%
node(10).phase=[1,0,0];
node(10).np=1;
node(10).g=0;
node(10).P=[40,0,0]/1000/S_base;
node(10).Q=[20,0,0]/1000/S_base;
%% node 11 %%
node(11).phase=[1,0,0];
node(11).np=1;
node(11).g=0;
node(11).P=[20,0,0]/1000/S_base;
node(11).Q=[10,0,0]/1000/S_base;
%% node 12 %%
node(12).phase=[1,0,0];
node(12).np=1;
node(12).g=0;
node(12).P=[40,0,0]/1000/S_base;
node(12).Q=[20,0,0]/1000/S_base;
%% node 13 %%
node(13).phase=[0,1,0];
node(13).np=1;
node(13).g=0;
node(13).P=[0,20,0]/1000/S_base;
node(13).Q=[0,10,0]/1000/S_base;
%% node 14 %%
node(14).phase=[1,1,1];
node(14).np=3;
node(14).g=0;
node(14).P=[0,0,0]/1000/S_base;
node(14).Q=[0,0,0]/1000/S_base;
%% node 15 %%
node(15).phase=[1,0,0];
node(15).np=1;
node(15).g=0;
node(15).P=[0,0,0]/1000/S_base;
node(15).Q=[0,0,0]/1000/S_base;
%% node 16 %%
node(16).phase=[0,0,1];
node(16).np=1;
node(16).g=0;
node(16).P=[0,0,0]/1000/S_base;
node(16).Q=[0,0,0]/1000/S_base;
%% node 17 %%
node(17).phase=[0,0,1];
node(17).np=1;
node(17).g=0;
node(17).P=[0,0,40]/1000/S_base;
node(17).Q=[0,0,20]/1000/S_base;
%% node 18 %%
node(18).phase=[0,0,1];
node(18).np=1;
node(18).g=0;
node(18).P=[0,0,20]/1000/S_base;
node(18).Q=[0,0,10]/1000/S_base;
%% node 19 %% (2)
node(19).phase=[1,1,1];
node(19).np=3;
node(19).g=1;
node(19).P=[0,0,0]/1000/S_base;
node(19).Q=[0,0,0]/1000/S_base;
%% node 20 %%
node(20).phase=[1,0,0];
node(20).np=1;
node(20).g=0;
node(20).P=[40,0,0]/1000/S_base;
node(20).Q=[20,0,0]/1000/S_base;
%% node 21 %%
node(21).phase=[1,0,0];
node(21).np=1;
node(21).g=0;
node(21).P=[40,0,0]/1000/S_base;
node(21).Q=[20,0,0]/1000/S_base;
%% node 22 %%
node(22).phase=[1,1,1];
node(22).np=3;
node(22).g=0;
node(22).P=[0,0,0]/1000/S_base;
node(22).Q=[0,0,0]/1000/S_base;
%% node 23 %%
node(23).phase=[0,1,0];
node(23).np=1;
node(23).g=0;
node(23).P=[0,40,0]/1000/S_base;
node(23).Q=[0,20,0]/1000/S_base;
%% node 24 %%
node(24).phase=[1,1,1];
node(24).np=3;
node(24).g=0;
node(24).P=[0,0,0]/1000/S_base;
node(24).Q=[0,0,0]/1000/S_base;
%% node 25 %%
node(25).phase=[0,0,1];
node(25).np=1;
node(25).g=0;
node(25).P=[0,0,40]/1000/S_base;
node(25).Q=[0,0,20]/1000/S_base;
%% node 26 %% (3)
node(26).phase=[1,1,1];
node(26).np=3;
node(26).g=1;
node(26).P=[0,0,0]/1000/S_base;
node(26).Q=[0,0,0]/1000/S_base;
%% node 27 %%
node(27).phase=[1,0,1];
node(27).np=2;
node(27).g=0;
node(27).P=[0,0,0]/1000/S_base;
node(27).Q=[0,0,0]/1000/S_base;
%% node 28 %%
node(28).phase=[1,0,1];
node(28).np=2;
node(28).g=0;
node(28).P=[0,0,0]/1000/S_base;
node(28).Q=[0,0,0]/1000/S_base;
%% node 29 %%
node(29).phase=[1,1,1];
node(29).np=3;
node(29).g=0;
node(29).P=[40,0,0]/1000/S_base;
node(29).Q=[20,0,0]/1000/S_base;
%% node 30 %%
node(30).phase=[1,1,1];
node(30).np=3;
node(30).g=0;
node(30).P=[40,0,0]/1000/S_base;
node(30).Q=[20,0,0]/1000/S_base;
%% node 31 %%
node(31).phase=[1,1,1];
node(31).np=3;
node(31).g=0;
node(31).P=[0,0,40]/1000/S_base;
node(31).Q=[0,0,20]/1000/S_base;
%% node 32 %%
node(32).phase=[0,0,1];
node(32).np=1;
node(32).g=0;
node(32).P=[0,0,20]/1000/S_base;
node(32).Q=[0,0,10]/1000/S_base;
%% node 33 %%
node(33).phase=[0,0,1];
node(33).np=1;
node(33).g=0;
node(33).P=[0,0,20]/1000/S_base;
node(33).Q=[0,0,10]/1000/S_base;
%% node 34 %%
node(34).phase=[1,0,0];
node(34).np=1;
node(34).g=0;
node(34).P=[40,0,0]/1000/S_base;
node(34).Q=[20,0,0]/1000/S_base;
%% node 35 %%
node(35).phase=[0,0,1];
node(35).np=1;
node(35).g=0;
node(35).P=[0,0,40]/1000/S_base;
node(35).Q=[0,0,20]/1000/S_base;
%% node 36 %% (4)
node(36).phase=[1,1,1];
node(36).np=3;
node(36).g=1;
node(36).P=[40,0,0]/1000/S_base;
node(36).Q=[20,0,0]/1000/S_base;
%% node 37 %%
node(37).phase=[1,1,0];
node(37).np=2;
node(37).g=0;
node(37).P=[0,0,0]/1000/S_base;
node(37).Q=[0,0,0]/1000/S_base;
%% node 38 %%
node(38).phase=[1,0,0];
node(38).np=1;
node(38).g=0;
node(38).P=[40,0,0]/1000/S_base;
node(38).Q=[20,0,0]/1000/S_base;
%% node 39 %%
node(39).phase=[0,1,0];
node(39).np=1;
node(39).g=0;
node(39).P=[0,20,0]/1000/S_base;
node(39).Q=[0,10,0]/1000/S_base;
%% node 40 %%
node(40).phase=[0,1,0];
node(40).np=1;
node(40).g=0;
node(40).P=[0,20,0]/1000/S_base;
node(40).Q=[0,10,0]/1000/S_base;
%% node 41 %%
node(41).phase=[1,1,1];
node(41).np=3;
node(41).g=0;
node(41).P=[0,0,0]/1000/S_base;
node(41).Q=[0,0,0]/1000/S_base;
%% node 42 %%
node(42).phase=[0,0,1];
node(42).np=1;
node(42).g=0;
node(42).P=[0,0,20]/1000/S_base;
node(42).Q=[0,0,10]/1000/S_base;
%% node 43 %%
node(43).phase=[1,1,1];
node(43).np=3;
node(43).g=0;
node(43).P=[20,0,0]/1000/S_base;
node(43).Q=[10,0,0]/1000/S_base;
%% node 44 %%
node(44).phase=[0,1,0];
node(44).np=1;
node(44).g=0;
node(44).P=[0,40,0]/1000/S_base;
node(44).Q=[0,20,0]/1000/S_base;
%% node 45 %% (5)
node(45).phase=[1,1,1];
node(45).np=3;
node(45).g=1;
node(45).P=[0,0,0]/1000/S_base;
node(45).Q=[0,0,0]/1000/S_base;
%% node 46 %%
node(46).phase=[1,0,0];
node(46).np=1;
node(46).g=0;
node(46).P=[20,0,0]/1000/S_base;
node(46).Q=[10,0,0]/1000/S_base;
%% node 47 %%
node(47).phase=[1,0,0];
node(47).np=1;
node(47).g=0;
node(47).P=[20,0,0]/1000/S_base;
node(47).Q=[10,0,0]/1000/S_base;
%% node 48 %%
node(48).phase=[1,1,1];
node(48).np=3;
node(48).g=0;
node(48).P=[35,35,35]/1000/S_base;
node(48).Q=[25,25,25]/1000/S_base;
%% node 49 %%
node(49).phase=[1,1,1];
node(49).np=3;
node(49).g=0;
node(49).P=[70,70,70]/1000/S_base;
node(49).Q=[50,50,50]/1000/S_base;
%% node 50 %%
node(50).phase=[1,1,1];
node(50).np=3;
node(50).g=0;
node(50).P=[35,70,35]/1000/S_base;
node(50).Q=[25,50,20]/1000/S_base;
%% node 51 %%
node(51).phase=[1,1,1];
node(51).np=3;
node(51).g=0;
node(51).P=[0,0,40]/1000/S_base;
node(51).Q=[0,0,20]/1000/S_base;
%% node 52 %%
node(52).phase=[1,1,1];
node(52).np=3;
node(52).g=0;
node(52).P=[20,0,0]/1000/S_base;
node(52).Q=[10,0,0]/1000/S_base;
%% node 53 %%
node(53).phase=[1,1,1];
node(53).np=3;
node(53).g=0;
node(53).P=[40,0,0]/1000/S_base;
node(53).Q=[20,0,0]/1000/S_base;
%% node 54 %% 
node(54).phase=[1,1,1];
node(54).np=3;
node(54).g=0;
node(54).P=[40,0,0]/1000/S_base;
node(54).Q=[20,0,0]/1000/S_base;
%% node 55 %% (6)
node(55).phase=[1,1,1];
node(55).np=3;
node(55).g=1;
node(55).P=[0,0,0]/1000/S_base;
node(55).Q=[0,0,0]/1000/S_base;
%% node 56 %%
node(56).phase=[1,1,1];
node(56).np=3;
node(56).g=0;
node(56).P=[20,0,0]/1000/S_base;
node(56).Q=[10,0,0]/1000/S_base;
%% node 57 %%
node(57).phase=[1,1,1];
node(57).np=3;
node(57).g=0;
node(57).P=[0,20,0]/1000/S_base;
node(57).Q=[0,10,0]/1000/S_base;
%% node 58 %%
node(58).phase=[1,1,1];
node(58).np=3;
node(58).g=0;
node(58).P=[0,0,0]/1000/S_base;
node(58).Q=[0,0,0]/1000/S_base;
%% node 59 %%
node(59).phase=[0,1,0];
node(59).np=1;
node(59).g=0;
node(59).P=[0,20,0]/1000/S_base;
node(59).Q=[0,10,0]/1000/S_base;
%% node 60 %%
node(60).phase=[0,1,0];
node(60).np=1;
node(60).g=0;
node(60).P=[0,20,0]/1000/S_base;
node(60).Q=[0,10,0]/1000/S_base;
%% node 61 %% (7)
node(61).phase=[1,1,1];
node(61).np=3;
node(61).g=0;
node(61).P=[20,0,0]/1000/S_base;
node(61).Q=[10,0,0]/1000/S_base;
%% node 62 %%
node(62).phase=[1,1,1];
node(62).np=3;
node(62).g=0;
node(62).P=[0,0,0]/1000/S_base;
node(62).Q=[0,0,0]/1000/S_base;
%% node 63 %%
node(63).phase=[1,1,1];
node(63).np=3;
node(63).g=0;
node(63).P=[0,0,40]/1000/S_base;
node(63).Q=[0,0,20]/1000/S_base;
%% node 64 %%
node(64).phase=[1,1,1];
node(64).np=3;
node(64).g=0;
node(64).P=[40,0,0]/1000/S_base;
node(64).Q=[20,0,0]/1000/S_base;
%% node 65 %%
node(65).phase=[1,1,1];
node(65).np=3;
node(65).g=0;
node(65).P=[0,75,0]/1000/S_base;
node(65).Q=[0,35,0]/1000/S_base;
%% node 66 %%
node(66).phase=[1,1,1];
node(66).np=3;
node(66).g=0;
node(66).P=[35,35,70]/1000/S_base;
node(66).Q=[25,25,50]/1000/S_base;
%% node 67 %%
node(67).phase=[1,1,1];
node(67).np=3;
node(67).g=0;
node(67).P=[0,0,75]/1000/S_base;
node(67).Q=[0,0,35]/1000/S_base;
%% node 68 %%
node(68).phase=[1,1,1];
node(68).np=3;
node(68).g=0;
node(68).P=[0,0,0]/1000/S_base;
node(68).Q=[0,0,0]/1000/S_base;
%% node 69 %%
node(69).phase=[1,0,0];
node(69).np=1;
node(69).g=0;
node(69).P=[20,0,0]/1000/S_base;
node(69).Q=[10,0,0]/1000/S_base;
%% node 70 %%
node(70).phase=[1,0,0];
node(70).np=1;
node(70).g=0;
node(70).P=[40,0,0]/1000/S_base;
node(70).Q=[20,0,0]/1000/S_base;
%% node 71 %%
node(71).phase=[1,0,0];
node(71).np=1;
node(71).g=0;
node(71).P=[20,0,0]/1000/S_base;
node(71).Q=[10,0,0]/1000/S_base;
%% node 72 %%
node(72).phase=[1,0,0];
node(72).np=1;
node(72).g=0;
node(72).P=[40,0,0]/1000/S_base;
node(72).Q=[20,0,0]/1000/S_base;
%% node 73 %% (8)
node(73).phase=[1,1,1];
node(73).np=3;
node(73).g=1;
node(73).P=[0,0,0]/1000/S_base;
node(73).Q=[0,0,0]/1000/S_base;
%% node 74 %%
node(74).phase=[0,0,1];
node(74).np=1;
node(74).g=0;
node(74).P=[0,0,40]/1000/S_base;
node(74).Q=[0,0,20]/1000/S_base;
%% node 75 %%
node(75).phase=[0,0,1];
node(75).np=1;
node(75).g=0;
node(75).P=[0,0,40]/1000/S_base;
node(75).Q=[0,0,20]/1000/S_base;
%% node 76 %%
node(76).phase=[0,0,1];
node(76).np=1;
node(76).g=0;
node(76).P=[0,0,40]/1000/S_base;
node(76).Q=[0,0,20]/1000/S_base;
%% node 77 %%
node(77).phase=[1,1,1];
node(77).np=3;
node(77).g=1;
node(77).P=[105,70,70]/1000/S_base;
node(77).Q=[80,50,50]/1000/S_base;
%% node 78 %%
node(78).phase=[1,1,1];
node(78).np=3;
node(78).g=0;
node(78).P=[0,40,0]/1000/S_base;
node(78).Q=[0,20,0]/1000/S_base;
%% node 79 %% (9)
node(79).phase=[1,1,1];
node(79).np=3;
node(79).g=0;
node(79).P=[0,0,0]/1000/S_base;
node(79).Q=[0,0,0]/1000/S_base;
%% node 80 %%
node(80).phase=[1,1,1];
node(80).np=3;
node(80).g=0;
node(80).P=[40,0,0]/1000/S_base;
node(80).Q=[20,0,0]/1000/S_base;
%% node 81 %%
node(81).phase=[1,1,1];
node(81).np=3;
node(81).g=0;
node(81).P=[0,40,0]/1000/S_base;
node(81).Q=[0,20,0]/1000/S_base;
%% node 82 %%
node(82).phase=[1,1,1];
node(82).np=3;
node(82).g=0;
node(82).P=[0,0,0]/1000/S_base;
node(82).Q=[0,0,0]/1000/S_base;
%% node 83 %%
node(83).phase=[1,1,1];
node(83).np=3;
node(83).g=0;
node(83).P=[40,0,0]/1000/S_base;
node(83).Q=[20,0,0]/1000/S_base;
%% node 84 %%
node(84).phase=[1,1,1];
node(84).np=3;
node(84).g=0;
node(84).P=[0,0,20]/1000/S_base;
node(84).Q=[0-200,0-200,10-200]/1000/S_base;
%% node 85 %%
node(85).phase=[0,0,1];
node(85).np=1;
node(85).g=0;
node(85).P=[0,0,20]/1000/S_base;
node(85).Q=[0,0,10]/1000/S_base;
%% node 86 %%
node(86).phase=[0,0,1];
node(86).np=1;
node(86).g=0;
node(86).P=[0,0,40]/1000/S_base;
node(86).Q=[0,0,20]/1000/S_base;
%% node 87 %%
node(87).phase=[1,1,1];
node(87).np=3;
node(87).g=0;
node(87).P=[0,20,0]/1000/S_base;
node(87).Q=[0,10,0]/1000/S_base;
%% node 88 %%
node(88).phase=[1,1,1];
node(88).np=3;
node(88).g=0;
node(88).P=[0,40,0]/1000/S_base;
node(88).Q=[0,20,0]/1000/S_base;
%% node 89 %%
node(89).phase=[1,0,0];
node(89).np=1;
node(89).g=0;
node(89).P=[40,0,0]/1000/S_base;
node(89).Q=[20-50,0,0]/1000/S_base;
%% node 90 %% (10)
node(90).phase=[1,1,1];
node(90).np=3;
node(90).g=1;
node(90).P=[0,0,0]/1000/S_base;
node(90).Q=[0,0,0]/1000/S_base;
%% node 91 %%
node(91).phase=[0,1,0];
node(91).np=1;
node(91).g=0;
node(91).P=[0,40,0]/1000/S_base;
node(91).Q=[0,20-50,0]/1000/S_base;
%% node 92 %%
node(92).phase=[1,1,1];
node(92).np=3;
node(92).g=0;
node(92).P=[0,0,0]/1000/S_base;
node(92).Q=[0,0,0]/1000/S_base;
%% node 93 %%
node(93).phase=[0,0,1];
node(93).np=1;
node(93).g=0;
node(93).P=[0,0,40]/1000/S_base;
node(93).Q=[0,0,20-50]/1000/S_base;
%% node 94 %%
node(94).phase=[1,1,1];
node(94).np=3;
node(94).g=0;
node(94).P=[0,0,0]/1000/S_base;
node(94).Q=[0,0,0]/1000/S_base;
%% node 95 %%
node(95).phase=[1,0,0];
node(95).np=1;
node(95).g=0;
node(95).P=[40,0,0]/1000/S_base;
node(95).Q=[20,0,0]/1000/S_base;
%% node 96 %%
node(96).phase=[1,1,1];
node(96).np=3;
node(96).g=0;
node(96).P=[0,20,0]/1000/S_base;
node(96).Q=[0,10,0]/1000/S_base;
%% node 97 %%
node(97).phase=[0,1,0];
node(97).np=1;
node(97).g=0;
node(97).P=[0,20,0]/1000/S_base;
node(97).Q=[0,10,0]/1000/S_base;
%% node 98 %% (11)
node(98).phase=[1,1,1];
node(98).np=3;
node(98).g=1;
node(98).P=[0,0,0]/1000/S_base;
node(98).Q=[0,0,0]/1000/S_base;
%% node 99 %%
node(99).phase=[1,1,1];
node(99).np=3;
node(99).g=0;
node(99).P=[40,0,0]/1000/S_base;
node(99).Q=[20,0,0]/1000/S_base;
%% node 100 %%
node(100).phase=[1,1,1];
node(100).np=3;
node(100).g=0;
node(100).P=[0,40,0]/1000/S_base;
node(100).Q=[0,20,0]/1000/S_base;
%% node 101 %%
node(101).phase=[1,1,1];
node(101).np=3;
node(101).g=0;
node(101).P=[0,0,40]/1000/S_base;
node(101).Q=[0,0,20]/1000/S_base;
%% node 102 %%
node(102).phase=[1,1,1];
node(102).np=3;
node(102).g=0;
node(102).P=[0,0,0]/1000/S_base;
node(102).Q=[0,0,0]/1000/S_base;
%% node 103 %%
node(103).phase=[0,0,1];
node(103).np=1;
node(103).g=0;
node(103).P=[0,0,20]/1000/S_base;
node(103).Q=[0,0,10]/1000/S_base;
%% node 104 %%
node(104).phase=[0,0,1];
node(104).np=1;
node(104).g=0;
node(104).P=[0,0,40]/1000/S_base;
node(104).Q=[0,0,20]/1000/S_base;
%% node 105 %%
node(105).phase=[0,0,1];
node(105).np=1;
node(105).g=0;
node(105).P=[0,0,40]/1000/S_base;
node(105).Q=[0,0,20]/1000/S_base;
%% node 106 %% (12)
node(106).phase=[1,1,1];
node(106).np=3;
node(106).g=1;
node(106).P=[0,0,0]/1000/S_base;
node(106).Q=[0,0,0]/1000/S_base;
%% node 107 %%
node(107).phase=[0,1,0];
node(107).np=1;
node(107).g=0;
node(107).P=[0,40,0]/1000/S_base;
node(107).Q=[0,20,0]/1000/S_base;
%% node 108 %%
node(108).phase=[0,1,0];
node(108).np=1;
node(108).g=0;
node(108).P=[0,40,0]/1000/S_base;
node(108).Q=[0,20,0]/1000/S_base;
%% node 109 %%
node(109).phase=[1,1,1];
node(109).np=3;
node(109).g=0;
node(109).P=[0,0,0]/1000/S_base;
node(109).Q=[0,0,0]/1000/S_base;
%% node 110 %%
node(110).phase=[1,0,0];
node(110).np=1;
node(110).g=0;
node(110).P=[40,0,0]/1000/S_base;
node(110).Q=[20,0,0]/1000/S_base;
%% node 111 %%
node(111).phase=[1,0,0];
node(111).np=1;
node(111).g=0;
node(111).P=[0,0,0]/1000/S_base;
node(111).Q=[0,0,0]/1000/S_base;
%% node 112 %%
node(112).phase=[1,0,0];
node(112).np=1;
node(112).g=0;
node(112).P=[20,0,0]/1000/S_base;
node(112).Q=[10,0,0]/1000/S_base;
%% node 113 %%
node(113).phase=[1,0,0];
node(113).np=1;
node(113).g=0;
node(113).P=[20,0,0]/1000/S_base;
node(113).Q=[10,0,0]/1000/S_base;
%% node 114 %%
node(114).phase=[1,0,0];
node(114).np=1;
node(114).g=0;
node(114).P=[40,0,0]/1000/S_base;
node(114).Q=[20,0,0]/1000/S_base;
%% node 115 %%
node(115).phase=[1,0,0];
node(115).np=1;
node(115).g=0;
node(115).P=[20,0,0]/1000/S_base;
node(115).Q=[10,0,0]/1000/S_base;
%% node 116 (250) %%
node(116).phase=[1,1,1];
node(116).np=3;
node(116).g=0;
node(116).P=[0,0,0]/1000/S_base;
node(116).Q=[0,0,0]/1000/S_base;
%% node 117 (151)%%
node(117).phase=[1,1,1];
node(117).np=3;
node(117).g=0;
node(117).P=[0,0,0]/1000/S_base;
node(117).Q=[0,0,0]/1000/S_base;
%% node 118 (610)%%
node(118).phase=[1,1,1];
node(118).np=3;
node(118).g=0;
node(118).P=[0,0,0]/1000/S_base;
node(118).Q=[0,0,0]/1000/S_base;
%% node 119 (300)%%
node(119).phase=[1,1,1];
node(119).np=3;
node(119).g=0;
node(119).P=[0,0,0]/1000/S_base;
node(119).Q=[0,0,0]/1000/S_base;
%% node 120 (450) %%
node(120).phase=[1,1,1];
node(120).np=3;
node(120).g=0;
node(120).P=[0,0,0]/1000/S_base;
node(120).Q=[0,0,0]/1000/S_base;
%%
%%%149 150 --> 1%%%
%%%node149%%
% node(149).phase=[1,1,1];
% node(149).np=3;
% node(149).g=0;
% node(149).P=[0,0,0];
% node(149).Q=[0,0,0];
% %%node150%%
% node(150).phase=[1,1,1];
% node(150).np=3;
% node(150).g=0;
% node(150).P=[0,0,0];
% node(150).Q=[0,0,0];

%%% 151 >> 117%%%%
% %%node151%%
% node(151).phase=[1,1,1];
% node(151).np=3;
% node(151).g=0;
% node(151).P=[0,0,0];
% node(151).Q=[0,0,0];
%%% 152 --> 13%%%%
% %%node152%%
% node(152).phase=[1,1,1];
% node(152).np=3;
% node(152).g=0;
% node(152).P=[0,0,0];
% node(152).Q=[0,0,0];
%%% 160 --> 60 %%%%
% %%node160%%
% node(160).phase=[1,1,1];
% node(160).np=3;
% node(160).g=0;
% node(160).P=[0,0,0];
% node(160).Q=[0,0,0];
%%% 197 --> 97 %%%%
% %%node197%%
% node(197).phase=[1,1,1];
% node(197).np=3;
% node(197).g=0;
% node(197).P=[0,0,0];
% node(197).Q=[0,0,0];
%%% 250 >> 116 %%%%
% %%node250%%
% node(250).phase=[1,1,1];
% node(250).np=3;
% node(250).g=0;
% node(250).P=[0,0,0];
% node(250).Q=[0,0,0];
%%% 300 >> 119 %%%%
% %%node300%%
% node(300).phase=[1,1,1];
% node(300).np=3;
% node(300).g=0;
% node(300).P=[0,0,0];
% node(300).Q=[0,0,0];
%%% 450 >> 120 %%%%
% %%node450%%
% node(450).phase=[1,1,1];
% node(450).np=3;
% node(450).g=0;
% node(450).P=[0,0,0];
% node(450).Q=[0,0,0];
%%% 610 >> 118 %%%%
% %%node610%%
% node(610).phase=[1,1,1];
% node(610).np=3;
% node(610).g=0;
% node(610).P=[0,0,0];
% node(610).Q=[0,0,0];
%%
%%%%%%%%%%%
N_node=size(node,2);
%% line data %%
%% config 1 %%
config{1}.Z=[0.4576+1.0780i,0.1560+0.5017i,0.1535+0.3849i;...
             0.1560+0.5017i,0.4666+1.0482i,0.1580+0.4236i;...
             0.1535+0.3849i,0.1580+0.4236i,0.4615+1.0651i];
config{1}.B=[5.6765,-1.8319,-0.6982;...
             -1.8319,5.9809,-1.1645;...
             -0.6982,-1.1645,5.3971]/(10^6);         
%% config 2 %%
config{2}.Z=[0.4666+1.0482i,0.1580+0.4236i,0.1560+0.5017i;...
             0.1580+0.4236i,0.4615+1.0651i,0.1535+0.3849i;...
             0.1560+0.5017i,0.1535+0.3849i,0.4576+1.0780i];
config{2}.B=[5.9809,-1.1645,-1.8319;...
             -1.1645,5.3971,-0.6982;...
             -1.8319,-0.6982,5.6765]/(10^6); 
%% config 3 %%   
config{3}.Z=[0.4615+1.0651i,0.1535+0.3849i,0.1580+0.4236i;...
             0.1535+0.3849i,0.4576+1.0780i,0.1560+0.5017i;...
             0.1580+0.4236i,0.1560+0.5017i,0.4666+1.0482i];
config{3}.B=[5.3971,-0.6982,-1.1645;...
             -0.6982,5.6765,-1.8319;...
             -1.1645,-1.8319,5.9809]/(10^6); 
%% config 4 %%
config{4}.Z=[0.4615+1.0651i,0.1580+0.4236i,0.1535+0.3849i;...
             0.1580+0.4236i,0.4666+1.0482i,0.1560+0.5017i;...
             0.1535+0.3849i,0.1560+0.5017i,0.4576+1.0780i];
config{4}.B=[5.3971,-1.1645,-0.6982;...
             -1.1645,5.9809i,-1.8319;...
             -0.6982,-1.8319,5.6765]/(10^6);
%% config 5 %%
config{5}.Z=[0.4666+1.0482i,0.1560+0.5017i,0.1580+0.4236i;...
             0.1560+0.5017i,0.4576+1.0780i,0.1535+0.3849i;...
             0.1580+0.4236i,0.1535+0.3849i,0.4615+1.0651i];
config{5}.B=[5.9809,-1.8319,-1.1645;...
             -1.8319,5.6765,-0.6982;...
             -1.1645,-0.6982,5.3971]/(10^6);   
%% config 6 %%
config{6}.Z=[0.4576+1.0780i,0.1535+0.3849i,0.1560+0.5017i;...
             0.1535+0.3849i,0.4615+1.0651i,0.1580+0.4236i;...
             0.1560+0.5017i,0.1580+0.4236i,0.4666+1.0482i];
config{6}.B=[5.6765,-0.6982,-1.8319;...
             -0.6982,5.3971,-1.1645;...
             -1.8319,-1.1645,5.9809]/(10^6);
%% config 7 %%
config{7}.Z=[0.4576+1.0780i,0,0.1535+0.3849i;...
             0,             0,0;...
             0.1535+0.3849i,0,0.4615+1.0651i];
config{7}.B=[5.1154,0,-1.0549;...
             0,     0,0;...
             -1.0549,0,5.1704]/(10^6);     
%% config 8 %%
config{8}.Z=[0.4576+1.0780i,0.1535+0.3849i,0;...
             0.1535+0.3849i,0.4615+1.0651i,0;...
             0,             0,             0];
config{8}.B=[5.1154,-1.0549,0;...
             -1.0549,5.1704,0;...
             0,      0,     0]/(10^6);     
%% config 9 %%
config{9}.Z=[1.3292+1.3475i,0,0;...
             0,             0,0;...
             0,             0,0];
config{9}.B=[4.5193,0,0;...
             0,0,0;...
             0,0,0]/(10^6);     
%% config 10 %%
config{10}.Z=[0,0,0;...
              0,1.3292+1.3475i,0;...
              0,0,0];
config{10}.B=[0,0,0;...
              0,4.5193,0;...
              0,0,0]/(10^6);    
%% config 11 %%  
config{11}.Z=[0,0,0;...
              0,0,0;...
              0,0,1.3292+1.3475i];
config{11}.B=[0,0,0;...
              0,0,0;...
              0,0,4.5193]/(10^6); 
%% config 12 %%
config{12}.Z=[1.5209+0.7521i,0.5198+0.2775i,0.4924+0.2157i;...
              0.5198+0.2775i,1.5329+0.7162i,0.5198+0.2775i;...
              0.4924+0.2157i,0.5198+0.2775i,1.5209+0.7521];
config{12}.B=[67.2242,0,0;...
              0,67.2242,0;...
              0,0,67.2242]/(10^6);    
%% tranformer 1%%
Rtf_percent=0.0127;% 1.27%
Xtf_percent=0.0272;% 2.72%
N=4.16/0.48; % tranformer ratio
 
Vtf_base = 4.16; % 4.16KV LL
Stf_Base = 0.15; %150KVA

Rtf = Rtf_percent * (Vtf_base^2/Stf_Base);
Xtf = Xtf_percent * (Vtf_base^2/Stf_Base);
Ztf=diag([Rtf+1i*Xtf,Rtf+1i*Xtf,Rtf+1i*Xtf]);
%%
%% line segment 1 %%
LineSeg(1).Length=175;
LineSeg(1).node1=2;
LineSeg(1).node2=3;
LineSeg(1).phase=[0,1,0];
LineSeg(1).np=1;
LineSeg(1).Vbase=4.16/sqrt(3);
LineSeg(1).Z_pu = config{10}.Z*ft2mile(LineSeg(1).Length)...
			 *S_base/(LineSeg(1).Vbase^2);
LineSeg(1).Y_pu = zeros(3,3);
LineSeg(1).Y_pu(2,2) = inv(LineSeg(1).Z_pu(2,2));
LineSeg(1).B_pu = config{10}.B*ft2mile(LineSeg(1).Length)...
			 *S_base/(LineSeg(1).Vbase^2);
%% line segment 2 %%
LineSeg(2).Length=250;
LineSeg(2).node1=2;
LineSeg(2).node2=4;
LineSeg(2).phase=[0,0,1];
LineSeg(2).np=1;
LineSeg(2).Vbase=4.16/sqrt(3);
LineSeg(2).Z_pu = config{11}.Z*ft2mile(LineSeg(2).Length)...
			 *S_base/(LineSeg(2).Vbase^2);
LineSeg(2).Y_pu = zeros(3,3);
LineSeg(2).Y_pu(3,3) = inv(LineSeg(2).Z_pu(3,3));
LineSeg(2).B_pu = config{11}.B*ft2mile(LineSeg(2).Length)...
			 *S_base/(LineSeg(2).Vbase^2);
%% line segment 3 %%
LineSeg(3).Length=300;
LineSeg(3).node1=2;
LineSeg(3).node2=8;
LineSeg(3).phase=[1,1,1];
LineSeg(3).np=3;
LineSeg(3).Vbase=4.16/sqrt(3);
LineSeg(3).Z_pu = config{1}.Z*ft2mile(LineSeg(3).Length)...
			 *S_base/(LineSeg(3).Vbase^2);
LineSeg(3).Y_pu = inv(LineSeg(3).Z_pu);
LineSeg(3).B_pu = config{1}.B*ft2mile(LineSeg(3).Length)...
			 *S_base/(LineSeg(3).Vbase^2);
%% line segment 4 %%
LineSeg(4).Length=200;
LineSeg(4).node1=4;
LineSeg(4).node2=5;
LineSeg(4).phase=[0,0,1];
LineSeg(4).np=1;
LineSeg(4).Vbase=4.16/sqrt(3);
LineSeg(4).Z_pu = config{11}.Z*ft2mile(LineSeg(4).Length)...
			 *S_base/(LineSeg(4).Vbase^2);
LineSeg(4).Y_pu = zeros(3,3);
LineSeg(4).Y_pu(3,3) = inv(LineSeg(4).Z_pu(3,3));
LineSeg(4).B_pu = config{11}.B*ft2mile(LineSeg(4).Length)...
			 *S_base/(LineSeg(4).Vbase^2);
%% line segment 5 %%
LineSeg(5).Length=325;
LineSeg(5).node1=4;
LineSeg(5).node2=6;
LineSeg(5).phase=[0,0,1];
LineSeg(5).np=1;
LineSeg(5).Vbase=4.16/sqrt(3);
LineSeg(5).Z_pu = config{11}.Z*ft2mile(LineSeg(5).Length)...
			 *S_base/(LineSeg(5).Vbase^2);
LineSeg(5).Y_pu = zeros(3,3);
LineSeg(5).Y_pu(3,3) = inv(LineSeg(5).Z_pu(3,3));
LineSeg(5).B_pu = config{11}.B*ft2mile(LineSeg(5).Length)...
			 *S_base/(LineSeg(5).Vbase^2);
%% line segment 6 %%
LineSeg(6).Length=250;
LineSeg(6).node1=6;
LineSeg(6).node2=7;
LineSeg(6).phase=[0,0,1];
LineSeg(6).np=1;
LineSeg(6).Vbase=4.16/sqrt(3);
LineSeg(6).Z_pu = config{11}.Z*ft2mile(LineSeg(6).Length)...
			 *S_base/(LineSeg(6).Vbase^2);
LineSeg(6).Y_pu = zeros(3,3);
LineSeg(6).Y_pu(3,3) = inv(LineSeg(6).Z_pu(3,3));
LineSeg(6).B_pu = config{11}.B*ft2mile(LineSeg(6).Length)...
			 *S_base/(LineSeg(6).Vbase^2);
%% line segment 7 %%
LineSeg(7).Length=200;
LineSeg(7).node1=8;
LineSeg(7).node2=9;
LineSeg(7).phase=[1,1,1];
LineSeg(7).np=3;
LineSeg(7).Vbase=4.16/sqrt(3);
LineSeg(7).Z_pu = config{1}.Z*ft2mile(LineSeg(7).Length)...
			 *S_base/(LineSeg(7).Vbase^2);
LineSeg(7).Y_pu = inv(LineSeg(7).Z_pu);
LineSeg(7).B_pu = config{1}.B*ft2mile(LineSeg(7).Length)...
			 *S_base/(LineSeg(7).Vbase^2);
%% line segment 8 %%
LineSeg(8).Length=225;
LineSeg(8).node1=9;
LineSeg(8).node2=13;
LineSeg(8).phase=[0,1,0];
LineSeg(8).np=1;
LineSeg(8).Vbase=4.16/sqrt(3);
LineSeg(8).Z_pu = config{10}.Z*ft2mile(LineSeg(8).Length)...
			 *S_base/(LineSeg(8).Vbase^2);
LineSeg(8).Y_pu = zeros(3,3);
LineSeg(8).Y_pu(2,2) = inv(LineSeg(8).Z_pu(2,2));
LineSeg(8).B_pu = config{10}.B*ft2mile(LineSeg(8).Length)...
			 *S_base/(LineSeg(8).Vbase^2);
%% line segment 9 %%
LineSeg(9).Length=225;
LineSeg(9).node1=9;
LineSeg(9).node2=10;
LineSeg(9).phase=[1,0,0];
LineSeg(9).np=1;
LineSeg(9).Vbase=4.16/sqrt(3);
LineSeg(9).Z_pu = config{9}.Z*ft2mile(LineSeg(9).Length)...
			 *S_base/(LineSeg(9).Vbase^2);
LineSeg(9).Y_pu = zeros(3,3);
LineSeg(9).Y_pu(1,1) = inv(LineSeg(9).Z_pu(1,1));
LineSeg(9).B_pu = config{9}.B*ft2mile(LineSeg(9).Length)...
			 *S_base/(LineSeg(9).Vbase^2);
%% line segment 10 %%
LineSeg(10).Length=300;
LineSeg(10).node1=9;
LineSeg(10).node2=14;
LineSeg(10).phase=[1,1,1];
LineSeg(10).np=3;
LineSeg(10).Vbase=4.16/sqrt(3);
LineSeg(10).Z_pu = config{1}.Z*ft2mile(LineSeg(10).Length)...
			 *S_base/(LineSeg(10).Vbase^2);
LineSeg(10).Y_pu = inv(LineSeg(10).Z_pu);
LineSeg(10).B_pu = config{1}.B*ft2mile(LineSeg(10).Length)...
			 *S_base/(LineSeg(10).Vbase^2);
%% line segment 11 %%
LineSeg(11).Length=425;
LineSeg(11).node1=10;
LineSeg(11).node2=15;
LineSeg(11).phase=[1,0,0];
LineSeg(11).np=1;
LineSeg(11).Vbase=4.16/sqrt(3);
LineSeg(11).Z_pu = config{9}.Z*ft2mile(LineSeg(11).Length)...
			 *S_base/(LineSeg(11).Vbase^2);
LineSeg(11).Y_pu = zeros(3,3);
LineSeg(11).Y_pu(1,1) = inv(LineSeg(11).Z_pu(1,1));
LineSeg(11).B_pu = config{9}.B*ft2mile(LineSeg(11).Length)...
			 *S_base/(LineSeg(11).Vbase^2);
%% line segment 12 %%
LineSeg(12).Length=150;
LineSeg(12).node1=14;
LineSeg(12).node2=35;
LineSeg(12).phase=[0,0,1];
LineSeg(12).np=1;
LineSeg(12).Vbase=4.16/sqrt(3);
LineSeg(12).Z_pu = config{11}.Z*ft2mile(LineSeg(12).Length)...
			 *S_base/(LineSeg(12).Vbase^2);
LineSeg(12).Y_pu = zeros(3,3);
LineSeg(12).Y_pu(3,3) = inv(LineSeg(12).Z_pu(3,3));
LineSeg(12).B_pu = config{11}.B*ft2mile(LineSeg(12).Length)...
			 *S_base/(LineSeg(12).Vbase^2);
%% line segment 13 %%
LineSeg(13).Length=825;
LineSeg(13).node1=14;
LineSeg(13).node2=19;
LineSeg(13).phase=[1,1,1];
LineSeg(13).np=3;
LineSeg(13).Vbase=4.16/sqrt(3);
LineSeg(13).Z_pu = config{2}.Z*ft2mile(LineSeg(13).Length)...
			 *S_base/(LineSeg(13).Vbase^2);
LineSeg(13).Y_pu = inv(LineSeg(13).Z_pu);
LineSeg(13).B_pu = config{2}.B*ft2mile(LineSeg(13).Length)...
			 *S_base/(LineSeg(13).Vbase^2);
%% line segment 14 %%
LineSeg(14).Length=250;
LineSeg(14).node1=15;
LineSeg(14).node2=12;
LineSeg(14).phase=[1,0,0];
LineSeg(14).np=1;
LineSeg(14).Vbase=4.16/sqrt(3);
LineSeg(14).Z_pu = config{9}.Z*ft2mile(LineSeg(14).Length)...
			 *S_base/(LineSeg(14).Vbase^2);
LineSeg(14).Y_pu = zeros(3,3);
LineSeg(14).Y_pu(1,1) = inv(LineSeg(14).Z_pu(1,1));
LineSeg(14).B_pu = config{9}.B*ft2mile(LineSeg(14).Length)...
			 *S_base/(LineSeg(14).Vbase^2);
%% line segment 15 %%
LineSeg(15).Length=250;
LineSeg(15).node1=15;
LineSeg(15).node2=11;
LineSeg(15).phase=[1,0,0];
LineSeg(15).np=1;
LineSeg(15).Vbase=4.16/sqrt(3);
LineSeg(15).Z_pu = config{9}.Z*ft2mile(LineSeg(15).Length)...
			 *S_base/(LineSeg(15).Vbase^2);
LineSeg(15).Y_pu = zeros(3,3);
LineSeg(15).Y_pu(1,1) = inv(LineSeg(15).Z_pu(1,1));
LineSeg(15).B_pu = config{9}.B*ft2mile(LineSeg(15).Length)...
			 *S_base/(LineSeg(15).Vbase^2);
%% line segment 16 %%
LineSeg(16).Length=375;
LineSeg(16).node1=16;
LineSeg(16).node2=17;
LineSeg(16).phase=[0,0,1];
LineSeg(16).np=1;
LineSeg(16).Vbase=4.16/sqrt(3);
LineSeg(16).Z_pu = config{11}.Z*ft2mile(LineSeg(16).Length)...
			 *S_base/(LineSeg(16).Vbase^2);
LineSeg(16).Y_pu = zeros(3,3);
LineSeg(16).Y_pu(3,3) = inv(LineSeg(16).Z_pu(3,3));
LineSeg(16).B_pu = config{11}.B*ft2mile(LineSeg(16).Length)...
			 *S_base/(LineSeg(16).Vbase^2);
%% line segment 17 %%
LineSeg(17).Length=350;
LineSeg(17).node1=16;
LineSeg(17).node2=18;
LineSeg(17).phase=[0,0,1];
LineSeg(17).np=1;
LineSeg(17).Vbase=4.16/sqrt(3);
LineSeg(17).Z_pu = config{11}.Z*ft2mile(LineSeg(17).Length)...
			 *S_base/(LineSeg(17).Vbase^2);
LineSeg(17).Y_pu = zeros(3,3);
LineSeg(17).Y_pu(3,3) = inv(LineSeg(17).Z_pu(3,3));
LineSeg(17).B_pu = config{11}.B*ft2mile(LineSeg(17).Length)...
			 *S_base/(LineSeg(17).Vbase^2);
%% line segment 18 %%
LineSeg(18).Length=250;
LineSeg(18).node1=19;
LineSeg(18).node2=20;
LineSeg(18).phase=[1,0,0];
LineSeg(18).np=1;
LineSeg(18).Vbase=4.16/sqrt(3);
LineSeg(18).Z_pu = config{9}.Z*ft2mile(LineSeg(18).Length)...
			 *S_base/(LineSeg(18).Vbase^2);
LineSeg(18).Y_pu = zeros(3,3);
LineSeg(18).Y_pu(1,1) = inv(LineSeg(18).Z_pu(1,1));
LineSeg(18).B_pu = config{9}.B*ft2mile(LineSeg(18).Length)...
			 *S_base/(LineSeg(18).Vbase^2);
%% line segment 19 %%
LineSeg(19).Length=300;
LineSeg(19).node1=19;
LineSeg(19).node2=22;
LineSeg(19).phase=[1,1,1];
LineSeg(19).np=3;
LineSeg(19).Vbase=4.16/sqrt(3);
LineSeg(19).Z_pu = config{2}.Z*ft2mile(LineSeg(19).Length)...
			 *S_base/(LineSeg(19).Vbase^2);
LineSeg(19).Y_pu = inv(LineSeg(19).Z_pu);
LineSeg(19).B_pu = config{2}.B*ft2mile(LineSeg(19).Length)...
			 *S_base/(LineSeg(19).Vbase^2);
%% line segment 20 %%
LineSeg(20).Length=325;
LineSeg(20).node1=20;
LineSeg(20).node2=21;
LineSeg(20).phase=[1,0,0];
LineSeg(20).np=1;
LineSeg(20).Vbase=4.16/sqrt(3);
LineSeg(20).Z_pu = config{9}.Z*ft2mile(LineSeg(20).Length)...
			 *S_base/(LineSeg(20).Vbase^2);
LineSeg(20).Y_pu = zeros(3,3);
LineSeg(20).Y_pu(1,1) = inv(LineSeg(20).Z_pu(1,1));
LineSeg(20).B_pu = config{9}.B*ft2mile(LineSeg(20).Length)...
			 *S_base/(LineSeg(20).Vbase^2);
%% line segment 21 %%
LineSeg(21).Length=525;
LineSeg(21).node1=22;
LineSeg(21).node2=23;
LineSeg(21).phase=[0,1,0];
LineSeg(21).np=1;
LineSeg(21).Vbase=4.16/sqrt(3);
LineSeg(21).Z_pu = config{10}.Z*ft2mile(LineSeg(21).Length)...
			 *S_base/(LineSeg(21).Vbase^2);
LineSeg(21).Y_pu = zeros(3,3);
LineSeg(21).Y_pu(2,2) = inv(LineSeg(21).Z_pu(2,2));
LineSeg(21).B_pu = config{10}.B*ft2mile(LineSeg(21).Length)...
			 *S_base/(LineSeg(21).Vbase^2);
%% line segment 22 %%
LineSeg(22).Length=250;
LineSeg(22).node1=22;
LineSeg(22).node2=24;
LineSeg(22).phase=[1,1,1];
LineSeg(22).np=3;
LineSeg(22).Vbase=4.16/sqrt(3);
LineSeg(22).Z_pu = config{2}.Z*ft2mile(LineSeg(22).Length)...
			 *S_base/(LineSeg(22).Vbase^2);
LineSeg(22).Y_pu = inv(LineSeg(22).Z_pu);
LineSeg(22).B_pu = config{2}.B*ft2mile(LineSeg(22).Length)...
			 *S_base/(LineSeg(22).Vbase^2);
%% line segment 23 %%
LineSeg(23).Length=550;
LineSeg(23).node1=24;
LineSeg(23).node2=25;
LineSeg(23).phase=[0,0,1];
LineSeg(23).np=1;
LineSeg(23).Vbase=4.16/sqrt(3);
LineSeg(23).Z_pu = config{11}.Z*ft2mile(LineSeg(23).Length)...
			 *S_base/(LineSeg(23).Vbase^2);
LineSeg(23).Y_pu = zeros(3,3);
LineSeg(23).Y_pu(3,3) = inv(LineSeg(23).Z_pu(3,3));
LineSeg(23).B_pu = config{11}.B*ft2mile(LineSeg(23).Length)...
			 *S_base/(LineSeg(23).Vbase^2);
%% line segment 24 %%
LineSeg(24).Length=275;
LineSeg(24).node1=24;
LineSeg(24).node2=26;
LineSeg(24).phase=[1,1,1];
LineSeg(24).np=3;
LineSeg(24).Vbase=4.16/sqrt(3);
LineSeg(24).Z_pu = config{2}.Z*ft2mile(LineSeg(24).Length)...
			 *S_base/(LineSeg(24).Vbase^2);
LineSeg(24).Y_pu = inv(LineSeg(24).Z_pu);
LineSeg(24).B_pu = config{2}.B*ft2mile(LineSeg(24).Length)...
			 *S_base/(LineSeg(24).Vbase^2);
%% line segment 25 %%
LineSeg(25).Length=350;
LineSeg(25).node1=26;
LineSeg(25).node2=27;
LineSeg(25).phase=[1,0,1];
LineSeg(25).np=2;
LineSeg(25).Vbase=4.16/sqrt(3);
LineSeg(25).Z_pu = config{7}.Z*ft2mile(LineSeg(25).Length)...
			 *S_base/(LineSeg(25).Vbase^2);
tempZpu=LineSeg(25).Z_pu;
tempZpu(2,:)=[];
tempZpu(:,2)=[];
tempYpu=inv(tempZpu);
tempYpu=[tempYpu(1,:);[0,0];tempYpu(2,:)];
tempYpu=[tempYpu(:,1),[0;0;0],tempYpu(:,2)];
LineSeg(25).Y_pu = tempYpu;
LineSeg(25).B_pu = config{7}.B*ft2mile(LineSeg(25).Length)...
			 *S_base/(LineSeg(25).Vbase^2);
%% line segment 26 %%
LineSeg(26).Length=200;
LineSeg(26).node1=26;
LineSeg(26).node2=29;
LineSeg(26).phase=[1,1,1];
LineSeg(26).np=3;
LineSeg(26).Vbase=4.16/sqrt(3);
LineSeg(26).Z_pu = config{2}.Z*ft2mile(LineSeg(26).Length)...
			 *S_base/(LineSeg(26).Vbase^2);
LineSeg(26).Y_pu = inv(LineSeg(26).Z_pu);
LineSeg(26).B_pu = config{2}.B*ft2mile(LineSeg(26).Length)...
			 *S_base/(LineSeg(26).Vbase^2);
%% line segment 27 %%
LineSeg(27).Length=275;
LineSeg(27).node1=27;
LineSeg(27).node2=28;
LineSeg(27).phase=[1,0,1];
LineSeg(27).np=2;
LineSeg(27).Vbase=4.16/sqrt(3);
LineSeg(27).Z_pu = config{7}.Z*ft2mile(LineSeg(27).Length)...
			 *S_base/(LineSeg(27).Vbase^2);
tempZpu=LineSeg(27).Z_pu;
tempZpu(2,:)=[];
tempZpu(:,2)=[];
tempYpu=inv(tempZpu);
tempYpu=[tempYpu(1,:);[0,0];tempYpu(2,:)];
tempYpu=[tempYpu(:,1),[0;0;0],tempYpu(:,2)];
LineSeg(27).Y_pu = tempYpu;
LineSeg(27).B_pu = config{7}.B*ft2mile(LineSeg(27).Length)...
			 *S_base/(LineSeg(27).Vbase^2);
%% line segment 28 %%
LineSeg(28).Length=225;
LineSeg(28).node1=27;
LineSeg(28).node2=32;
LineSeg(28).phase=[0,0,1];
LineSeg(28).np=1;
LineSeg(28).Vbase=4.16/sqrt(3);
LineSeg(28).Z_pu = config{11}.Z*ft2mile(LineSeg(28).Length)...
			 *S_base/(LineSeg(28).Vbase^2);
LineSeg(28).Y_pu = zeros(3,3);
LineSeg(28).Y_pu(3,3) = inv(LineSeg(28).Z_pu(3,3));
LineSeg(28).B_pu = config{11}.B*ft2mile(LineSeg(28).Length)...
			 *S_base/(LineSeg(28).Vbase^2);
%% line segment 29 %%
LineSeg(29).Length=500;
LineSeg(29).node1=28;
LineSeg(29).node2=34;
LineSeg(29).phase=[1,0,0];
LineSeg(29).np=1;
LineSeg(29).Vbase=4.16/sqrt(3);
LineSeg(29).Z_pu = config{9}.Z*ft2mile(LineSeg(29).Length)...
			 *S_base/(LineSeg(29).Vbase^2);
LineSeg(29).Y_pu = zeros(3,3);
LineSeg(29).Y_pu(1,1) = inv(LineSeg(29).Z_pu(1,1));
LineSeg(29).B_pu = config{9}.B*ft2mile(LineSeg(29).Length)...
			 *S_base/(LineSeg(29).Vbase^2);
%% line segment 30 %%
LineSeg(30).Length=300;
LineSeg(30).node1=29;
LineSeg(30).node2=30;
LineSeg(30).phase=[1,1,1];
LineSeg(30).np=3;
LineSeg(30).Vbase=4.16/sqrt(3);
LineSeg(30).Z_pu = config{2}.Z*ft2mile(LineSeg(30).Length)...
			 *S_base/(LineSeg(30).Vbase^2);
LineSeg(30).Y_pu = inv(LineSeg(30).Z_pu);
LineSeg(30).B_pu = config{2}.B*ft2mile(LineSeg(30).Length)...
			 *S_base/(LineSeg(30).Vbase^2);
%% line segment 31 %%
LineSeg(31).Length=350;
LineSeg(31).node1=30;
LineSeg(31).node2=31;
LineSeg(31).phase=[1,1,1];
LineSeg(31).np=3;
LineSeg(31).Vbase=4.16/sqrt(3);
LineSeg(31).Z_pu = config{2}.Z*ft2mile(LineSeg(31).Length)...
			 *S_base/(LineSeg(31).Vbase^2);
LineSeg(31).Y_pu = inv(LineSeg(31).Z_pu);
LineSeg(31).B_pu = config{2}.B*ft2mile(LineSeg(31).Length)...
			 *S_base/(LineSeg(31).Vbase^2);
%% line segment 32 %%
LineSeg(32).Length=200;
LineSeg(32).node1=31;
LineSeg(32).node2=116; %%% 250
LineSeg(32).phase=[1,1,1];
LineSeg(32).np=3;
LineSeg(32).Vbase=4.16/sqrt(3);
LineSeg(32).Z_pu = config{2}.Z*ft2mile(LineSeg(32).Length)...
			 *S_base/(LineSeg(32).Vbase^2);
LineSeg(32).Y_pu = inv(LineSeg(32).Z_pu);
LineSeg(32).B_pu = config{2}.B*ft2mile(LineSeg(32).Length)...
			 *S_base/(LineSeg(32).Vbase^2);
%% line segment 33 %%
LineSeg(33).Length=300;
LineSeg(33).node1=32;
LineSeg(33).node2=33;
LineSeg(33).phase=[0,0,1];
LineSeg(33).np=1;
LineSeg(33).Vbase=4.16/sqrt(3);
LineSeg(33).Z_pu = config{11}.Z*ft2mile(LineSeg(33).Length)...
			 *S_base/(LineSeg(33).Vbase^2);
LineSeg(33).Y_pu = zeros(3,3);
LineSeg(33).Y_pu(3,3) = inv(LineSeg(33).Z_pu(3,3));
LineSeg(33).B_pu = config{11}.B*ft2mile(LineSeg(33).Length)...
			 *S_base/(LineSeg(33).Vbase^2);
%% line segment 34 %%
LineSeg(34).Length=100;
LineSeg(34).node1=35;
LineSeg(34).node2=16;
LineSeg(34).phase=[0,0,1];
LineSeg(34).np=1;
LineSeg(34).Vbase=4.16/sqrt(3);
LineSeg(34).Z_pu = config{11}.Z*ft2mile(LineSeg(34).Length)...
			 *S_base/(LineSeg(34).Vbase^2);
LineSeg(34).Y_pu = zeros(3,3);
LineSeg(34).Y_pu(3,3) = inv(LineSeg(34).Z_pu(3,3));
LineSeg(34).B_pu = config{11}.B*ft2mile(LineSeg(34).Length)...
			 *S_base/(LineSeg(34).Vbase^2);
%% line segment 35 %%
LineSeg(35).Length=650;
LineSeg(35).node1=36;
LineSeg(35).node2=37;
LineSeg(35).phase=[1,1,0];
LineSeg(35).np=2;
LineSeg(35).Vbase=4.16/sqrt(3);
LineSeg(35).Z_pu = config{8}.Z*ft2mile(LineSeg(35).Length)...
			 *S_base/(LineSeg(35).Vbase^2);
LineSeg(35).Y_pu = zeros(3,3);
LineSeg(35).Y_pu(1:2,1:2) = inv(LineSeg(35).Z_pu(1:2,1:2));
LineSeg(35).B_pu = config{8}.B*ft2mile(LineSeg(35).Length)...
			 *S_base/(LineSeg(35).Vbase^2);
%% line segment 36 %%
LineSeg(36).Length=250;
LineSeg(36).node1=36;
LineSeg(36).node2=41;
LineSeg(36).phase=[1,1,1];
LineSeg(36).np=3;
LineSeg(36).Vbase=4.16/sqrt(3);
LineSeg(36).Z_pu = config{1}.Z*ft2mile(LineSeg(36).Length)...
			 *S_base/(LineSeg(36).Vbase^2);
LineSeg(36).Y_pu = inv(LineSeg(36).Z_pu);
LineSeg(36).B_pu = config{1}.B*ft2mile(LineSeg(36).Length)...
			 *S_base/(LineSeg(36).Vbase^2);
%% line segment 37 %%
LineSeg(37).Length=300;
LineSeg(37).node1=37;
LineSeg(37).node2=38;
LineSeg(37).phase=[1,0,0];
LineSeg(37).np=1;
LineSeg(37).Vbase=4.16/sqrt(3);
LineSeg(37).Z_pu = config{9}.Z*ft2mile(LineSeg(37).Length)...
			 *S_base/(LineSeg(37).Vbase^2);
LineSeg(37).Y_pu = zeros(3,3);
LineSeg(37).Y_pu(1,1) = inv(LineSeg(37).Z_pu(1,1));
LineSeg(37).B_pu = config{9}.B*ft2mile(LineSeg(37).Length)...
			 *S_base/(LineSeg(37).Vbase^2);
%% line segment 38 %%
LineSeg(38).Length=250;
LineSeg(38).node1=37;
LineSeg(38).node2=39;
LineSeg(38).phase=[0,1,0];
LineSeg(38).np=1;
LineSeg(38).Vbase=4.16/sqrt(3);
LineSeg(38).Z_pu = config{10}.Z*ft2mile(LineSeg(38).Length)...
			 *S_base/(LineSeg(38).Vbase^2);
LineSeg(38).Y_pu = zeros(3,3);
LineSeg(38).Y_pu(2,2) = inv(LineSeg(38).Z_pu(2,2));
LineSeg(38).B_pu = config{10}.B*ft2mile(LineSeg(38).Length)...
			 *S_base/(LineSeg(38).Vbase^2);
%% line segment 39 %%
LineSeg(39).Length=325;
LineSeg(39).node1=39;
LineSeg(39).node2=40;
LineSeg(39).phase=[0,1,0];
LineSeg(39).np=1;
LineSeg(39).Vbase=4.16/sqrt(3);
LineSeg(39).Z_pu = config{10}.Z*ft2mile(LineSeg(39).Length)...
			 *S_base/(LineSeg(39).Vbase^2);
LineSeg(39).Y_pu = zeros(3,3);
LineSeg(39).Y_pu(2,2) = inv(LineSeg(39).Z_pu(2,2));
LineSeg(39).B_pu = config{10}.B*ft2mile(LineSeg(39).Length)...
			 *S_base/(LineSeg(39).Vbase^2);
%% line segment 40 %%
LineSeg(40).Length=325;
LineSeg(40).node1=41;
LineSeg(40).node2=42;
LineSeg(40).phase=[0,0,1];
LineSeg(40).np=1;
LineSeg(40).Vbase=4.16/sqrt(3);
LineSeg(40).Z_pu = config{11}.Z*ft2mile(LineSeg(40).Length)...
			 *S_base/(LineSeg(40).Vbase^2);
LineSeg(40).Y_pu = zeros(3,3);
LineSeg(40).Y_pu(3,3) = inv(LineSeg(40).Z_pu(3,3));
LineSeg(40).B_pu = config{11}.B*ft2mile(LineSeg(40).Length)...
			 *S_base/(LineSeg(40).Vbase^2);
%% line segment 41 %%
LineSeg(41).Length=250;
LineSeg(41).node1=41;
LineSeg(41).node2=43;
LineSeg(41).phase=[1,1,1];
LineSeg(41).np=3;
LineSeg(41).Vbase=4.16/sqrt(3);
LineSeg(41).Z_pu = config{1}.Z*ft2mile(LineSeg(41).Length)...
			 *S_base/(LineSeg(41).Vbase^2);
LineSeg(41).Y_pu = inv(LineSeg(41).Z_pu);
LineSeg(41).B_pu = config{1}.B*ft2mile(LineSeg(41).Length)...
			 *S_base/(LineSeg(41).Vbase^2);
%% line segment 42 %%
LineSeg(42).Length=500;
LineSeg(42).node1=43;
LineSeg(42).node2=44;
LineSeg(42).phase=[0,1,0];
LineSeg(42).np=1;
LineSeg(42).Vbase=4.16/sqrt(3);
LineSeg(42).Z_pu = config{10}.Z*ft2mile(LineSeg(42).Length)...
			 *S_base/(LineSeg(42).Vbase^2);
LineSeg(42).Y_pu = zeros(3,3);
LineSeg(42).Y_pu(2,2) = inv(LineSeg(42).Z_pu(2,2));
LineSeg(42).B_pu = config{10}.B*ft2mile(LineSeg(42).Length)...
			 *S_base/(LineSeg(42).Vbase^2);
%% line segment 43 %%
LineSeg(43).Length=200;
LineSeg(43).node1=43;
LineSeg(43).node2=45;
LineSeg(43).phase=[1,1,1];
LineSeg(43).np=3;
LineSeg(43).Vbase=4.16/sqrt(3);
LineSeg(43).Z_pu = config{1}.Z*ft2mile(LineSeg(43).Length)...
			 *S_base/(LineSeg(43).Vbase^2);
LineSeg(43).Y_pu = inv(LineSeg(43).Z_pu);
LineSeg(43).B_pu = config{1}.B*ft2mile(LineSeg(43).Length)...
			 *S_base/(LineSeg(43).Vbase^2);
%% line segment 44 %%
LineSeg(44).Length=200;
LineSeg(44).node1=45;
LineSeg(44).node2=46;
LineSeg(44).phase=[1,0,0];
LineSeg(44).np=1;
LineSeg(44).Vbase=4.16/sqrt(3);
LineSeg(44).Z_pu = config{9}.Z*ft2mile(LineSeg(44).Length)...
			 *S_base/(LineSeg(44).Vbase^2);
LineSeg(44).Y_pu = zeros(3,3);
LineSeg(44).Y_pu(1,1) = inv(LineSeg(44).Z_pu(1,1));
LineSeg(44).B_pu = config{9}.B*ft2mile(LineSeg(44).Length)...
			 *S_base/(LineSeg(44).Vbase^2);
%% line segment 45 %%
LineSeg(45).Length=250;
LineSeg(45).node1=45;
LineSeg(45).node2=48;
LineSeg(45).phase=[1,1,1];
LineSeg(45).np=3;
LineSeg(45).Vbase=4.16/sqrt(3);
LineSeg(45).Z_pu = config{1}.Z*ft2mile(LineSeg(45).Length)...
			 *S_base/(LineSeg(45).Vbase^2);
LineSeg(45).Y_pu = inv(LineSeg(45).Z_pu);
LineSeg(45).B_pu = config{1}.B*ft2mile(LineSeg(45).Length)...
			 *S_base/(LineSeg(45).Vbase^2);
%% line segment 46 %%
LineSeg(46).Length=300;
LineSeg(46).node1=46;
LineSeg(46).node2=47;
LineSeg(46).phase=[1,0,0];
LineSeg(46).np=1;
LineSeg(46).Vbase=4.16/sqrt(3);
LineSeg(46).Z_pu = config{9}.Z*ft2mile(LineSeg(46).Length)...
			 *S_base/(LineSeg(46).Vbase^2);
LineSeg(46).Y_pu = zeros(3,3);
LineSeg(46).Y_pu(1,1) = inv(LineSeg(46).Z_pu(1,1));
LineSeg(46).B_pu = config{9}.B*ft2mile(LineSeg(46).Length)...
			 *S_base/(LineSeg(46).Vbase^2);
%% line segment 47 %%
LineSeg(47).Length=150;
LineSeg(47).node1=48;
LineSeg(47).node2=49;
LineSeg(47).phase=[1,1,1];
LineSeg(47).np=3;
LineSeg(47).Vbase=4.16/sqrt(3);
LineSeg(47).Z_pu = config{4}.Z*ft2mile(LineSeg(47).Length)...
			 *S_base/(LineSeg(47).Vbase^2);
LineSeg(47).Y_pu = inv(LineSeg(47).Z_pu);
LineSeg(47).B_pu = config{4}.B*ft2mile(LineSeg(47).Length)...
			 *S_base/(LineSeg(47).Vbase^2);
%% line segment 48 %%
LineSeg(48).Length=250;
LineSeg(48).node1=48;
LineSeg(48).node2=50;
LineSeg(48).phase=[1,1,1];
LineSeg(48).np=3;
LineSeg(48).Vbase=4.16/sqrt(3);
LineSeg(48).Z_pu = config{4}.Z*ft2mile(LineSeg(48).Length)...
			 *S_base/(LineSeg(48).Vbase^2);
LineSeg(48).Y_pu = inv(LineSeg(48).Z_pu);
LineSeg(48).B_pu = config{4}.B*ft2mile(LineSeg(48).Length)...
			 *S_base/(LineSeg(48).Vbase^2);
%% line segment 49 %%
LineSeg(49).Length=250;
LineSeg(49).node1=50;
LineSeg(49).node2=51;
LineSeg(49).phase=[1,1,1];
LineSeg(49).np=3;
LineSeg(49).Vbase=4.16/sqrt(3);
LineSeg(49).Z_pu = config{4}.Z*ft2mile(LineSeg(49).Length)...
			 *S_base/(LineSeg(49).Vbase^2);
LineSeg(49).Y_pu = inv(LineSeg(49).Z_pu);
LineSeg(49).B_pu = config{4}.B*ft2mile(LineSeg(49).Length)...
			 *S_base/(LineSeg(49).Vbase^2);
%% line segment 50 %%
LineSeg(50).Length=250;
LineSeg(50).node1=51;
LineSeg(50).node2=52;
LineSeg(50).phase=[1,1,1];
LineSeg(50).np=3;
LineSeg(50).Vbase=4.16/sqrt(3);
LineSeg(50).Z_pu = config{4}.Z*ft2mile(LineSeg(50).Length)...
			 *S_base/(LineSeg(50).Vbase^2);
LineSeg(50).Y_pu = inv(LineSeg(50).Z_pu);
LineSeg(50).B_pu = config{4}.B*ft2mile(LineSeg(50).Length)...
			 *S_base/(LineSeg(50).Vbase^2);
%% line segment 51 %%
LineSeg(51).Length=500;
LineSeg(51).node1=52;
LineSeg(51).node2=117; %%% 151
LineSeg(51).phase=[1,1,1];
LineSeg(51).np=3;
LineSeg(51).Vbase=4.16/sqrt(3);
LineSeg(51).Z_pu = config{4}.Z*ft2mile(LineSeg(51).Length)...
			 *S_base/(LineSeg(51).Vbase^2);
LineSeg(51).Y_pu = inv(LineSeg(51).Z_pu);
LineSeg(51).B_pu = config{4}.B*ft2mile(LineSeg(51).Length)...
			 *S_base/(LineSeg(51).Vbase^2);
%% line segment 52 %%
LineSeg(52).Length=200;
LineSeg(52).node1=53;
LineSeg(52).node2=54;
LineSeg(52).phase=[1,1,1];
LineSeg(52).np=3;
LineSeg(52).Vbase=4.16/sqrt(3);
LineSeg(52).Z_pu = config{1}.Z*ft2mile(LineSeg(52).Length)...
			 *S_base/(LineSeg(52).Vbase^2);
LineSeg(52).Y_pu = inv(LineSeg(52).Z_pu);
LineSeg(52).B_pu = config{1}.B*ft2mile(LineSeg(52).Length)...
			 *S_base/(LineSeg(52).Vbase^2);
%% line segment 53 %%
LineSeg(53).Length=125;
LineSeg(53).node1=54;
LineSeg(53).node2=55;
LineSeg(53).phase=[1,1,1];
LineSeg(53).np=3;
LineSeg(53).Vbase=4.16/sqrt(3);
LineSeg(53).Z_pu = config{1}.Z*ft2mile(LineSeg(53).Length)...
			 *S_base/(LineSeg(53).Vbase^2);
LineSeg(53).Y_pu = inv(LineSeg(53).Z_pu);
LineSeg(53).B_pu = config{1}.B*ft2mile(LineSeg(53).Length)...
			 *S_base/(LineSeg(53).Vbase^2);
%% line segment 54 %%
LineSeg(54).Length=275;
LineSeg(54).node1=55;
LineSeg(54).node2=56;
LineSeg(54).phase=[1,1,1];
LineSeg(54).np=3;
LineSeg(54).Vbase=4.16/sqrt(3);
LineSeg(54).Z_pu = config{1}.Z*ft2mile(LineSeg(54).Length)...
			 *S_base/(LineSeg(54).Vbase^2);
LineSeg(54).Y_pu = inv(LineSeg(54).Z_pu);
LineSeg(54).B_pu = config{1}.B*ft2mile(LineSeg(54).Length)...
			 *S_base/(LineSeg(54).Vbase^2);
%% line segment 55 %%
LineSeg(55).Length=350;
LineSeg(55).node1=55;
LineSeg(55).node2=58;
LineSeg(55).phase=[1,1,1];
LineSeg(55).np=3;
LineSeg(55).Vbase=4.16/sqrt(3);
LineSeg(55).Z_pu = config{3}.Z*ft2mile(LineSeg(55).Length)...
			 *S_base/(LineSeg(55).Vbase^2);
LineSeg(55).Y_pu = inv(LineSeg(55).Z_pu);
LineSeg(55).B_pu = config{3}.B*ft2mile(LineSeg(55).Length)...
			 *S_base/(LineSeg(55).Vbase^2);
%% line segment 56 %%
LineSeg(56).Length=275;
LineSeg(56).node1=56;
LineSeg(56).node2=57;
LineSeg(56).phase=[1,1,1];
LineSeg(56).np=3;
LineSeg(56).Vbase=4.16/sqrt(3);
LineSeg(56).Z_pu = config{1}.Z*ft2mile(LineSeg(56).Length)...
			 *S_base/(LineSeg(56).Vbase^2);
LineSeg(56).Y_pu = inv(LineSeg(56).Z_pu);
LineSeg(56).B_pu = config{1}.B*ft2mile(LineSeg(56).Length)...
			 *S_base/(LineSeg(56).Vbase^2);
%% line segment 57 %%
LineSeg(57).Length=250;
LineSeg(57).node1=58;
LineSeg(57).node2=59;
LineSeg(57).phase=[0,1,0];
LineSeg(57).np=1;
LineSeg(57).Vbase=4.16/sqrt(3);
LineSeg(57).Z_pu = config{10}.Z*ft2mile(LineSeg(57).Length)...
			 *S_base/(LineSeg(57).Vbase^2);
LineSeg(57).Y_pu = zeros(3,3);
LineSeg(57).Y_pu(2,2) = inv(LineSeg(57).Z_pu(2,2));
LineSeg(57).B_pu = config{10}.B*ft2mile(LineSeg(57).Length)...
			 *S_base/(LineSeg(57).Vbase^2);
%% line segment 58 %%
LineSeg(58).Length=750;
LineSeg(58).node1=58;
LineSeg(58).node2=61;
LineSeg(58).phase=[1,1,1];
LineSeg(58).np=3;
LineSeg(58).Vbase=4.16/sqrt(3);
LineSeg(58).Z_pu = config{3}.Z*ft2mile(LineSeg(58).Length)...
			 *S_base/(LineSeg(58).Vbase^2);
LineSeg(58).Y_pu = inv(LineSeg(58).Z_pu);
LineSeg(58).B_pu = config{3}.B*ft2mile(LineSeg(58).Length)...
			 *S_base/(LineSeg(58).Vbase^2);
%% line segment 59 %%
LineSeg(59).Length=250;
LineSeg(59).node1=59;
LineSeg(59).node2=60;
LineSeg(59).phase=[0,1,0];
LineSeg(59).np=1;
LineSeg(59).Vbase=4.16/sqrt(3);
LineSeg(59).Z_pu = config{10}.Z*ft2mile(LineSeg(59).Length)...
			 *S_base/(LineSeg(59).Vbase^2);
LineSeg(59).Y_pu = zeros(3,3);
LineSeg(59).Y_pu(2,2) = inv(LineSeg(59).Z_pu(2,2));
LineSeg(59).B_pu = config{10}.B*ft2mile(LineSeg(59).Length)...
			 *S_base/(LineSeg(59).Vbase^2);
%% line segment 60 %%
LineSeg(60).Length=550;
LineSeg(60).node1=61;
LineSeg(60).node2=62;
LineSeg(60).phase=[1,1,1];
LineSeg(60).np=3;
LineSeg(60).Vbase=4.16/sqrt(3);
LineSeg(60).Z_pu = config{5}.Z*ft2mile(LineSeg(60).Length)...
			 *S_base/(LineSeg(60).Vbase^2);
LineSeg(60).Y_pu = inv(LineSeg(60).Z_pu);
LineSeg(60).B_pu = config{5}.B*ft2mile(LineSeg(60).Length)...
			 *S_base/(LineSeg(60).Vbase^2);
%% line segment 61 %%
LineSeg(61).Length=250;
LineSeg(61).node1=61;
LineSeg(61).node2=63;
LineSeg(61).phase=[1,1,1];
LineSeg(61).np=3;
LineSeg(61).Vbase=4.16/sqrt(3);
LineSeg(61).Z_pu = config{12}.Z*ft2mile(LineSeg(61).Length)...
			 *S_base/(LineSeg(61).Vbase^2);
LineSeg(61).Y_pu = inv(LineSeg(61).Z_pu);
LineSeg(61).B_pu = config{12}.B*ft2mile(LineSeg(61).Length)...
			 *S_base/(LineSeg(61).Vbase^2);
%% line segment 62 %%
LineSeg(62).Length=175;
LineSeg(62).node1=63;
LineSeg(62).node2=64;
LineSeg(62).phase=[1,1,1];
LineSeg(62).np=3;
LineSeg(62).Vbase=4.16/sqrt(3);
LineSeg(62).Z_pu = config{12}.Z*ft2mile(LineSeg(62).Length)...
			 *S_base/(LineSeg(62).Vbase^2);
LineSeg(62).Y_pu = inv(LineSeg(62).Z_pu);
LineSeg(62).B_pu = config{12}.B*ft2mile(LineSeg(62).Length)...
			 *S_base/(LineSeg(62).Vbase^2);
%% line segment 63 %%
LineSeg(63).Length=350;
LineSeg(63).node1=64;
LineSeg(63).node2=65;
LineSeg(63).phase=[1,1,1];
LineSeg(63).np=3;
LineSeg(63).Vbase=4.16/sqrt(3);
LineSeg(63).Z_pu = config{12}.Z*ft2mile(LineSeg(63).Length)...
			 *S_base/(LineSeg(63).Vbase^2);
LineSeg(63).Y_pu = inv(LineSeg(63).Z_pu);
LineSeg(63).B_pu = config{12}.B*ft2mile(LineSeg(63).Length)...
			 *S_base/(LineSeg(63).Vbase^2);
%% line segment 64 %%
LineSeg(64).Length=425;
LineSeg(64).node1=65;
LineSeg(64).node2=66;
LineSeg(64).phase=[1,1,1];
LineSeg(64).np=3;
LineSeg(64).Vbase=4.16/sqrt(3);
LineSeg(64).Z_pu = config{12}.Z*ft2mile(LineSeg(64).Length)...
			 *S_base/(LineSeg(64).Vbase^2);
LineSeg(64).Y_pu = inv(LineSeg(64).Z_pu);
LineSeg(64).B_pu = config{12}.B*ft2mile(LineSeg(64).Length)...
			 *S_base/(LineSeg(64).Vbase^2);
%% line segment 65 %%
LineSeg(65).Length=325;
LineSeg(65).node1=66;
LineSeg(65).node2=67;
LineSeg(65).phase=[1,1,1];
LineSeg(65).np=3;
LineSeg(65).Vbase=4.16/sqrt(3);
LineSeg(65).Z_pu = config{12}.Z*ft2mile(LineSeg(65).Length)...
			 *S_base/(LineSeg(65).Vbase^2);
LineSeg(65).Y_pu = inv(LineSeg(65).Z_pu);
LineSeg(65).B_pu = config{12}.B*ft2mile(LineSeg(65).Length)...
			 *S_base/(LineSeg(65).Vbase^2);
%% line segment 66 %%
LineSeg(66).Length=200;
LineSeg(66).node1=68;
LineSeg(66).node2=69;
LineSeg(66).phase=[1,0,0];
LineSeg(66).np=1;
LineSeg(66).Vbase=4.16/sqrt(3);
LineSeg(66).Z_pu = config{9}.Z*ft2mile(LineSeg(66).Length)...
			 *S_base/(LineSeg(66).Vbase^2);
LineSeg(66).Y_pu = zeros(3,3);
LineSeg(66).Y_pu(1,1) = inv(LineSeg(66).Z_pu(1,1));
LineSeg(66).B_pu = config{9}.B*ft2mile(LineSeg(66).Length)...
			 *S_base/(LineSeg(66).Vbase^2);
%% line segment 67 %%
LineSeg(67).Length=275;
LineSeg(67).node1=68;
LineSeg(67).node2=73;
LineSeg(67).phase=[1,1,1];
LineSeg(67).np=3;
LineSeg(67).Vbase=4.16/sqrt(3);
LineSeg(67).Z_pu = config{3}.Z*ft2mile(LineSeg(67).Length)...
			 *S_base/(LineSeg(67).Vbase^2);
LineSeg(67).Y_pu = inv(LineSeg(67).Z_pu);
LineSeg(67).B_pu = config{3}.B*ft2mile(LineSeg(67).Length)...
			 *S_base/(LineSeg(67).Vbase^2);
%% line segment 68 %%
LineSeg(68).Length=250;
LineSeg(68).node1=68;
LineSeg(68).node2=98;
LineSeg(68).phase=[1,1,1];
LineSeg(68).np=3;
LineSeg(68).Vbase=4.16/sqrt(3);
LineSeg(68).Z_pu = config{3}.Z*ft2mile(LineSeg(68).Length)...
			 *S_base/(LineSeg(68).Vbase^2);
LineSeg(68).Y_pu = inv(LineSeg(68).Z_pu);
LineSeg(68).B_pu = config{3}.B*ft2mile(LineSeg(68).Length)...
			 *S_base/(LineSeg(68).Vbase^2);
%% line segment 69 %%
LineSeg(69).Length=275;
LineSeg(69).node1=69;
LineSeg(69).node2=70;
LineSeg(69).phase=[1,0,0];
LineSeg(69).np=1;
LineSeg(69).Vbase=4.16/sqrt(3);
LineSeg(69).Z_pu = config{9}.Z*ft2mile(LineSeg(69).Length)...
			 *S_base/(LineSeg(69).Vbase^2);
LineSeg(69).Y_pu = zeros(3,3);
LineSeg(69).Y_pu(1,1) = inv(LineSeg(69).Z_pu(1,1));
LineSeg(69).B_pu = config{9}.B*ft2mile(LineSeg(69).Length)...
			 *S_base/(LineSeg(69).Vbase^2);
%% line segment 70 %%
LineSeg(70).Length=325;
LineSeg(70).node1=70;
LineSeg(70).node2=71;
LineSeg(70).phase=[1,0,0];
LineSeg(70).np=1;
LineSeg(70).Vbase=4.16/sqrt(3);
LineSeg(70).Z_pu = config{9}.Z*ft2mile(LineSeg(70).Length)...
			 *S_base/(LineSeg(70).Vbase^2);
LineSeg(70).Y_pu = zeros(3,3);
LineSeg(70).Y_pu(1,1) = inv(LineSeg(70).Z_pu(1,1));
LineSeg(70).B_pu = config{9}.B*ft2mile(LineSeg(70).Length)...
			 *S_base/(LineSeg(70).Vbase^2);
%% line segment 71 %%
LineSeg(71).Length=275;
LineSeg(71).node1=71;
LineSeg(71).node2=72;
LineSeg(71).phase=[1,0,0];
LineSeg(71).np=1;
LineSeg(71).Vbase=4.16/sqrt(3);
LineSeg(71).Z_pu = config{9}.Z*ft2mile(LineSeg(71).Length)...
			 *S_base/(LineSeg(71).Vbase^2);
LineSeg(71).Y_pu = zeros(3,3);
LineSeg(71).Y_pu(1,1) = inv(LineSeg(71).Z_pu(1,1));
LineSeg(71).B_pu = config{9}.B*ft2mile(LineSeg(71).Length)...
			 *S_base/(LineSeg(71).Vbase^2);
%% line segment 72 %%
LineSeg(72).Length=275;
LineSeg(72).node1=73;
LineSeg(72).node2=74;
LineSeg(72).phase=[0,0,1];
LineSeg(72).np=1;
LineSeg(72).Vbase=4.16/sqrt(3);
LineSeg(72).Z_pu = config{11}.Z*ft2mile(LineSeg(72).Length)...
			 *S_base/(LineSeg(72).Vbase^2);
LineSeg(72).Y_pu = zeros(3,3);
LineSeg(72).Y_pu(3,3) = inv(LineSeg(72).Z_pu(3,3));
LineSeg(72).B_pu = config{11}.B*ft2mile(LineSeg(72).Length)...
			 *S_base/(LineSeg(72).Vbase^2);
%% line segment 73 %%
LineSeg(73).Length=200;
LineSeg(73).node1=73;
LineSeg(73).node2=77;
LineSeg(73).phase=[1,1,1];
LineSeg(73).np=3;
LineSeg(73).Vbase=4.16/sqrt(3);
LineSeg(73).Z_pu = config{3}.Z*ft2mile(LineSeg(73).Length)...
			 *S_base/(LineSeg(73).Vbase^2);
LineSeg(73).Y_pu = inv(LineSeg(73).Z_pu);
LineSeg(73).B_pu = config{3}.B*ft2mile(LineSeg(73).Length)...
			 *S_base/(LineSeg(73).Vbase^2);
%% line segment 74 %%
LineSeg(74).Length=350;
LineSeg(74).node1=74;
LineSeg(74).node2=75;
LineSeg(74).phase=[0,0,1];
LineSeg(74).np=1;
LineSeg(74).Vbase=4.16/sqrt(3);
LineSeg(74).Z_pu = config{11}.Z*ft2mile(LineSeg(74).Length)...
			 *S_base/(LineSeg(74).Vbase^2);
LineSeg(74).Y_pu = zeros(3,3);
LineSeg(74).Y_pu(3,3) = inv(LineSeg(74).Z_pu(3,3));
LineSeg(74).B_pu = config{11}.B*ft2mile(LineSeg(74).Length)...
			 *S_base/(LineSeg(74).Vbase^2);
%% line segment 75 %%
LineSeg(75).Length=400;
LineSeg(75).node1=75;
LineSeg(75).node2=76;
LineSeg(75).phase=[0,0,1];
LineSeg(75).np=1;
LineSeg(75).Vbase=4.16/sqrt(3);
LineSeg(75).Z_pu = config{11}.Z*ft2mile(LineSeg(75).Length)...
			 *S_base/(LineSeg(75).Vbase^2);
LineSeg(75).Y_pu = zeros(3,3);
LineSeg(75).Y_pu(3,3) = inv(LineSeg(75).Z_pu(3,3));
LineSeg(75).B_pu = config{11}.B*ft2mile(LineSeg(75).Length)...
			 *S_base/(LineSeg(75).Vbase^2);
%% line segment 76 %%
LineSeg(76).Length=400;
LineSeg(76).node1=77;
LineSeg(76).node2=78;
LineSeg(76).phase=[1,1,1];
LineSeg(76).np=3;
LineSeg(76).Vbase=4.16/sqrt(3);
LineSeg(76).Z_pu = config{6}.Z*ft2mile(LineSeg(76).Length)...
			 *S_base/(LineSeg(76).Vbase^2);
LineSeg(76).Y_pu = inv(LineSeg(76).Z_pu);
LineSeg(76).B_pu = config{6}.B*ft2mile(LineSeg(76).Length)...
			 *S_base/(LineSeg(76).Vbase^2);
%% line segment 77 %%
LineSeg(77).Length=700;
LineSeg(77).node1=77;
LineSeg(77).node2=87;
LineSeg(77).phase=[1,1,1];
LineSeg(77).np=3;
LineSeg(77).Vbase=4.16/sqrt(3);
LineSeg(77).Z_pu = config{3}.Z*ft2mile(LineSeg(77).Length)...
			 *S_base/(LineSeg(77).Vbase^2);
LineSeg(77).Y_pu = inv(LineSeg(77).Z_pu);
LineSeg(77).B_pu = config{3}.B*ft2mile(LineSeg(77).Length)...
			 *S_base/(LineSeg(77).Vbase^2);
%% line segment 78 %%
LineSeg(78).Length=100;
LineSeg(78).node1=78;
LineSeg(78).node2=79;
LineSeg(78).phase=[1,1,1];
LineSeg(78).np=3;
LineSeg(78).Vbase=4.16/sqrt(3);
LineSeg(78).Z_pu = config{6}.Z*ft2mile(LineSeg(78).Length)...
			 *S_base/(LineSeg(78).Vbase^2);
LineSeg(78).Y_pu = inv(LineSeg(78).Z_pu);
LineSeg(78).B_pu = config{6}.B*ft2mile(LineSeg(78).Length)...
			 *S_base/(LineSeg(78).Vbase^2);
%% line segment 79 %%
LineSeg(79).Length=225;
LineSeg(79).node1=79;
LineSeg(79).node2=80;
LineSeg(79).phase=[1,1,1];
LineSeg(79).np=3;
LineSeg(79).Vbase=4.16/sqrt(3);
LineSeg(79).Z_pu = config{6}.Z*ft2mile(LineSeg(79).Length)...
			 *S_base/(LineSeg(79).Vbase^2);
LineSeg(79).Y_pu = inv(LineSeg(79).Z_pu);
LineSeg(79).B_pu = config{6}.B*ft2mile(LineSeg(79).Length)...
			 *S_base/(LineSeg(79).Vbase^2);
%% line segment 80 %%
LineSeg(80).Length=475;
LineSeg(80).node1=79;
LineSeg(80).node2=81;
LineSeg(80).phase=[1,1,1];
LineSeg(80).np=3;
LineSeg(80).Vbase=4.16/sqrt(3);
LineSeg(80).Z_pu = config{6}.Z*ft2mile(LineSeg(80).Length)...
			 *S_base/(LineSeg(80).Vbase^2);
LineSeg(80).Y_pu = inv(LineSeg(80).Z_pu);
LineSeg(80).B_pu = config{6}.B*ft2mile(LineSeg(80).Length)...
			 *S_base/(LineSeg(80).Vbase^2);
%% line segment 81 %%
LineSeg(81).Length=475;
LineSeg(81).node1=81;
LineSeg(81).node2=82;
LineSeg(81).phase=[1,1,1];
LineSeg(81).np=3;
LineSeg(81).Vbase=4.16/sqrt(3);
LineSeg(81).Z_pu = config{6}.Z*ft2mile(LineSeg(81).Length)...
			 *S_base/(LineSeg(81).Vbase^2);
LineSeg(81).Y_pu = inv(LineSeg(81).Z_pu);
LineSeg(81).B_pu = config{6}.B*ft2mile(LineSeg(81).Length)...
			 *S_base/(LineSeg(81).Vbase^2);
%% line segment 82 %%
LineSeg(82).Length=250;
LineSeg(82).node1=82;
LineSeg(82).node2=83;
LineSeg(82).phase=[1,1,1];
LineSeg(82).np=3;
LineSeg(82).Vbase=4.16/sqrt(3);
LineSeg(82).Z_pu = config{6}.Z*ft2mile(LineSeg(82).Length)...
			 *S_base/(LineSeg(82).Vbase^2);
LineSeg(82).Y_pu = inv(LineSeg(82).Z_pu);
LineSeg(82).B_pu = config{6}.B*ft2mile(LineSeg(82).Length)...
			 *S_base/(LineSeg(82).Vbase^2);
%% line segment 83 %%
LineSeg(83).Length=675;
LineSeg(83).node1=82;
LineSeg(83).node2=85;
LineSeg(83).phase=[0,0,1];
LineSeg(83).np=1;
LineSeg(83).Vbase=4.16/sqrt(3);
LineSeg(83).Z_pu = config{11}.Z*ft2mile(LineSeg(83).Length)...
			 *S_base/(LineSeg(83).Vbase^2);
LineSeg(83).Y_pu = zeros(3,3);
LineSeg(83).Y_pu(3,3) = inv(LineSeg(83).Z_pu(3,3));
LineSeg(83).B_pu = config{11}.B*ft2mile(LineSeg(83).Length)...
			 *S_base/(LineSeg(83).Vbase^2);
%% line segment 84 %%
LineSeg(84).Length=250;
LineSeg(84).node1=83;
LineSeg(84).node2=84;
LineSeg(84).phase=[1,1,1];
LineSeg(84).np=3;
LineSeg(84).Vbase=4.16/sqrt(3);
LineSeg(84).Z_pu = config{6}.Z*ft2mile(LineSeg(84).Length)...
			 *S_base/(LineSeg(84).Vbase^2);
LineSeg(84).Y_pu = inv(LineSeg(84).Z_pu);
LineSeg(84).B_pu = config{6}.B*ft2mile(LineSeg(84).Length)...
			 *S_base/(LineSeg(84).Vbase^2);
%% line segment 85 %%
LineSeg(85).Length=475;
LineSeg(85).node1=85;
LineSeg(85).node2=86;
LineSeg(85).phase=[0,0,1];
LineSeg(85).np=1;
LineSeg(85).Vbase=4.16/sqrt(3);
LineSeg(85).Z_pu = config{11}.Z*ft2mile(LineSeg(85).Length)...
			 *S_base/(LineSeg(85).Vbase^2);
LineSeg(85).Y_pu = zeros(3,3);
LineSeg(85).Y_pu(3,3) = inv(LineSeg(85).Z_pu(3,3));
LineSeg(85).B_pu = config{11}.B*ft2mile(LineSeg(85).Length)...
			 *S_base/(LineSeg(85).Vbase^2);
%% line segment 86 %%
LineSeg(86).Length=450;
LineSeg(86).node1=87;
LineSeg(86).node2=88;
LineSeg(86).phase=[1,1,1];
LineSeg(86).np=3;
LineSeg(86).Vbase=4.16/sqrt(3);
LineSeg(86).Z_pu = config{6}.Z*ft2mile(LineSeg(86).Length)...
			 *S_base/(LineSeg(86).Vbase^2);
LineSeg(86).Y_pu = inv(LineSeg(86).Z_pu);
LineSeg(86).B_pu = config{6}.B*ft2mile(LineSeg(86).Length)...
			 *S_base/(LineSeg(86).Vbase^2);
%% line segment 87 %%
LineSeg(87).Length=175;
LineSeg(87).node1=88;
LineSeg(87).node2=89;
LineSeg(87).phase=[1,0,0];
LineSeg(87).np=1;
LineSeg(87).Vbase=4.16/sqrt(3);
LineSeg(87).Z_pu = config{9}.Z*ft2mile(LineSeg(87).Length)...
			 *S_base/(LineSeg(87).Vbase^2);
LineSeg(87).Y_pu = zeros(3,3);
LineSeg(87).Y_pu(1,1) = inv(LineSeg(87).Z_pu(1,1));
LineSeg(87).B_pu = config{9}.B*ft2mile(LineSeg(87).Length)...
			 *S_base/(LineSeg(87).Vbase^2);
%% line segment 88 %%
LineSeg(88).Length=275;
LineSeg(88).node1=88;
LineSeg(88).node2=90;
LineSeg(88).phase=[1,1,1];
LineSeg(88).np=3;
LineSeg(88).Vbase=4.16/sqrt(3);
LineSeg(88).Z_pu = config{6}.Z*ft2mile(LineSeg(88).Length)...
			 *S_base/(LineSeg(88).Vbase^2);
LineSeg(88).Y_pu = inv(LineSeg(88).Z_pu);
LineSeg(88).B_pu = config{6}.B*ft2mile(LineSeg(88).Length)...
			 *S_base/(LineSeg(88).Vbase^2);
%% line segment 89 %%
LineSeg(89).Length=225;
LineSeg(89).node1=90;
LineSeg(89).node2=91;
LineSeg(89).phase=[0,1,0];
LineSeg(89).np=1;
LineSeg(89).Vbase=4.16/sqrt(3);
LineSeg(89).Z_pu = config{10}.Z*ft2mile(LineSeg(89).Length)...
			 *S_base/(LineSeg(89).Vbase^2);
LineSeg(89).Y_pu = zeros(3,3);
LineSeg(89).Y_pu(2,2) = inv(LineSeg(89).Z_pu(2,2));
LineSeg(89).B_pu = config{10}.B*ft2mile(LineSeg(89).Length)...
			 *S_base/(LineSeg(89).Vbase^2);
%% line segment 90 %%
LineSeg(90).Length=225;
LineSeg(90).node1=90;
LineSeg(90).node2=92;
LineSeg(90).phase=[1,1,1];
LineSeg(90).np=3;
LineSeg(90).Vbase=4.16/sqrt(3);
LineSeg(90).Z_pu = config{6}.Z*ft2mile(LineSeg(90).Length)...
			 *S_base/(LineSeg(90).Vbase^2);
LineSeg(90).Y_pu = inv(LineSeg(90).Z_pu);
LineSeg(90).B_pu = config{6}.B*ft2mile(LineSeg(90).Length)...
			 *S_base/(LineSeg(90).Vbase^2);
%% line segment 91 %%
LineSeg(91).Length=300;
LineSeg(91).node1=92;
LineSeg(91).node2=93;
LineSeg(91).phase=[0,0,1];
LineSeg(91).np=1;
LineSeg(91).Vbase=4.16/sqrt(3);
LineSeg(91).Z_pu = config{11}.Z*ft2mile(LineSeg(91).Length)...
			 *S_base/(LineSeg(91).Vbase^2);
LineSeg(91).Y_pu = zeros(3,3);
LineSeg(91).Y_pu(3,3) = inv(LineSeg(91).Z_pu(3,3));
LineSeg(91).B_pu = config{11}.B*ft2mile(LineSeg(91).Length)...
			 *S_base/(LineSeg(91).Vbase^2);
%% line segment 92 %%
LineSeg(92).Length=225;
LineSeg(92).node1=92;
LineSeg(92).node2=94;
LineSeg(92).phase=[1,1,1];
LineSeg(92).np=3;
LineSeg(92).Vbase=4.16/sqrt(3);
LineSeg(92).Z_pu = config{6}.Z*ft2mile(LineSeg(92).Length)...
			 *S_base/(LineSeg(92).Vbase^2);
LineSeg(92).Y_pu = inv(LineSeg(92).Z_pu);
LineSeg(92).B_pu = config{6}.B*ft2mile(LineSeg(92).Length)...
			 *S_base/(LineSeg(92).Vbase^2);
%% line segment 93 %%
LineSeg(93).Length=275;
LineSeg(93).node1=94;
LineSeg(93).node2=95;
LineSeg(93).phase=[1,0,0];
LineSeg(93).np=1;
LineSeg(93).Vbase=4.16/sqrt(3);
LineSeg(93).Z_pu = config{9}.Z*ft2mile(LineSeg(93).Length)...
			 *S_base/(LineSeg(93).Vbase^2);
LineSeg(93).Y_pu = zeros(3,3);
LineSeg(93).Y_pu(1,1) = inv(LineSeg(93).Z_pu(1,1));
LineSeg(93).B_pu = config{9}.B*ft2mile(LineSeg(93).Length)...
			 *S_base/(LineSeg(93).Vbase^2);
%% line segment 94 %%
LineSeg(94).Length=300;
LineSeg(94).node1=94;
LineSeg(94).node2=96;
LineSeg(94).phase=[1,1,1];
LineSeg(94).np=3;
LineSeg(94).Vbase=4.16/sqrt(3);
LineSeg(94).Z_pu = config{6}.Z*ft2mile(LineSeg(94).Length)...
			 *S_base/(LineSeg(94).Vbase^2);
LineSeg(94).Y_pu = inv(LineSeg(94).Z_pu);
LineSeg(94).B_pu = config{6}.B*ft2mile(LineSeg(94).Length)...
			 *S_base/(LineSeg(94).Vbase^2);
%% line segment 95 %%
LineSeg(95).Length=200;
LineSeg(95).node1=96;
LineSeg(95).node2=97;
LineSeg(95).phase=[0,1,0];
LineSeg(95).np=1;
LineSeg(95).Vbase=4.16/sqrt(3);
LineSeg(95).Z_pu = config{10}.Z*ft2mile(LineSeg(95).Length)...
			 *S_base/(LineSeg(95).Vbase^2);
LineSeg(95).Y_pu = zeros(3,3);
LineSeg(95).Y_pu(2,2) = inv(LineSeg(95).Z_pu(2,2));
LineSeg(95).B_pu = config{10}.B*ft2mile(LineSeg(95).Length)...
			 *S_base/(LineSeg(95).Vbase^2);
%% line segment 96 %%
LineSeg(96).Length=275;
LineSeg(96).node1=98;
LineSeg(96).node2=99;
LineSeg(96).phase=[1,1,1];
LineSeg(96).np=3;
LineSeg(96).Vbase=4.16/sqrt(3);
LineSeg(96).Z_pu = config{3}.Z*ft2mile(LineSeg(96).Length)...
			 *S_base/(LineSeg(96).Vbase^2);
LineSeg(96).Y_pu = inv(LineSeg(96).Z_pu);
LineSeg(96).B_pu = config{3}.B*ft2mile(LineSeg(96).Length)...
			 *S_base/(LineSeg(96).Vbase^2);
%% line segment 97 %%
LineSeg(97).Length=550;
LineSeg(97).node1=99;
LineSeg(97).node2=100;
LineSeg(97).phase=[1,1,1];
LineSeg(97).np=3;
LineSeg(97).Vbase=4.16/sqrt(3);
LineSeg(97).Z_pu = config{3}.Z*ft2mile(LineSeg(97).Length)...
			 *S_base/(LineSeg(97).Vbase^2);
LineSeg(97).Y_pu = inv(LineSeg(97).Z_pu);
LineSeg(97).B_pu = config{3}.B*ft2mile(LineSeg(97).Length)...
			 *S_base/(LineSeg(97).Vbase^2);
%% line segment 98 %%
LineSeg(98).Length=300;
LineSeg(98).node1=100;
LineSeg(98).node2=101;
LineSeg(98).phase=[1,1,1];
LineSeg(98).np=3;
LineSeg(98).Vbase=4.16/sqrt(3);
LineSeg(98).Z_pu = config{3}.Z*ft2mile(LineSeg(98).Length)...
			 *S_base/(LineSeg(98).Vbase^2);
LineSeg(98).Y_pu = inv(LineSeg(98).Z_pu);
LineSeg(98).B_pu = config{3}.B*ft2mile(LineSeg(98).Length)...
			 *S_base/(LineSeg(98).Vbase^2);
%% line segment 99 %%
LineSeg(99).Length=800;
LineSeg(99).node1=101;
LineSeg(99).node2=120; %%% 450
LineSeg(99).phase=[1,1,1];
LineSeg(99).np=3;
LineSeg(99).Vbase=4.16/sqrt(3);
LineSeg(99).Z_pu = config{3}.Z*ft2mile(LineSeg(99).Length)...
			 *S_base/(LineSeg(99).Vbase^2);
LineSeg(99).Y_pu = inv(LineSeg(99).Z_pu);
LineSeg(99).B_pu = config{3}.B*ft2mile(LineSeg(99).Length)...
			 *S_base/(LineSeg(99).Vbase^2);
%% line segment 100 %%
LineSeg(100).Length=225;
LineSeg(100).node1=102;
LineSeg(100).node2=103;
LineSeg(100).phase=[0,0,1];
LineSeg(100).np=1;
LineSeg(100).Vbase=4.16/sqrt(3);
LineSeg(100).Z_pu = config{11}.Z*ft2mile(LineSeg(100).Length)...
			 *S_base/(LineSeg(100).Vbase^2);
LineSeg(100).Y_pu = zeros(3,3);
LineSeg(100).Y_pu(3,3) = inv(LineSeg(100).Z_pu(3,3));
LineSeg(100).B_pu = config{11}.B*ft2mile(LineSeg(100).Length)...
			 *S_base/(LineSeg(100).Vbase^2);
%% line segment 101 %%
LineSeg(101).Length=275;
LineSeg(101).node1=102;
LineSeg(101).node2=106;
LineSeg(101).phase=[1,1,1];
LineSeg(101).np=3;
LineSeg(101).Vbase=4.16/sqrt(3);
LineSeg(101).Z_pu = config{3}.Z*ft2mile(LineSeg(101).Length)...
			 *S_base/(LineSeg(101).Vbase^2);
LineSeg(101).Y_pu = inv(LineSeg(101).Z_pu);
LineSeg(101).B_pu = config{3}.B*ft2mile(LineSeg(101).Length)...
			 *S_base/(LineSeg(101).Vbase^2);
%% line segment 102 %%
LineSeg(102).Length=325;
LineSeg(102).node1=103;
LineSeg(102).node2=104;
LineSeg(102).phase=[0,0,1];
LineSeg(102).np=1;
LineSeg(102).Vbase=4.16/sqrt(3);
LineSeg(102).Z_pu = config{11}.Z*ft2mile(LineSeg(102).Length)...
			 *S_base/(LineSeg(102).Vbase^2);
LineSeg(102).Y_pu = zeros(3,3);
LineSeg(102).Y_pu(3,3) = inv(LineSeg(102).Z_pu(3,3));
LineSeg(102).B_pu = config{11}.B*ft2mile(LineSeg(102).Length)...
			 *S_base/(LineSeg(102).Vbase^2);
%% line segment 103 %%
LineSeg(103).Length=700;
LineSeg(103).node1=104;
LineSeg(103).node2=105;
LineSeg(103).phase=[0,0,1];
LineSeg(103).np=1;
LineSeg(103).Vbase=4.16/sqrt(3);
LineSeg(103).Z_pu = config{11}.Z*ft2mile(LineSeg(103).Length)...
			 *S_base/(LineSeg(103).Vbase^2);
LineSeg(103).Y_pu = zeros(3,3);
LineSeg(103).Y_pu(3,3) = inv(LineSeg(103).Z_pu(3,3));
LineSeg(103).B_pu = config{11}.B*ft2mile(LineSeg(103).Length)...
			 *S_base/(LineSeg(103).Vbase^2);
%% line segment 104 %%
LineSeg(104).Length=225;
LineSeg(104).node1=106;
LineSeg(104).node2=107;
LineSeg(104).phase=[0,1,0];
LineSeg(104).np=1;
LineSeg(104).Vbase=4.16/sqrt(3);
LineSeg(104).Z_pu = config{10}.Z*ft2mile(LineSeg(104).Length)...
			 *S_base/(LineSeg(104).Vbase^2);
LineSeg(104).Y_pu = zeros(3,3);
LineSeg(104).Y_pu(2,2) = inv(LineSeg(104).Z_pu(2,2));
LineSeg(104).B_pu = config{10}.B*ft2mile(LineSeg(104).Length)...
			 *S_base/(LineSeg(104).Vbase^2);
%% line segment 105 %%
LineSeg(105).Length=325;
LineSeg(105).node1=106;
LineSeg(105).node2=109;
LineSeg(105).phase=[1,1,1];
LineSeg(105).np=3;
LineSeg(105).Vbase=4.16/sqrt(3);
LineSeg(105).Z_pu = config{3}.Z*ft2mile(LineSeg(105).Length)...
			 *S_base/(LineSeg(105).Vbase^2);
LineSeg(105).Y_pu = inv(LineSeg(105).Z_pu);
LineSeg(105).B_pu = config{3}.B*ft2mile(LineSeg(105).Length)...
			 *S_base/(LineSeg(105).Vbase^2);
%% line segment 106 %%
LineSeg(106).Length=575;
LineSeg(106).node1=107;
LineSeg(106).node2=108;
LineSeg(106).phase=[0,1,0];
LineSeg(106).np=1;
LineSeg(106).Vbase=4.16/sqrt(3);
LineSeg(106).Z_pu = config{10}.Z*ft2mile(LineSeg(106).Length)...
			 *S_base/(LineSeg(106).Vbase^2);
LineSeg(106).Y_pu = zeros(3,3);
LineSeg(106).Y_pu(2,2) = inv(LineSeg(106).Z_pu(2,2));
LineSeg(106).B_pu = config{10}.B*ft2mile(LineSeg(106).Length)...
			 *S_base/(LineSeg(106).Vbase^2);
%% line segment 107 %%
LineSeg(107).Length=450;
LineSeg(107).node1=109;
LineSeg(107).node2=110;
LineSeg(107).phase=[1,0,0];
LineSeg(107).np=1;
LineSeg(107).Vbase=4.16/sqrt(3);
LineSeg(107).Z_pu = config{9}.Z*ft2mile(LineSeg(107).Length)...
			 *S_base/(LineSeg(107).Vbase^2);
LineSeg(107).Y_pu = zeros(3,3);
LineSeg(107).Y_pu(1,1) = inv(LineSeg(107).Z_pu(1,1));
LineSeg(107).B_pu = config{9}.B*ft2mile(LineSeg(107).Length)...
			 *S_base/(LineSeg(107).Vbase^2);
%% line segment 108 %%
LineSeg(108).Length=1000;
LineSeg(108).node1=109;
LineSeg(108).node2=119; %%% 300
LineSeg(108).phase=[1,1,1];
LineSeg(108).np=3;
LineSeg(108).Vbase=4.16/sqrt(3);
LineSeg(108).Z_pu = config{3}.Z*ft2mile(LineSeg(108).Length)...
			 *S_base/(LineSeg(108).Vbase^2);
LineSeg(108).Y_pu = inv(LineSeg(108).Z_pu);
LineSeg(108).B_pu = config{3}.B*ft2mile(LineSeg(108).Length)...
			 *S_base/(LineSeg(108).Vbase^2);
%% line segment 109 %%
LineSeg(109).Length=300;
LineSeg(109).node1=110;
LineSeg(109).node2=111;
LineSeg(109).phase=[1,0,0];
LineSeg(109).np=1;
LineSeg(109).Vbase=4.16/sqrt(3);
LineSeg(109).Z_pu = config{9}.Z*ft2mile(LineSeg(109).Length)...
			 *S_base/(LineSeg(109).Vbase^2);
LineSeg(109).Y_pu = zeros(3,3);
LineSeg(109).Y_pu(1,1) = inv(LineSeg(109).Z_pu(1,1));
LineSeg(109).B_pu = config{9}.B*ft2mile(LineSeg(109).Length)...
			 *S_base/(LineSeg(109).Vbase^2);
%% line segment 110 %%
LineSeg(110).Length=575;
LineSeg(110).node1=111;
LineSeg(110).node2=112;
LineSeg(110).phase=[1,0,0];
LineSeg(110).np=1;
LineSeg(110).Vbase=4.16/sqrt(3);
LineSeg(110).Z_pu = config{9}.Z*ft2mile(LineSeg(110).Length)...
			 *S_base/(LineSeg(110).Vbase^2);
LineSeg(110).Y_pu = zeros(3,3);
LineSeg(110).Y_pu(1,1) = inv(LineSeg(110).Z_pu(1,1));
LineSeg(110).B_pu = config{9}.B*ft2mile(LineSeg(110).Length)...
			 *S_base/(LineSeg(110).Vbase^2);
%% line segment 111 %%
LineSeg(111).Length=125;
LineSeg(111).node1=111;
LineSeg(111).node2=113;
LineSeg(111).phase=[1,0,0];
LineSeg(111).np=1;
LineSeg(111).Vbase=4.16/sqrt(3);
LineSeg(111).Z_pu = config{9}.Z*ft2mile(LineSeg(111).Length)...
			 *S_base/(LineSeg(111).Vbase^2);
LineSeg(111).Y_pu = zeros(3,3);
LineSeg(111).Y_pu(1,1) = inv(LineSeg(111).Z_pu(1,1));
LineSeg(111).B_pu = config{9}.B*ft2mile(LineSeg(111).Length)...
			 *S_base/(LineSeg(111).Vbase^2);
%% line segment 112 %%
LineSeg(112).Length=525;
LineSeg(112).node1=113;
LineSeg(112).node2=114;
LineSeg(112).phase=[1,0,0];
LineSeg(112).np=1;
LineSeg(112).Vbase=4.16/sqrt(3);
LineSeg(112).Z_pu = config{9}.Z*ft2mile(LineSeg(112).Length)...
			 *S_base/(LineSeg(112).Vbase^2);
LineSeg(112).Y_pu = zeros(3,3);
LineSeg(112).Y_pu(1,1) = inv(LineSeg(112).Z_pu(1,1));
LineSeg(112).B_pu = config{9}.B*ft2mile(LineSeg(112).Length)...
			 *S_base/(LineSeg(112).Vbase^2);
%% line segment 113 %%
LineSeg(113).Length=325;
LineSeg(113).node1=114;
LineSeg(113).node2=115;
LineSeg(113).phase=[1,0,0];
LineSeg(113).np=1;
LineSeg(113).Vbase=4.16/sqrt(3);
LineSeg(113).Z_pu = config{9}.Z*ft2mile(LineSeg(113).Length)...
			 *S_base/(LineSeg(113).Vbase^2);
LineSeg(113).Y_pu = zeros(3,3);
LineSeg(113).Y_pu(1,1) = inv(LineSeg(113).Z_pu(1,1));
LineSeg(113).B_pu = config{9}.B*ft2mile(LineSeg(113).Length)...
			 *S_base/(LineSeg(113).Vbase^2);
%% line segment 114 %%
LineSeg(114).Length=375;
LineSeg(114).node1=19; %%% 135
LineSeg(114).node2=36;
LineSeg(114).phase=[1,1,1];
LineSeg(114).np=3;
LineSeg(114).Vbase=4.16/sqrt(3);
LineSeg(114).Z_pu = config{4}.Z*ft2mile(LineSeg(114).Length)...
			 *S_base/(LineSeg(114).Vbase^2);
LineSeg(114).Y_pu = inv(LineSeg(114).Z_pu);
LineSeg(114).B_pu = config{4}.B*ft2mile(LineSeg(114).Length)...
			 *S_base/(LineSeg(114).Vbase^2);
%% line segment 115 %%
LineSeg(115).Length=400;
LineSeg(115).node1=1; %%% 149
LineSeg(115).node2=2;
LineSeg(115).phase=[1,1,1];
LineSeg(115).np=3;
LineSeg(115).Vbase=4.16/sqrt(3);
LineSeg(115).Z_pu = config{1}.Z*ft2mile(LineSeg(115).Length)...
			 *S_base/(LineSeg(115).Vbase^2);
LineSeg(115).Y_pu = inv(LineSeg(115).Z_pu);
LineSeg(115).B_pu = config{1}.B*ft2mile(LineSeg(115).Length)...
			 *S_base/(LineSeg(115).Vbase^2);
%% line segment 116 %%
LineSeg(116).Length=400;
LineSeg(116).node1=14; %%% 152
LineSeg(116).node2=53;
LineSeg(116).phase=[1,1,1];
LineSeg(116).np=3;
LineSeg(116).Vbase=4.16/sqrt(3);
LineSeg(116).Z_pu = config{1}.Z*ft2mile(LineSeg(116).Length)...
			 *S_base/(LineSeg(116).Vbase^2);
LineSeg(116).Y_pu = inv(LineSeg(116).Z_pu);
LineSeg(116).B_pu = config{1}.B*ft2mile(LineSeg(116).Length)...
			 *S_base/(LineSeg(116).Vbase^2);
%% line segment 117 %%
LineSeg(117).Length=350;
LineSeg(117).node1=61; %%% 160
LineSeg(117).node2=68;
LineSeg(117).phase=[1,1,1];
LineSeg(117).np=3;
LineSeg(117).Vbase=4.16/sqrt(3);
LineSeg(117).Z_pu = config{6}.Z*ft2mile(LineSeg(117).Length)...
			 *S_base/(LineSeg(117).Vbase^2);
LineSeg(117).Y_pu = inv(LineSeg(117).Z_pu);
LineSeg(117).B_pu = config{6}.B*ft2mile(LineSeg(117).Length)...
			 *S_base/(LineSeg(117).Vbase^2);
%% line segment 118 %%
LineSeg(118).Length=250;
LineSeg(118).node1=98; %%% 197
LineSeg(118).node2=102;
LineSeg(118).phase=[1,1,1];
LineSeg(118).np=3;
LineSeg(118).Vbase=4.16/sqrt(3);
LineSeg(118).Z_pu = config{3}.Z*ft2mile(LineSeg(118).Length)...
			 *S_base/(LineSeg(118).Vbase^2);
LineSeg(118).Y_pu = inv(LineSeg(118).Z_pu);
LineSeg(118).B_pu = config{3}.B*ft2mile(LineSeg(118).Length)...
			 *S_base/(LineSeg(118).Vbase^2);
%% line segment 119 %%
LineSeg(119).Length=0;
LineSeg(119).node1=62;
LineSeg(119).node2=118;
LineSeg(119).phase=[1,1,1];
LineSeg(119).np=3;
LineSeg(119).Vbase=4.16/sqrt(3);
LineSeg(119).Z_pu = Ztf*S_base/(LineSeg(118).Vbase^2);
LineSeg(119).Y_pu = inv(LineSeg(118).Z_pu);
LineSeg(119 ).B_pu = 0;
%%
N_LineSeg = size(LineSeg,2);      
%%
%%%%%%%%%%%%%%adimittance matrix%%%%%%%%%%%%%%%%%%%%%
Y=zeros(3*N_node,3*N_node);

for i=1:N_node
    for j=1:N_node
        if (j==i)
            Y_temp=0;
            for k=1:N_LineSeg
                if(LineSeg(k).node1==i)||(LineSeg(k).node2==i)
                    Y_temp=Y_temp+LineSeg(k).Y_pu + 0.5i*LineSeg(k).B_pu;
                end
            end
            Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
        else
            Y_temp=0;
            for k=1:N_LineSeg
                if((LineSeg(k).node1==i)&&(LineSeg(k).node2==j)) ||...
                  ((LineSeg(k).node2==i)&&(LineSeg(k).node1==j))     
                    Y_temp=Y_temp-LineSeg(k).Y_pu;
                end
            end
            Y(3*(i-1)+1:3*i,3*(j-1)+1:3*j)=Y_temp;%deal(Y_temp);
        end
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N_of_phases=0;
index_count=0;
for i=1:N_node
    node(i).index=zeros(3,1);
    
    if node(i).np==3
        for j=1:3
           index_count=index_count+1;
           node(i).index(j)=index_count;
        end
    end
    
    if node(i).np==2
    for j=1:3
            if node(i).phase(j)==1
                index_count=index_count+1;
                node(i).index(j)=index_count;  
            else
                if j==1
                index_count=index_count+1;    
                node(i).index(j)=index_count;
                index_count=index_count-1; 
                else
                node(i).index(j)=index_count;    
                end
            end
    end
    end
    
    
    if node(i).np==1
    index_count=index_count+1;
    node(i).index=ones(3,1)*index_count;
    end
    
    N_of_phases=N_of_phases+node(i).np;
end

G_of_phases=0;
for i=1:N_node
    if node(i).g==1
    G_of_phases=G_of_phases+node(i).np;
    end
end

L_of_phases=0;
for i=1:N_LineSeg
    L_of_phases=L_of_phases+LineSeg(i).np;
end


%%%%%%%%%%eliminate nonexisting phases%%%%%%%%%%%
eli_count=0;
for i=1:N_node
    for j=1:3
    if node(i).phase(j)==0
        Y(3*(i-1)+j-eli_count,:)=[];
        Y(:,3*(i-1)+j-eli_count)=[];
        eli_count=eli_count+1;
    end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%