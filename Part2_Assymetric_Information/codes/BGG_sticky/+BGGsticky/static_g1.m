function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = BGGsticky.static_g1_tt(T, y, x, params);
end
g1 = zeros(143, 143);
g1(1,1)=(-(T(35)-params(3)*params(2)*T(35)));
g1(1,2)=1;
g1(2,3)=1;
g1(3,3)=y(5);
g1(3,5)=y(3);
g1(4,2)=y(36)*y(37)*(1-params(1));
g1(4,4)=(-(params(4)*T(3)+y(4)*params(4)*getPowerDeriv(y(4),params(5),1)));
g1(4,36)=y(2)*y(37)*(1-params(1));
g1(4,37)=y(36)*y(2)*(1-params(1));
g1(5,4)=(-(T(6)*getPowerDeriv(y(4),1-params(1),1)));
g1(5,7)=(-(T(4)*y(10)*getPowerDeriv(y(7),params(1),1)));
g1(5,10)=(-(T(4)*T(5)));
g1(5,36)=1;
g1(6,6)=(-y(32));
g1(6,32)=(-y(6));
g1(6,36)=1;
g1(7,4)=(-((-(y(36)*y(37)*(1-params(1))))/(y(4)*y(4))));
g1(7,8)=1;
g1(7,36)=(-(y(37)*(1-params(1))/y(4)));
g1(7,37)=(-((1-params(1))*y(36)/y(4)));
g1(8,7)=(-((-(y(37)*params(1)*y(36)))/(y(7)*y(7))));
g1(8,9)=1;
g1(8,36)=(-(y(37)*params(1)/y(7)));
g1(8,37)=(-(params(1)*y(36)/y(7)));
g1(9,7)=1-(1-params(6));
g1(9,21)=(-(1-y(85)));
g1(9,85)=y(21);
g1(10,87)=1;
g1(11,85)=1;
g1(11,87)=(-(params(10)*2*(y(87)-1)));
g1(12,86)=1;
g1(12,87)=(-(2*params(10)));
g1(13,3)=T(7)*y(86)*y(22);
g1(13,22)=1-y(85)-y(87)*y(86)+T(7)*y(3)*y(86);
g1(13,85)=(-y(22));
g1(13,86)=y(22)*(-y(87))+y(3)*y(22)*T(7);
g1(13,87)=y(22)*(-y(86))+y(86)*y(3)*y(22)*2*y(87);
g1(14,9)=(-(1/y(22)));
g1(14,11)=1;
g1(14,22)=(-(((1-params(6))*y(22)-(y(9)+(1-params(6))*y(22)))/(y(22)*y(22))));
g1(15,7)=y(22);
g1(15,13)=T(1);
g1(15,15)=T(1);
g1(15,22)=y(7);
g1(16,7)=(-(y(22)*y(11)*(y(38)+params(7))*(1-y(82))));
g1(16,11)=(-(y(7)*y(22)*(y(38)+params(7))*(1-y(82))));
g1(16,13)=1;
g1(16,22)=(-(y(7)*y(11)*(y(38)+params(7))*(1-y(82))));
g1(16,38)=(-(y(7)*y(22)*y(11)*(1-y(82))));
g1(16,82)=(-(y(7)*y(22)*y(11)*(-(y(38)+params(7)))));
g1(17,7)=(-(y(22)*y(11)*(1-y(82))*(1-params(7))*(1-y(38))));
g1(17,11)=(-(y(7)*y(22)*(1-y(82))*(1-params(7))*(1-y(38))));
g1(17,16)=1;
g1(17,22)=(-(y(7)*y(11)*(1-y(82))*(1-params(7))*(1-y(38))));
g1(17,38)=(-(y(7)*y(22)*y(11)*(1-y(82))*(-(1-params(7)))));
g1(17,82)=(-(y(7)*y(22)*y(11)*(-((1-params(7))*(1-y(38))))));
g1(18,7)=(-y(22));
g1(18,13)=y(14);
g1(18,14)=y(13);
g1(18,22)=(-y(7));
g1(19,5)=(-(y(14)-1));
g1(19,11)=y(14)*(y(82)-y(40)*y(81));
g1(19,14)=y(11)*(y(82)-y(40)*y(81))-y(5);
g1(19,40)=y(11)*y(14)*(-y(81));
g1(19,81)=y(11)*y(14)*(-y(40));
g1(19,82)=y(11)*y(14);
g1(20,7)=(-((y(7)*y(22)*y(11)*y(30)*y(22)*y(12)-y(12)*(y(7)*y(22)-y(13))*y(22)*y(11)*y(30))/(y(7)*y(22)*y(11)*y(30)*y(7)*y(22)*y(11)*y(30))));
g1(20,11)=(-((-(y(12)*(y(7)*y(22)-y(13))*y(7)*y(22)*y(30)))/(y(7)*y(22)*y(11)*y(30)*y(7)*y(22)*y(11)*y(30))));
g1(20,12)=(-((y(7)*y(22)-y(13))/(y(7)*y(22)*y(11)*y(30))));
g1(20,13)=(-((-y(12))/(y(7)*y(22)*y(11)*y(30))));
g1(20,19)=1;
g1(20,22)=(-((y(7)*y(22)*y(11)*y(30)*y(7)*y(12)-y(12)*(y(7)*y(22)-y(13))*y(7)*y(11)*y(30))/(y(7)*y(22)*y(11)*y(30)*y(7)*y(22)*y(11)*y(30))));
g1(20,30)=(-((-(y(12)*(y(7)*y(22)-y(13))*y(7)*y(22)*y(11)))/(y(7)*y(22)*y(11)*y(30)*y(7)*y(22)*y(11)*y(30))));
g1(21,17)=1;
g1(21,40)=(-((-(y(83)*(y(83)*(-y(81))+(1-y(82))*(-y(84)))))/T(45)));
g1(21,81)=(-((-(y(83)*y(83)*(-y(40))))/T(45)));
g1(21,82)=(-((-(y(83)*(y(83)-(y(83)-y(40)*y(84)))))/T(45)));
g1(21,83)=(-(((y(82)-y(40)*y(81))*y(83)+(1-y(82))*(y(83)-y(40)*y(84))-y(83)*(1-y(82)+y(82)-y(40)*y(81)))/T(45)));
g1(21,84)=(-((-(y(83)*(1-y(82))*(-y(40))))/T(45)));
g1(22,5)=(-y(17));
g1(22,17)=(-y(5));
g1(22,18)=1;
g1(23,11)=1;
g1(23,18)=T(1);
g1(24,19)=(-T(36));
g1(24,39)=(-(T(38)+T(37)*(-0.5)*2*y(39)));
g1(24,80)=1;
g1(25,19)=(-(1/y(19)))/y(39)*T(39);
g1(25,39)=T(39)*(y(39)*0.5*2*y(39)-(0.5*T(8)-log(y(19))))/(y(39)*y(39));
g1(25,81)=1;
g1(26,19)=(-(1-y(80)));
g1(26,80)=y(19);
g1(26,81)=T(1);
g1(26,82)=1;
g1(27,80)=1;
g1(27,83)=1;
g1(28,19)=(-(T(12)*(-(y(39)*2.506628274631))/(y(19)*y(39)*2.506628274631*y(19)*y(39)*2.506628274631)+1/(y(19)*y(39)*2.506628274631)*T(12)*(-(1/y(19)*2*(log(y(19))+T(8)*.5)))/(2*T(8))));
g1(28,39)=(-(T(12)*(-(y(19)*2.506628274631))/(y(19)*y(39)*2.506628274631*y(19)*y(39)*2.506628274631)+1/(y(19)*y(39)*2.506628274631)*T(12)*(2*T(8)*(-(2*(log(y(19))+T(8)*.5)*.5*2*y(39)))-T(11)*2*2*y(39))/(2*T(8)*2*T(8))));
g1(28,84)=1;
g1(29,1)=T(1);
g1(29,6)=1;
g1(29,7)=(-(y(22)*y(11)*y(40)*y(81)));
g1(29,11)=(-(y(7)*y(22)*y(40)*y(81)));
g1(29,16)=T(1);
g1(29,21)=T(1);
g1(29,22)=(-(y(7)*y(11)*y(40)*y(81)));
g1(29,24)=T(1);
g1(29,40)=(-(y(7)*y(22)*y(11)*y(81)));
g1(29,81)=(-(y(7)*y(22)*y(11)*y(40)));
g1(30,24)=1;
g1(30,25)=T(1);
g1(31,6)=(-(y(42)*params(9)));
g1(31,24)=1;
g1(31,42)=(-(params(9)*(y(6))));
g1(32,5)=1;
g1(32,11)=T(1);
g1(32,26)=1;
g1(33,29)=(-((1-params(15))*1/y(30)*T(40)));
g1(33,30)=(-(T(15)*y(32)*params(15)*getPowerDeriv(y(30),(-params(17))*params(14),1)+T(14)*T(41)+(1-params(15))*T(40)*(-y(29))/(y(30)*y(30))));
g1(33,32)=1-T(15)*params(15)*T(13);
g1(34,3)=(-(y(34)*T(16)*params(15)*T(15)));
g1(34,6)=(-y(37));
g1(34,30)=(-(y(34)*(T(16)*y(3)*params(15)*T(41)+T(15)*y(3)*params(15)*getPowerDeriv(y(30),params(17)*(-params(14)),1))));
g1(34,34)=1-T(15)*y(3)*params(15)*T(16);
g1(34,37)=(-y(6));
g1(35,3)=(-(y(33)*T(18)*params(15)*T(17)));
g1(35,6)=T(1);
g1(35,30)=(-(y(33)*(T(18)*y(3)*params(15)*getPowerDeriv(y(30),params(14)-1,1)+y(3)*params(15)*T(17)*T(42))));
g1(35,33)=1-y(3)*params(15)*T(17)*T(18);
g1(36,29)=1;
g1(36,30)=(-T(19));
g1(36,33)=(-(y(30)*(-(y(34)*params(14)/(params(14)-1)))/(y(33)*y(33))));
g1(36,34)=(-(y(30)*params(14)/(params(14)-1)/y(33)));
g1(37,29)=(-((1-params(15))*getPowerDeriv(y(29),1-params(14),1)));
g1(37,30)=getPowerDeriv(y(30),1-params(14),1)-params(15)*T(42);
g1(38,5)=(-y(30));
g1(38,30)=(-y(5));
g1(38,31)=1;
g1(39,6)=(-((1-params(13))*params(11)*((y(6))-y(6))/((y(6))*(y(6)))/T(20)/T(21)));
g1(39,30)=(-((1-params(13))*params(12)*((y(30))-y(30))/((y(30))*(y(30)))/(y(30)/(y(30)))));
g1(39,31)=T(43)-params(13)*T(43);
g1(39,66)=(-((1-params(13))*params(11)*(-(y(6)/(y(6))*((y(66))-y(66))/((y(66))*(y(66)))))/(T(20)*T(20))/T(21)));
g1(40,35)=1;
g1(40,37)=(-(T(1)/(y(37)*y(37))));
g1(44,61)=(-(T(47)-params(3)*params(2)*T(47)));
g1(44,62)=1;
g1(45,63)=1;
g1(46,63)=y(65);
g1(46,65)=y(63);
g1(47,63)=y(69);
g1(47,69)=y(63);
g1(48,62)=(1-params(1))*y(66);
g1(48,64)=(-(params(4)*T(23)+params(4)*y(64)*getPowerDeriv(y(64),params(5),1)));
g1(48,66)=(1-params(1))*y(62);
g1(49,10)=(-(T(24)*T(25)));
g1(49,64)=(-(y(10)*T(25)*getPowerDeriv(y(64),1-params(1),1)));
g1(49,66)=1;
g1(49,67)=(-(T(24)*y(10)*getPowerDeriv(y(67),params(1),1)));
g1(50,66)=(-(params(1)/y(67)));
g1(50,67)=(-((-(params(1)*y(66)))/(y(67)*y(67))));
g1(50,76)=1;
g1(51,69)=1;
g1(51,71)=(-(((1-params(6))*y(71)-(y(76)+(1-params(6))*y(71)))/(y(71)*y(71))));
g1(51,76)=(-(1/y(71)));
g1(52,79)=1;
g1(53,77)=1;
g1(53,79)=(-(params(10)*2*(y(79)-1)));
g1(54,78)=1;
g1(54,79)=(-(2*params(10)));
g1(55,63)=T(26)*y(71)*y(78);
g1(55,71)=1-y(77)-y(79)*y(78)+T(26)*y(63)*y(78);
g1(55,77)=(-y(71));
g1(55,78)=y(71)*(-y(79))+y(63)*y(71)*T(26);
g1(55,79)=y(71)*(-y(78))+y(78)*y(63)*y(71)*2*y(79);
g1(56,64)=(-((-((1-params(1))*y(66)))/(y(64)*y(64))));
g1(56,66)=(-((1-params(1))/y(64)));
g1(56,68)=1;
g1(57,61)=T(1);
g1(57,66)=1;
g1(57,70)=T(1);
g1(57,72)=T(1);
g1(58,67)=1-(1-params(6));
g1(58,70)=T(1);
g1(59,72)=1;
g1(59,73)=T(1);
g1(60,66)=(-params(9));
g1(60,72)=1;
g1(61,75)=1;
g1(62,6)=(-((-y(66))/(y(6)*y(6))));
g1(62,66)=(-(1/y(6)));
g1(62,74)=1;
g1(63,20)=1;
g1(63,80)=T(1);
g1(64,6)=(-(((y(6))-y(6))/((y(6))*(y(6)))));
g1(64,88)=1;
g1(65,7)=(-(((y(7))-y(7))/((y(7))*(y(7)))));
g1(65,100)=1;
g1(66,21)=(-(((y(21))-y(21))/((y(21))*(y(21)))));
g1(66,90)=1;
g1(67,1)=(-(((y(1))-y(1))/((y(1))*(y(1)))));
g1(67,89)=1;
g1(68,8)=(-(((y(8))-y(8))/((y(8))*(y(8)))));
g1(68,91)=1;
g1(69,4)=(-(((y(4))-y(4))/((y(4))*(y(4)))));
g1(69,102)=1;
g1(70,22)=(-(((y(22))-y(22))/((y(22))*(y(22)))));
g1(70,93)=1;
g1(71,5)=(-(((y(5))-y(5))/((y(5))*(y(5)))));
g1(71,92)=1;
g1(72,11)=(-(((y(11))-y(11))/((y(11))*(y(11)))));
g1(72,97)=1;
g1(73,31)=(-(((y(31))-y(31))/((y(31))*(y(31)))));
g1(73,94)=1;
g1(74,30)=(-(((y(30))-y(30))/((y(30))*(y(30)))));
g1(74,95)=1;
g1(75,92)=1;
g1(75,97)=T(1);
g1(75,99)=1;
g1(76,13)=(-(((y(13))-y(13))/((y(13))*(y(13)))));
g1(76,98)=1;
g1(77,17)=(-(((y(17))-y(17))/((y(17))*(y(17)))));
g1(77,101)=1;
g1(78,104)=1;
g1(79,14)=(-(((y(14))-y(14))/((y(14))*(y(14)))));
g1(79,103)=1;
g1(80,74)=(-(((y(74))-y(74))/((y(74))*(y(74)))));
g1(80,96)=1;
g1(81,15)=(-(((y(15))-y(15))/((y(15))*(y(15)))));
g1(81,105)=1;
g1(82,66)=(-(((y(66))-y(66))/((y(66))*(y(66)))));
g1(82,106)=1;
g1(83,67)=(-(((y(67))-y(67))/((y(67))*(y(67)))));
g1(83,115)=1;
g1(84,70)=(-(((y(70))-y(70))/((y(70))*(y(70)))));
g1(84,108)=1;
g1(85,61)=(-(((y(61))-y(61))/((y(61))*(y(61)))));
g1(85,107)=1;
g1(86,68)=(-(((y(68))-y(68))/((y(68))*(y(68)))));
g1(86,109)=1;
g1(87,64)=(-(((y(64))-y(64))/((y(64))*(y(64)))));
g1(87,112)=1;
g1(88,71)=(-(((y(71))-y(71))/((y(71))*(y(71)))));
g1(88,113)=1;
g1(89,65)=(-(((y(65))-y(65))/((y(65))*(y(65)))));
g1(89,110)=1;
g1(90,69)=(-(((y(69))-y(69))/((y(69))*(y(69)))));
g1(90,114)=1;
g1(91,110)=1;
g1(91,111)=1;
g1(91,114)=T(1);
g1(92,10)=1/y(10)-0.75*1/y(10);
g1(93,42)=1/y(42)-0.75*1/y(42);
g1(94,39)=T(44)-params(19)*T(44);
g1(94,41)=T(46)-params(19)*T(46);
g1(94,44)=(-(1/y(44)));
g1(94,45)=(-(1/y(45)));
g1(94,46)=(-(1/y(46)));
g1(94,47)=(-(1/y(47)));
g1(94,48)=(-(1/y(48)));
g1(94,49)=(-(1/y(49)));
g1(94,50)=(-(1/y(50)));
g1(94,51)=(-(1/y(51)));
g1(94,52)=T(1);
g1(95,43)=(-(1/y(43)));
g1(95,52)=1;
g1(96,44)=(-(1/y(44)));
g1(96,53)=1;
g1(97,45)=(-(1/y(45)));
g1(97,54)=1;
g1(98,46)=(-(1/y(46)));
g1(98,55)=1;
g1(99,47)=(-(1/y(47)));
g1(99,56)=1;
g1(100,48)=(-(1/y(48)));
g1(100,57)=1;
g1(101,49)=(-(1/y(49)));
g1(101,58)=1;
g1(102,50)=(-(1/y(50)));
g1(102,59)=1;
g1(103,51)=(-(1/y(51)));
g1(103,60)=1;
g1(104,51)=1/y(51);
g1(105,50)=1/y(50);
g1(106,49)=1/y(49);
g1(107,48)=1/y(48);
g1(108,47)=1/y(47);
g1(109,46)=1/y(46);
g1(110,45)=1/y(45);
g1(111,44)=1/y(44);
g1(112,43)=1/y(43);
g1(113,28)=1;
g1(114,27)=1;
g1(115,23)=1;
g1(116,45)=T(1);
g1(116,116)=1;
g1(117,46)=T(1);
g1(117,117)=1;
g1(118,46)=T(1);
g1(118,118)=1;
g1(119,47)=T(1);
g1(119,119)=1;
g1(120,47)=T(1);
g1(120,120)=1;
g1(121,47)=T(1);
g1(121,121)=1;
g1(122,48)=T(1);
g1(122,122)=1;
g1(123,48)=T(1);
g1(123,123)=1;
g1(124,48)=T(1);
g1(124,124)=1;
g1(125,48)=T(1);
g1(125,125)=1;
g1(126,49)=T(1);
g1(126,126)=1;
g1(127,49)=T(1);
g1(127,127)=1;
g1(128,49)=T(1);
g1(128,128)=1;
g1(129,49)=T(1);
g1(129,129)=1;
g1(130,49)=T(1);
g1(130,130)=1;
g1(131,50)=T(1);
g1(131,131)=1;
g1(132,50)=T(1);
g1(132,132)=1;
g1(133,50)=T(1);
g1(133,133)=1;
g1(134,50)=T(1);
g1(134,134)=1;
g1(135,50)=T(1);
g1(135,135)=1;
g1(136,50)=T(1);
g1(136,136)=1;
g1(137,51)=T(1);
g1(137,137)=1;
g1(138,51)=T(1);
g1(138,138)=1;
g1(139,51)=T(1);
g1(139,139)=1;
g1(140,51)=T(1);
g1(140,140)=1;
g1(141,51)=T(1);
g1(141,141)=1;
g1(142,51)=T(1);
g1(142,142)=1;
g1(143,51)=T(1);
g1(143,143)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end