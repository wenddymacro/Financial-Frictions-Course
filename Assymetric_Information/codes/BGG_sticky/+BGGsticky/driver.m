%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'BGGsticky';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('BGGsticky.log');
M_.exo_names = cell(12,1);
M_.exo_names_tex = cell(12,1);
M_.exo_names_long = cell(12,1);
M_.exo_names(1) = {'e_A'};
M_.exo_names_tex(1) = {'e\_A'};
M_.exo_names_long(1) = {'e_A'};
M_.exo_names(2) = {'epsilonM'};
M_.exo_names_tex(2) = {'epsilonM'};
M_.exo_names_long(2) = {'epsilonM'};
M_.exo_names(3) = {'e_G'};
M_.exo_names_tex(3) = {'e\_G'};
M_.exo_names_long(3) = {'e_G'};
M_.exo_names(4) = {'e_xi1'};
M_.exo_names_tex(4) = {'e\_xi1'};
M_.exo_names_long(4) = {'e_xi1'};
M_.exo_names(5) = {'e_xi2'};
M_.exo_names_tex(5) = {'e\_xi2'};
M_.exo_names_long(5) = {'e_xi2'};
M_.exo_names(6) = {'e_xi3'};
M_.exo_names_tex(6) = {'e\_xi3'};
M_.exo_names_long(6) = {'e_xi3'};
M_.exo_names(7) = {'e_xi4'};
M_.exo_names_tex(7) = {'e\_xi4'};
M_.exo_names_long(7) = {'e_xi4'};
M_.exo_names(8) = {'e_xi5'};
M_.exo_names_tex(8) = {'e\_xi5'};
M_.exo_names_long(8) = {'e_xi5'};
M_.exo_names(9) = {'e_xi6'};
M_.exo_names_tex(9) = {'e\_xi6'};
M_.exo_names_long(9) = {'e_xi6'};
M_.exo_names(10) = {'e_xi7'};
M_.exo_names_tex(10) = {'e\_xi7'};
M_.exo_names_long(10) = {'e_xi7'};
M_.exo_names(11) = {'e_xi8'};
M_.exo_names_tex(11) = {'e\_xi8'};
M_.exo_names_long(11) = {'e_xi8'};
M_.exo_names(12) = {'e_RS'};
M_.exo_names_tex(12) = {'e\_RS'};
M_.exo_names_long(12) = {'e_RS'};
M_.endo_names = cell(143,1);
M_.endo_names_tex = cell(143,1);
M_.endo_names_long = cell(143,1);
M_.endo_names(1) = {'C'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'C'};
M_.endo_names(2) = {'Uc'};
M_.endo_names_tex(2) = {'Uc'};
M_.endo_names_long(2) = {'Uc'};
M_.endo_names(3) = {'Lambda'};
M_.endo_names_tex(3) = {'Lambda'};
M_.endo_names_long(3) = {'Lambda'};
M_.endo_names(4) = {'Lab'};
M_.endo_names_tex(4) = {'Lab'};
M_.endo_names_long(4) = {'Lab'};
M_.endo_names(5) = {'R'};
M_.endo_names_tex(5) = {'R'};
M_.endo_names_long(5) = {'R'};
M_.endo_names(6) = {'Y'};
M_.endo_names_tex(6) = {'Y'};
M_.endo_names_long(6) = {'Y'};
M_.endo_names(7) = {'K'};
M_.endo_names_tex(7) = {'K'};
M_.endo_names_long(7) = {'K'};
M_.endo_names(8) = {'W'};
M_.endo_names_tex(8) = {'W'};
M_.endo_names_long(8) = {'W'};
M_.endo_names(9) = {'Z'};
M_.endo_names_tex(9) = {'Z'};
M_.endo_names_long(9) = {'Z'};
M_.endo_names(10) = {'A'};
M_.endo_names_tex(10) = {'A'};
M_.endo_names_long(10) = {'A'};
M_.endo_names(11) = {'Rk'};
M_.endo_names_tex(11) = {'Rk'};
M_.endo_names_long(11) = {'Rk'};
M_.endo_names(12) = {'Rl'};
M_.endo_names_tex(12) = {'Rl'};
M_.endo_names_long(12) = {'Rl'};
M_.endo_names(13) = {'Ne'};
M_.endo_names_tex(13) = {'Ne'};
M_.endo_names_long(13) = {'Ne'};
M_.endo_names(14) = {'phie'};
M_.endo_names_tex(14) = {'phie'};
M_.endo_names_long(14) = {'phie'};
M_.endo_names(15) = {'Le'};
M_.endo_names_tex(15) = {'Le'};
M_.endo_names_long(15) = {'Le'};
M_.endo_names(16) = {'Ce'};
M_.endo_names_tex(16) = {'Ce'};
M_.endo_names_long(16) = {'Ce'};
M_.endo_names(17) = {'rho'};
M_.endo_names_tex(17) = {'rho'};
M_.endo_names_long(17) = {'rho'};
M_.endo_names(18) = {'rhoRex'};
M_.endo_names_tex(18) = {'rhoRex'};
M_.endo_names_long(18) = {'rhoRex'};
M_.endo_names(19) = {'omega'};
M_.endo_names_tex(19) = {'omega'};
M_.endo_names_long(19) = {'omega'};
M_.endo_names(20) = {'bankrupt'};
M_.endo_names_tex(20) = {'bankrupt'};
M_.endo_names_long(20) = {'bankrupt'};
M_.endo_names(21) = {'I'};
M_.endo_names_tex(21) = {'I'};
M_.endo_names_long(21) = {'I'};
M_.endo_names(22) = {'Q'};
M_.endo_names_tex(22) = {'Q'};
M_.endo_names_long(22) = {'Q'};
M_.endo_names(23) = {'psi'};
M_.endo_names_tex(23) = {'psi'};
M_.endo_names_long(23) = {'psi'};
M_.endo_names(24) = {'G'};
M_.endo_names_tex(24) = {'G'};
M_.endo_names_long(24) = {'G'};
M_.endo_names(25) = {'T'};
M_.endo_names_tex(25) = {'T'};
M_.endo_names_long(25) = {'T'};
M_.endo_names(26) = {'spread'};
M_.endo_names_tex(26) = {'spread'};
M_.endo_names_long(26) = {'spread'};
M_.endo_names(27) = {'sigma_pref'};
M_.endo_names_tex(27) = {'sigma\_pref'};
M_.endo_names_long(27) = {'sigma_pref'};
M_.endo_names(28) = {'zeta'};
M_.endo_names_tex(28) = {'zeta'};
M_.endo_names_long(28) = {'zeta'};
M_.endo_names(29) = {'PIS'};
M_.endo_names_tex(29) = {'PIS'};
M_.endo_names_long(29) = {'PIS'};
M_.endo_names(30) = {'PIP'};
M_.endo_names_tex(30) = {'PIP'};
M_.endo_names_long(30) = {'PIP'};
M_.endo_names(31) = {'Rn'};
M_.endo_names_tex(31) = {'Rn'};
M_.endo_names_long(31) = {'Rn'};
M_.endo_names(32) = {'D'};
M_.endo_names_tex(32) = {'D'};
M_.endo_names_long(32) = {'D'};
M_.endo_names(33) = {'H'};
M_.endo_names_tex(33) = {'H'};
M_.endo_names_long(33) = {'H'};
M_.endo_names(34) = {'F'};
M_.endo_names_tex(34) = {'F'};
M_.endo_names_long(34) = {'F'};
M_.endo_names(35) = {'X'};
M_.endo_names_tex(35) = {'X'};
M_.endo_names_long(35) = {'X'};
M_.endo_names(36) = {'Ym'};
M_.endo_names_tex(36) = {'Ym'};
M_.endo_names_long(36) = {'Ym'};
M_.endo_names(37) = {'Pm'};
M_.endo_names_tex(37) = {'Pm'};
M_.endo_names_long(37) = {'Pm'};
M_.endo_names(38) = {'sigmae'};
M_.endo_names_tex(38) = {'sigmae'};
M_.endo_names_long(38) = {'sigmae'};
M_.endo_names(39) = {'sigma_omega'};
M_.endo_names_tex(39) = {'sigma\_omega'};
M_.endo_names_long(39) = {'sigma_omega'};
M_.endo_names(40) = {'mon'};
M_.endo_names_tex(40) = {'mon'};
M_.endo_names_long(40) = {'mon'};
M_.endo_names(41) = {'sigma_omega_ss'};
M_.endo_names_tex(41) = {'sigma\_omega\_ss'};
M_.endo_names_long(41) = {'sigma_omega_ss'};
M_.endo_names(42) = {'Sg'};
M_.endo_names_tex(42) = {'Sg'};
M_.endo_names_long(42) = {'Sg'};
M_.endo_names(43) = {'xi0'};
M_.endo_names_tex(43) = {'xi0'};
M_.endo_names_long(43) = {'xi0'};
M_.endo_names(44) = {'xi1'};
M_.endo_names_tex(44) = {'xi1'};
M_.endo_names_long(44) = {'xi1'};
M_.endo_names(45) = {'xi2'};
M_.endo_names_tex(45) = {'xi2'};
M_.endo_names_long(45) = {'xi2'};
M_.endo_names(46) = {'xi3'};
M_.endo_names_tex(46) = {'xi3'};
M_.endo_names_long(46) = {'xi3'};
M_.endo_names(47) = {'xi4'};
M_.endo_names_tex(47) = {'xi4'};
M_.endo_names_long(47) = {'xi4'};
M_.endo_names(48) = {'xi5'};
M_.endo_names_tex(48) = {'xi5'};
M_.endo_names_long(48) = {'xi5'};
M_.endo_names(49) = {'xi6'};
M_.endo_names_tex(49) = {'xi6'};
M_.endo_names_long(49) = {'xi6'};
M_.endo_names(50) = {'xi7'};
M_.endo_names_tex(50) = {'xi7'};
M_.endo_names_long(50) = {'xi7'};
M_.endo_names(51) = {'xi8'};
M_.endo_names_tex(51) = {'xi8'};
M_.endo_names_long(51) = {'xi8'};
M_.endo_names(52) = {'log_xi0'};
M_.endo_names_tex(52) = {'log\_xi0'};
M_.endo_names_long(52) = {'log_xi0'};
M_.endo_names(53) = {'log_xi1'};
M_.endo_names_tex(53) = {'log\_xi1'};
M_.endo_names_long(53) = {'log_xi1'};
M_.endo_names(54) = {'log_xi2'};
M_.endo_names_tex(54) = {'log\_xi2'};
M_.endo_names_long(54) = {'log_xi2'};
M_.endo_names(55) = {'log_xi3'};
M_.endo_names_tex(55) = {'log\_xi3'};
M_.endo_names_long(55) = {'log_xi3'};
M_.endo_names(56) = {'log_xi4'};
M_.endo_names_tex(56) = {'log\_xi4'};
M_.endo_names_long(56) = {'log_xi4'};
M_.endo_names(57) = {'log_xi5'};
M_.endo_names_tex(57) = {'log\_xi5'};
M_.endo_names_long(57) = {'log_xi5'};
M_.endo_names(58) = {'log_xi6'};
M_.endo_names_tex(58) = {'log\_xi6'};
M_.endo_names_long(58) = {'log_xi6'};
M_.endo_names(59) = {'log_xi7'};
M_.endo_names_tex(59) = {'log\_xi7'};
M_.endo_names_long(59) = {'log_xi7'};
M_.endo_names(60) = {'log_xi8'};
M_.endo_names_tex(60) = {'log\_xi8'};
M_.endo_names_long(60) = {'log_xi8'};
M_.endo_names(61) = {'Cf'};
M_.endo_names_tex(61) = {'Cf'};
M_.endo_names_long(61) = {'Cf'};
M_.endo_names(62) = {'Ucf'};
M_.endo_names_tex(62) = {'Ucf'};
M_.endo_names_long(62) = {'Ucf'};
M_.endo_names(63) = {'Lambdaf'};
M_.endo_names_tex(63) = {'Lambdaf'};
M_.endo_names_long(63) = {'Lambdaf'};
M_.endo_names(64) = {'Labf'};
M_.endo_names_tex(64) = {'Labf'};
M_.endo_names_long(64) = {'Labf'};
M_.endo_names(65) = {'Rf'};
M_.endo_names_tex(65) = {'Rf'};
M_.endo_names_long(65) = {'Rf'};
M_.endo_names(66) = {'Ymf'};
M_.endo_names_tex(66) = {'Ymf'};
M_.endo_names_long(66) = {'Ymf'};
M_.endo_names(67) = {'Kf'};
M_.endo_names_tex(67) = {'Kf'};
M_.endo_names_long(67) = {'Kf'};
M_.endo_names(68) = {'Wf'};
M_.endo_names_tex(68) = {'Wf'};
M_.endo_names_long(68) = {'Wf'};
M_.endo_names(69) = {'Rkf'};
M_.endo_names_tex(69) = {'Rkf'};
M_.endo_names_long(69) = {'Rkf'};
M_.endo_names(70) = {'If'};
M_.endo_names_tex(70) = {'If'};
M_.endo_names_long(70) = {'If'};
M_.endo_names(71) = {'Qf'};
M_.endo_names_tex(71) = {'Qf'};
M_.endo_names_long(71) = {'Qf'};
M_.endo_names(72) = {'Gf'};
M_.endo_names_tex(72) = {'Gf'};
M_.endo_names_long(72) = {'Gf'};
M_.endo_names(73) = {'Tf'};
M_.endo_names_tex(73) = {'Tf'};
M_.endo_names_long(73) = {'Tf'};
M_.endo_names(74) = {'OUTGAP'};
M_.endo_names_tex(74) = {'OUTGAP'};
M_.endo_names_long(74) = {'OUTGAP'};
M_.endo_names(75) = {'Pmf'};
M_.endo_names_tex(75) = {'Pmf'};
M_.endo_names_long(75) = {'Pmf'};
M_.endo_names(76) = {'Zf'};
M_.endo_names_tex(76) = {'Zf'};
M_.endo_names_long(76) = {'Zf'};
M_.endo_names(77) = {'Sf'};
M_.endo_names_tex(77) = {'Sf'};
M_.endo_names_long(77) = {'Sf'};
M_.endo_names(78) = {'Sdashf'};
M_.endo_names_tex(78) = {'Sdashf'};
M_.endo_names_long(78) = {'Sdashf'};
M_.endo_names(79) = {'Xif'};
M_.endo_names_tex(79) = {'Xif'};
M_.endo_names_long(79) = {'Xif'};
M_.endo_names(80) = {'p'};
M_.endo_names_tex(80) = {'p'};
M_.endo_names_long(80) = {'p'};
M_.endo_names(81) = {'fnG'};
M_.endo_names_tex(81) = {'fnG'};
M_.endo_names_long(81) = {'fnG'};
M_.endo_names(82) = {'fnGam'};
M_.endo_names_tex(82) = {'fnGam'};
M_.endo_names_long(82) = {'fnGam'};
M_.endo_names(83) = {'DGam'};
M_.endo_names_tex(83) = {'DGam'};
M_.endo_names_long(83) = {'DGam'};
M_.endo_names(84) = {'DG'};
M_.endo_names_tex(84) = {'DG'};
M_.endo_names_long(84) = {'DG'};
M_.endo_names(85) = {'S'};
M_.endo_names_tex(85) = {'S'};
M_.endo_names_long(85) = {'S'};
M_.endo_names(86) = {'Sdash'};
M_.endo_names_tex(86) = {'Sdash'};
M_.endo_names_long(86) = {'Sdash'};
M_.endo_names(87) = {'Xi'};
M_.endo_names_tex(87) = {'Xi'};
M_.endo_names_long(87) = {'Xi'};
M_.endo_names(88) = {'YY'};
M_.endo_names_tex(88) = {'YY'};
M_.endo_names_long(88) = {'YY'};
M_.endo_names(89) = {'CC'};
M_.endo_names_tex(89) = {'CC'};
M_.endo_names_long(89) = {'CC'};
M_.endo_names(90) = {'II'};
M_.endo_names_tex(90) = {'II'};
M_.endo_names_long(90) = {'II'};
M_.endo_names(91) = {'WW'};
M_.endo_names_tex(91) = {'WW'};
M_.endo_names_long(91) = {'WW'};
M_.endo_names(92) = {'RR'};
M_.endo_names_tex(92) = {'RR'};
M_.endo_names_long(92) = {'RR'};
M_.endo_names(93) = {'QQ'};
M_.endo_names_tex(93) = {'QQ'};
M_.endo_names_long(93) = {'QQ'};
M_.endo_names(94) = {'RnRn'};
M_.endo_names_tex(94) = {'RnRn'};
M_.endo_names_long(94) = {'RnRn'};
M_.endo_names(95) = {'PIPPIP'};
M_.endo_names_tex(95) = {'PIPPIP'};
M_.endo_names_long(95) = {'PIPPIP'};
M_.endo_names(96) = {'OUTGAPOUTGAP'};
M_.endo_names_tex(96) = {'OUTGAPOUTGAP'};
M_.endo_names_long(96) = {'OUTGAPOUTGAP'};
M_.endo_names(97) = {'RkRk'};
M_.endo_names_tex(97) = {'RkRk'};
M_.endo_names_long(97) = {'RkRk'};
M_.endo_names(98) = {'NeNe'};
M_.endo_names_tex(98) = {'NeNe'};
M_.endo_names_long(98) = {'NeNe'};
M_.endo_names(99) = {'spreadspread'};
M_.endo_names_tex(99) = {'spreadspread'};
M_.endo_names_long(99) = {'spreadspread'};
M_.endo_names(100) = {'KK'};
M_.endo_names_tex(100) = {'KK'};
M_.endo_names_long(100) = {'KK'};
M_.endo_names(101) = {'rhorho'};
M_.endo_names_tex(101) = {'rhorho'};
M_.endo_names_long(101) = {'rhorho'};
M_.endo_names(102) = {'LabLab'};
M_.endo_names_tex(102) = {'LabLab'};
M_.endo_names_long(102) = {'LabLab'};
M_.endo_names(103) = {'phiephie'};
M_.endo_names_tex(103) = {'phiephie'};
M_.endo_names_long(103) = {'phiephie'};
M_.endo_names(104) = {'psipsi'};
M_.endo_names_tex(104) = {'psipsi'};
M_.endo_names_long(104) = {'psipsi'};
M_.endo_names(105) = {'LeLe'};
M_.endo_names_tex(105) = {'LeLe'};
M_.endo_names_long(105) = {'LeLe'};
M_.endo_names(106) = {'YYF'};
M_.endo_names_tex(106) = {'YYF'};
M_.endo_names_long(106) = {'YYF'};
M_.endo_names(107) = {'CCF'};
M_.endo_names_tex(107) = {'CCF'};
M_.endo_names_long(107) = {'CCF'};
M_.endo_names(108) = {'IIF'};
M_.endo_names_tex(108) = {'IIF'};
M_.endo_names_long(108) = {'IIF'};
M_.endo_names(109) = {'WWF'};
M_.endo_names_tex(109) = {'WWF'};
M_.endo_names_long(109) = {'WWF'};
M_.endo_names(110) = {'RRF'};
M_.endo_names_tex(110) = {'RRF'};
M_.endo_names_long(110) = {'RRF'};
M_.endo_names(111) = {'spreadspreadF'};
M_.endo_names_tex(111) = {'spreadspreadF'};
M_.endo_names_long(111) = {'spreadspreadF'};
M_.endo_names(112) = {'LabLabF'};
M_.endo_names_tex(112) = {'LabLabF'};
M_.endo_names_long(112) = {'LabLabF'};
M_.endo_names(113) = {'QQF'};
M_.endo_names_tex(113) = {'QQF'};
M_.endo_names_long(113) = {'QQF'};
M_.endo_names(114) = {'RkRkF'};
M_.endo_names_tex(114) = {'RkRkF'};
M_.endo_names_long(114) = {'RkRkF'};
M_.endo_names(115) = {'KKF'};
M_.endo_names_tex(115) = {'KKF'};
M_.endo_names_long(115) = {'KKF'};
M_.endo_names(116) = {'AUX_ENDO_LAG_45_1'};
M_.endo_names_tex(116) = {'AUX\_ENDO\_LAG\_45\_1'};
M_.endo_names_long(116) = {'AUX_ENDO_LAG_45_1'};
M_.endo_names(117) = {'AUX_ENDO_LAG_46_1'};
M_.endo_names_tex(117) = {'AUX\_ENDO\_LAG\_46\_1'};
M_.endo_names_long(117) = {'AUX_ENDO_LAG_46_1'};
M_.endo_names(118) = {'AUX_ENDO_LAG_46_2'};
M_.endo_names_tex(118) = {'AUX\_ENDO\_LAG\_46\_2'};
M_.endo_names_long(118) = {'AUX_ENDO_LAG_46_2'};
M_.endo_names(119) = {'AUX_ENDO_LAG_47_1'};
M_.endo_names_tex(119) = {'AUX\_ENDO\_LAG\_47\_1'};
M_.endo_names_long(119) = {'AUX_ENDO_LAG_47_1'};
M_.endo_names(120) = {'AUX_ENDO_LAG_47_2'};
M_.endo_names_tex(120) = {'AUX\_ENDO\_LAG\_47\_2'};
M_.endo_names_long(120) = {'AUX_ENDO_LAG_47_2'};
M_.endo_names(121) = {'AUX_ENDO_LAG_47_3'};
M_.endo_names_tex(121) = {'AUX\_ENDO\_LAG\_47\_3'};
M_.endo_names_long(121) = {'AUX_ENDO_LAG_47_3'};
M_.endo_names(122) = {'AUX_ENDO_LAG_48_1'};
M_.endo_names_tex(122) = {'AUX\_ENDO\_LAG\_48\_1'};
M_.endo_names_long(122) = {'AUX_ENDO_LAG_48_1'};
M_.endo_names(123) = {'AUX_ENDO_LAG_48_2'};
M_.endo_names_tex(123) = {'AUX\_ENDO\_LAG\_48\_2'};
M_.endo_names_long(123) = {'AUX_ENDO_LAG_48_2'};
M_.endo_names(124) = {'AUX_ENDO_LAG_48_3'};
M_.endo_names_tex(124) = {'AUX\_ENDO\_LAG\_48\_3'};
M_.endo_names_long(124) = {'AUX_ENDO_LAG_48_3'};
M_.endo_names(125) = {'AUX_ENDO_LAG_48_4'};
M_.endo_names_tex(125) = {'AUX\_ENDO\_LAG\_48\_4'};
M_.endo_names_long(125) = {'AUX_ENDO_LAG_48_4'};
M_.endo_names(126) = {'AUX_ENDO_LAG_49_1'};
M_.endo_names_tex(126) = {'AUX\_ENDO\_LAG\_49\_1'};
M_.endo_names_long(126) = {'AUX_ENDO_LAG_49_1'};
M_.endo_names(127) = {'AUX_ENDO_LAG_49_2'};
M_.endo_names_tex(127) = {'AUX\_ENDO\_LAG\_49\_2'};
M_.endo_names_long(127) = {'AUX_ENDO_LAG_49_2'};
M_.endo_names(128) = {'AUX_ENDO_LAG_49_3'};
M_.endo_names_tex(128) = {'AUX\_ENDO\_LAG\_49\_3'};
M_.endo_names_long(128) = {'AUX_ENDO_LAG_49_3'};
M_.endo_names(129) = {'AUX_ENDO_LAG_49_4'};
M_.endo_names_tex(129) = {'AUX\_ENDO\_LAG\_49\_4'};
M_.endo_names_long(129) = {'AUX_ENDO_LAG_49_4'};
M_.endo_names(130) = {'AUX_ENDO_LAG_49_5'};
M_.endo_names_tex(130) = {'AUX\_ENDO\_LAG\_49\_5'};
M_.endo_names_long(130) = {'AUX_ENDO_LAG_49_5'};
M_.endo_names(131) = {'AUX_ENDO_LAG_50_1'};
M_.endo_names_tex(131) = {'AUX\_ENDO\_LAG\_50\_1'};
M_.endo_names_long(131) = {'AUX_ENDO_LAG_50_1'};
M_.endo_names(132) = {'AUX_ENDO_LAG_50_2'};
M_.endo_names_tex(132) = {'AUX\_ENDO\_LAG\_50\_2'};
M_.endo_names_long(132) = {'AUX_ENDO_LAG_50_2'};
M_.endo_names(133) = {'AUX_ENDO_LAG_50_3'};
M_.endo_names_tex(133) = {'AUX\_ENDO\_LAG\_50\_3'};
M_.endo_names_long(133) = {'AUX_ENDO_LAG_50_3'};
M_.endo_names(134) = {'AUX_ENDO_LAG_50_4'};
M_.endo_names_tex(134) = {'AUX\_ENDO\_LAG\_50\_4'};
M_.endo_names_long(134) = {'AUX_ENDO_LAG_50_4'};
M_.endo_names(135) = {'AUX_ENDO_LAG_50_5'};
M_.endo_names_tex(135) = {'AUX\_ENDO\_LAG\_50\_5'};
M_.endo_names_long(135) = {'AUX_ENDO_LAG_50_5'};
M_.endo_names(136) = {'AUX_ENDO_LAG_50_6'};
M_.endo_names_tex(136) = {'AUX\_ENDO\_LAG\_50\_6'};
M_.endo_names_long(136) = {'AUX_ENDO_LAG_50_6'};
M_.endo_names(137) = {'AUX_ENDO_LAG_51_1'};
M_.endo_names_tex(137) = {'AUX\_ENDO\_LAG\_51\_1'};
M_.endo_names_long(137) = {'AUX_ENDO_LAG_51_1'};
M_.endo_names(138) = {'AUX_ENDO_LAG_51_2'};
M_.endo_names_tex(138) = {'AUX\_ENDO\_LAG\_51\_2'};
M_.endo_names_long(138) = {'AUX_ENDO_LAG_51_2'};
M_.endo_names(139) = {'AUX_ENDO_LAG_51_3'};
M_.endo_names_tex(139) = {'AUX\_ENDO\_LAG\_51\_3'};
M_.endo_names_long(139) = {'AUX_ENDO_LAG_51_3'};
M_.endo_names(140) = {'AUX_ENDO_LAG_51_4'};
M_.endo_names_tex(140) = {'AUX\_ENDO\_LAG\_51\_4'};
M_.endo_names_long(140) = {'AUX_ENDO_LAG_51_4'};
M_.endo_names(141) = {'AUX_ENDO_LAG_51_5'};
M_.endo_names_tex(141) = {'AUX\_ENDO\_LAG\_51\_5'};
M_.endo_names_long(141) = {'AUX_ENDO_LAG_51_5'};
M_.endo_names(142) = {'AUX_ENDO_LAG_51_6'};
M_.endo_names_tex(142) = {'AUX\_ENDO\_LAG\_51\_6'};
M_.endo_names_long(142) = {'AUX_ENDO_LAG_51_6'};
M_.endo_names(143) = {'AUX_ENDO_LAG_51_7'};
M_.endo_names_tex(143) = {'AUX\_ENDO\_LAG\_51\_7'};
M_.endo_names_long(143) = {'AUX_ENDO_LAG_51_7'};
M_.endo_partitions = struct();
M_.param_names = cell(24,1);
M_.param_names_tex = cell(24,1);
M_.param_names_long = cell(24,1);
M_.param_names(1) = {'alphha'};
M_.param_names_tex(1) = {'alphha'};
M_.param_names_long(1) = {'alphha'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'betta'};
M_.param_names_long(2) = {'betta'};
M_.param_names(3) = {'gammma'};
M_.param_names_tex(3) = {'gammma'};
M_.param_names_long(3) = {'gammma'};
M_.param_names(4) = {'chil'};
M_.param_names_tex(4) = {'chil'};
M_.param_names_long(4) = {'chil'};
M_.param_names(5) = {'epsl'};
M_.param_names_tex(5) = {'epsl'};
M_.param_names_long(5) = {'epsl'};
M_.param_names(6) = {'delta'};
M_.param_names_tex(6) = {'delta'};
M_.param_names_long(6) = {'delta'};
M_.param_names(7) = {'ksie'};
M_.param_names_tex(7) = {'ksie'};
M_.param_names_long(7) = {'ksie'};
M_.param_names(8) = {'eta'};
M_.param_names_tex(8) = {'eta'};
M_.param_names_long(8) = {'eta'};
M_.param_names(9) = {'G_over_Y'};
M_.param_names_tex(9) = {'G\_over\_Y'};
M_.param_names_long(9) = {'G_over_Y'};
M_.param_names(10) = {'phiX'};
M_.param_names_tex(10) = {'phiX'};
M_.param_names_long(10) = {'phiX'};
M_.param_names(11) = {'kpY'};
M_.param_names_tex(11) = {'kpY'};
M_.param_names_long(11) = {'kpY'};
M_.param_names(12) = {'kpP'};
M_.param_names_tex(12) = {'kpP'};
M_.param_names_long(12) = {'kpP'};
M_.param_names(13) = {'rho_r'};
M_.param_names_tex(13) = {'rho\_r'};
M_.param_names_long(13) = {'rho_r'};
M_.param_names(14) = {'els'};
M_.param_names_tex(14) = {'els'};
M_.param_names_long(14) = {'els'};
M_.param_names(15) = {'gam'};
M_.param_names_tex(15) = {'gam'};
M_.param_names_long(15) = {'gam'};
M_.param_names(16) = {'sig'};
M_.param_names_tex(16) = {'sig'};
M_.param_names_long(16) = {'sig'};
M_.param_names(17) = {'kap'};
M_.param_names_tex(17) = {'kap'};
M_.param_names_long(17) = {'kap'};
M_.param_names(18) = {'zzeta'};
M_.param_names_tex(18) = {'zzeta'};
M_.param_names_long(18) = {'zzeta'};
M_.param_names(19) = {'rhosigma'};
M_.param_names_tex(19) = {'rhosigma'};
M_.param_names_long(19) = {'rhosigma'};
M_.param_names(20) = {'signal_corr_p'};
M_.param_names_tex(20) = {'signal\_corr\_p'};
M_.param_names_long(20) = {'signal_corr_p'};
M_.param_names(21) = {'stdsigma2_p'};
M_.param_names_tex(21) = {'stdsigma2\_p'};
M_.param_names_long(21) = {'stdsigma2_p'};
M_.param_names(22) = {'stdsigma1_p'};
M_.param_names_tex(22) = {'stdsigma1\_p'};
M_.param_names_long(22) = {'stdsigma1_p'};
M_.param_names(23) = {'stdA'};
M_.param_names_tex(23) = {'stdA'};
M_.param_names_long(23) = {'stdA'};
M_.param_names(24) = {'stdG'};
M_.param_names_tex(24) = {'stdG'};
M_.param_names_long(24) = {'stdG'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 12;
M_.endo_nbr = 143;
M_.param_nbr = 24;
M_.orig_endo_nbr = 115;
M_.aux_vars(1).endo_index = 116;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 45;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'xi2(-1)';
M_.aux_vars(2).endo_index = 117;
M_.aux_vars(2).type = 1;
M_.aux_vars(2).orig_index = 46;
M_.aux_vars(2).orig_lead_lag = -1;
M_.aux_vars(2).orig_expr = 'xi3(-1)';
M_.aux_vars(3).endo_index = 118;
M_.aux_vars(3).type = 1;
M_.aux_vars(3).orig_index = 46;
M_.aux_vars(3).orig_lead_lag = -2;
M_.aux_vars(3).orig_expr = 'AUX_ENDO_LAG_46_1(-1)';
M_.aux_vars(4).endo_index = 119;
M_.aux_vars(4).type = 1;
M_.aux_vars(4).orig_index = 47;
M_.aux_vars(4).orig_lead_lag = -1;
M_.aux_vars(4).orig_expr = 'xi4(-1)';
M_.aux_vars(5).endo_index = 120;
M_.aux_vars(5).type = 1;
M_.aux_vars(5).orig_index = 47;
M_.aux_vars(5).orig_lead_lag = -2;
M_.aux_vars(5).orig_expr = 'AUX_ENDO_LAG_47_1(-1)';
M_.aux_vars(6).endo_index = 121;
M_.aux_vars(6).type = 1;
M_.aux_vars(6).orig_index = 47;
M_.aux_vars(6).orig_lead_lag = -3;
M_.aux_vars(6).orig_expr = 'AUX_ENDO_LAG_47_2(-1)';
M_.aux_vars(7).endo_index = 122;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 48;
M_.aux_vars(7).orig_lead_lag = -1;
M_.aux_vars(7).orig_expr = 'xi5(-1)';
M_.aux_vars(8).endo_index = 123;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 48;
M_.aux_vars(8).orig_lead_lag = -2;
M_.aux_vars(8).orig_expr = 'AUX_ENDO_LAG_48_1(-1)';
M_.aux_vars(9).endo_index = 124;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 48;
M_.aux_vars(9).orig_lead_lag = -3;
M_.aux_vars(9).orig_expr = 'AUX_ENDO_LAG_48_2(-1)';
M_.aux_vars(10).endo_index = 125;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 48;
M_.aux_vars(10).orig_lead_lag = -4;
M_.aux_vars(10).orig_expr = 'AUX_ENDO_LAG_48_3(-1)';
M_.aux_vars(11).endo_index = 126;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 49;
M_.aux_vars(11).orig_lead_lag = -1;
M_.aux_vars(11).orig_expr = 'xi6(-1)';
M_.aux_vars(12).endo_index = 127;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 49;
M_.aux_vars(12).orig_lead_lag = -2;
M_.aux_vars(12).orig_expr = 'AUX_ENDO_LAG_49_1(-1)';
M_.aux_vars(13).endo_index = 128;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 49;
M_.aux_vars(13).orig_lead_lag = -3;
M_.aux_vars(13).orig_expr = 'AUX_ENDO_LAG_49_2(-1)';
M_.aux_vars(14).endo_index = 129;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 49;
M_.aux_vars(14).orig_lead_lag = -4;
M_.aux_vars(14).orig_expr = 'AUX_ENDO_LAG_49_3(-1)';
M_.aux_vars(15).endo_index = 130;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 49;
M_.aux_vars(15).orig_lead_lag = -5;
M_.aux_vars(15).orig_expr = 'AUX_ENDO_LAG_49_4(-1)';
M_.aux_vars(16).endo_index = 131;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 50;
M_.aux_vars(16).orig_lead_lag = -1;
M_.aux_vars(16).orig_expr = 'xi7(-1)';
M_.aux_vars(17).endo_index = 132;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 50;
M_.aux_vars(17).orig_lead_lag = -2;
M_.aux_vars(17).orig_expr = 'AUX_ENDO_LAG_50_1(-1)';
M_.aux_vars(18).endo_index = 133;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 50;
M_.aux_vars(18).orig_lead_lag = -3;
M_.aux_vars(18).orig_expr = 'AUX_ENDO_LAG_50_2(-1)';
M_.aux_vars(19).endo_index = 134;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 50;
M_.aux_vars(19).orig_lead_lag = -4;
M_.aux_vars(19).orig_expr = 'AUX_ENDO_LAG_50_3(-1)';
M_.aux_vars(20).endo_index = 135;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 50;
M_.aux_vars(20).orig_lead_lag = -5;
M_.aux_vars(20).orig_expr = 'AUX_ENDO_LAG_50_4(-1)';
M_.aux_vars(21).endo_index = 136;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 50;
M_.aux_vars(21).orig_lead_lag = -6;
M_.aux_vars(21).orig_expr = 'AUX_ENDO_LAG_50_5(-1)';
M_.aux_vars(22).endo_index = 137;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 51;
M_.aux_vars(22).orig_lead_lag = -1;
M_.aux_vars(22).orig_expr = 'xi8(-1)';
M_.aux_vars(23).endo_index = 138;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 51;
M_.aux_vars(23).orig_lead_lag = -2;
M_.aux_vars(23).orig_expr = 'AUX_ENDO_LAG_51_1(-1)';
M_.aux_vars(24).endo_index = 139;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 51;
M_.aux_vars(24).orig_lead_lag = -3;
M_.aux_vars(24).orig_expr = 'AUX_ENDO_LAG_51_2(-1)';
M_.aux_vars(25).endo_index = 140;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 51;
M_.aux_vars(25).orig_lead_lag = -4;
M_.aux_vars(25).orig_expr = 'AUX_ENDO_LAG_51_3(-1)';
M_.aux_vars(26).endo_index = 141;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 51;
M_.aux_vars(26).orig_lead_lag = -5;
M_.aux_vars(26).orig_expr = 'AUX_ENDO_LAG_51_4(-1)';
M_.aux_vars(27).endo_index = 142;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 51;
M_.aux_vars(27).orig_lead_lag = -6;
M_.aux_vars(27).orig_expr = 'AUX_ENDO_LAG_51_5(-1)';
M_.aux_vars(28).endo_index = 143;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 51;
M_.aux_vars(28).orig_lead_lag = -7;
M_.aux_vars(28).orig_expr = 'AUX_ENDO_LAG_51_6(-1)';
M_.Sigma_e = zeros(12, 12);
M_.Correlation_matrix = eye(12, 12);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 115;
M_.eq_nbr = 143;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 8;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 8;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 8;
M_.lead_lag_incidence = [
 1 55 197;
 2 56 0;
 0 57 198;
 0 58 0;
 0 59 199;
 0 60 0;
 3 61 0;
 0 62 0;
 0 63 0;
 4 64 0;
 0 65 200;
 5 0 0;
 6 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 201;
 0 72 0;
 0 73 0;
 7 74 0;
 8 75 202;
 0 76 0;
 0 77 0;
 0 78 0;
 0 79 0;
 0 80 0;
 0 81 0;
 0 82 0;
 9 83 203;
 10 84 0;
 11 85 0;
 0 86 204;
 0 87 205;
 0 88 0;
 0 89 0;
 0 90 0;
 0 91 0;
 12 92 0;
 0 93 0;
 0 94 0;
 13 95 0;
 0 96 0;
 14 97 0;
 15 98 0;
 16 99 0;
 17 100 0;
 18 101 0;
 19 102 0;
 20 103 0;
 21 104 0;
 0 105 0;
 0 106 0;
 0 107 0;
 0 108 0;
 0 109 0;
 0 110 0;
 0 111 0;
 0 112 0;
 0 113 0;
 22 114 206;
 23 115 0;
 0 116 207;
 0 117 0;
 0 118 0;
 0 119 0;
 24 120 0;
 0 121 0;
 0 122 208;
 25 123 0;
 26 124 209;
 0 125 0;
 0 126 0;
 0 127 0;
 0 128 0;
 0 129 0;
 0 130 0;
 0 131 210;
 0 132 211;
 0 133 0;
 0 134 212;
 0 135 213;
 0 136 0;
 0 137 0;
 0 138 0;
 0 139 214;
 0 140 215;
 0 141 0;
 0 142 0;
 0 143 0;
 0 144 0;
 0 145 216;
 0 146 0;
 0 147 0;
 0 148 0;
 0 149 0;
 0 150 217;
 0 151 0;
 0 152 0;
 0 153 0;
 0 154 0;
 0 155 0;
 0 156 0;
 0 157 0;
 0 158 0;
 0 159 0;
 0 160 0;
 0 161 0;
 0 162 0;
 0 163 0;
 0 164 0;
 0 165 0;
 0 166 0;
 0 167 218;
 0 168 0;
 27 169 0;
 28 170 0;
 29 171 0;
 30 172 0;
 31 173 0;
 32 174 0;
 33 175 0;
 34 176 0;
 35 177 0;
 36 178 0;
 37 179 0;
 38 180 0;
 39 181 0;
 40 182 0;
 41 183 0;
 42 184 0;
 43 185 0;
 44 186 0;
 45 187 0;
 46 188 0;
 47 189 0;
 48 190 0;
 49 191 0;
 50 192 0;
 51 193 0;
 52 194 0;
 53 195 0;
 54 196 0;]';
M_.nstatic = 72;
M_.nfwrd   = 17;
M_.npred   = 49;
M_.nboth   = 5;
M_.nsfwrd   = 22;
M_.nspred   = 54;
M_.ndynamic   = 71;
M_.dynamic_tmp_nbr = [34; 10; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Uc' ;
  2 , 'name' , 'Lambda' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'Ym' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'W' ;
  8 , 'name' , 'Z' ;
  9 , 'name' , 'K' ;
  10 , 'name' , 'Xi' ;
  11 , 'name' , 'S' ;
  12 , 'name' , 'Sdash' ;
  13 , 'name' , '13' ;
  14 , 'name' , 'Rk' ;
  15 , 'name' , '15' ;
  16 , 'name' , 'Ne' ;
  17 , 'name' , 'Ce' ;
  18 , 'name' , '18' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'omega' ;
  21 , 'name' , 'rho' ;
  22 , 'name' , 'rhoRex' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'p' ;
  25 , 'name' , 'fnG' ;
  26 , 'name' , 'fnGam' ;
  27 , 'name' , 'DGam' ;
  28 , 'name' , 'DG' ;
  29 , 'name' , 'Y' ;
  30 , 'name' , 'G' ;
  31 , 'name' , '31' ;
  32 , 'name' , 'spread' ;
  33 , 'name' , 'D' ;
  34 , 'name' , 'F' ;
  35 , 'name' , 'H' ;
  36 , 'name' , 'PIS' ;
  37 , 'name' , '37' ;
  38 , 'name' , 'Rn' ;
  39 , 'name' , '39' ;
  40 , 'name' , 'X' ;
  41 , 'name' , 'sigmae' ;
  42 , 'name' , 'sigma_omega_ss' ;
  43 , 'name' , 'mon' ;
  44 , 'name' , 'Ucf' ;
  45 , 'name' , 'Lambdaf' ;
  46 , 'name' , '46' ;
  47 , 'name' , '47' ;
  48 , 'name' , '48' ;
  49 , 'name' , 'Ymf' ;
  50 , 'name' , 'Zf' ;
  51 , 'name' , 'Rkf' ;
  52 , 'name' , 'Xif' ;
  53 , 'name' , 'Sf' ;
  54 , 'name' , 'Sdashf' ;
  55 , 'name' , '55' ;
  56 , 'name' , 'Wf' ;
  57 , 'name' , '57' ;
  58 , 'name' , 'Kf' ;
  59 , 'name' , 'Gf' ;
  60 , 'name' , '60' ;
  61 , 'name' , 'Pmf' ;
  62 , 'name' , 'OUTGAP' ;
  63 , 'name' , 'bankrupt' ;
  64 , 'name' , 'YY' ;
  65 , 'name' , 'KK' ;
  66 , 'name' , 'II' ;
  67 , 'name' , 'CC' ;
  68 , 'name' , 'WW' ;
  69 , 'name' , 'LabLab' ;
  70 , 'name' , 'QQ' ;
  71 , 'name' , 'RR' ;
  72 , 'name' , 'RkRk' ;
  73 , 'name' , 'RnRn' ;
  74 , 'name' , 'PIPPIP' ;
  75 , 'name' , 'spreadspread' ;
  76 , 'name' , 'NeNe' ;
  77 , 'name' , 'rhorho' ;
  78 , 'name' , 'psipsi' ;
  79 , 'name' , 'phiephie' ;
  80 , 'name' , 'OUTGAPOUTGAP' ;
  81 , 'name' , 'LeLe' ;
  82 , 'name' , 'YYF' ;
  83 , 'name' , 'KKF' ;
  84 , 'name' , 'IIF' ;
  85 , 'name' , 'CCF' ;
  86 , 'name' , 'WWF' ;
  87 , 'name' , 'LabLabF' ;
  88 , 'name' , 'QQF' ;
  89 , 'name' , 'RRF' ;
  90 , 'name' , 'RkRkF' ;
  91 , 'name' , 'spreadspreadF' ;
  92 , 'name' , '92' ;
  93 , 'name' , '93' ;
  94 , 'name' , '94' ;
  95 , 'name' , 'log_xi0' ;
  96 , 'name' , 'log_xi1' ;
  97 , 'name' , 'log_xi2' ;
  98 , 'name' , 'log_xi3' ;
  99 , 'name' , 'log_xi4' ;
  100 , 'name' , 'log_xi5' ;
  101 , 'name' , 'log_xi6' ;
  102 , 'name' , 'log_xi7' ;
  103 , 'name' , 'log_xi8' ;
  104 , 'name' , '104' ;
  105 , 'name' , '105' ;
  106 , 'name' , '106' ;
  107 , 'name' , '107' ;
  108 , 'name' , '108' ;
  109 , 'name' , '109' ;
  110 , 'name' , '110' ;
  111 , 'name' , '111' ;
  112 , 'name' , '112' ;
  113 , 'name' , 'zeta' ;
  114 , 'name' , 'sigma_pref' ;
  115 , 'name' , 'psi' ;
};
M_.mapping.C.eqidx = [1 29 67 ];
M_.mapping.Uc.eqidx = [1 2 4 ];
M_.mapping.Lambda.eqidx = [2 3 13 34 35 ];
M_.mapping.Lab.eqidx = [4 5 7 69 ];
M_.mapping.R.eqidx = [3 19 22 32 38 71 ];
M_.mapping.Y.eqidx = [6 29 31 34 35 39 62 64 ];
M_.mapping.K.eqidx = [5 8 9 15 16 17 18 20 29 65 ];
M_.mapping.W.eqidx = [7 68 ];
M_.mapping.Z.eqidx = [8 14 ];
M_.mapping.A.eqidx = [5 49 92 ];
M_.mapping.Rk.eqidx = [14 16 17 19 20 23 29 32 72 ];
M_.mapping.Rl.eqidx = [20 ];
M_.mapping.Ne.eqidx = [15 16 18 20 76 ];
M_.mapping.phie.eqidx = [18 19 79 ];
M_.mapping.Le.eqidx = [15 81 ];
M_.mapping.Ce.eqidx = [17 29 ];
M_.mapping.rho.eqidx = [21 22 77 ];
M_.mapping.rhoRex.eqidx = [22 23 ];
M_.mapping.omega.eqidx = [20 24 25 26 28 ];
M_.mapping.bankrupt.eqidx = [63 ];
M_.mapping.I.eqidx = [9 10 29 66 ];
M_.mapping.Q.eqidx = [13 14 15 16 17 18 20 29 70 ];
M_.mapping.psi.eqidx = [115 ];
M_.mapping.G.eqidx = [29 30 31 ];
M_.mapping.T.eqidx = [30 ];
M_.mapping.spread.eqidx = [32 ];
M_.mapping.sigma_pref.eqidx = [114 ];
M_.mapping.zeta.eqidx = [113 ];
M_.mapping.PIS.eqidx = [33 36 37 ];
M_.mapping.PIP.eqidx = [20 33 34 35 36 37 38 39 74 ];
M_.mapping.Rn.eqidx = [38 39 73 ];
M_.mapping.D.eqidx = [6 33 ];
M_.mapping.H.eqidx = [35 36 ];
M_.mapping.F.eqidx = [34 36 ];
M_.mapping.X.eqidx = [40 ];
M_.mapping.Ym.eqidx = [4 5 6 7 8 ];
M_.mapping.Pm.eqidx = [4 7 8 34 40 ];
M_.mapping.sigmae.eqidx = [16 17 41 ];
M_.mapping.sigma_omega.eqidx = [24 25 28 94 ];
M_.mapping.mon.eqidx = [19 21 29 43 ];
M_.mapping.sigma_omega_ss.eqidx = [42 94 ];
M_.mapping.Sg.eqidx = [31 93 ];
M_.mapping.xi0.eqidx = [95 112 ];
M_.mapping.xi1.eqidx = [94 96 111 ];
M_.mapping.xi2.eqidx = [94 97 110 ];
M_.mapping.xi3.eqidx = [94 98 109 ];
M_.mapping.xi4.eqidx = [94 99 108 ];
M_.mapping.xi5.eqidx = [94 100 107 ];
M_.mapping.xi6.eqidx = [94 101 106 ];
M_.mapping.xi7.eqidx = [94 102 105 ];
M_.mapping.xi8.eqidx = [94 103 104 ];
M_.mapping.log_xi0.eqidx = [94 95 ];
M_.mapping.log_xi1.eqidx = [96 ];
M_.mapping.log_xi2.eqidx = [97 ];
M_.mapping.log_xi3.eqidx = [98 ];
M_.mapping.log_xi4.eqidx = [99 ];
M_.mapping.log_xi5.eqidx = [100 ];
M_.mapping.log_xi6.eqidx = [101 ];
M_.mapping.log_xi7.eqidx = [102 ];
M_.mapping.log_xi8.eqidx = [103 ];
M_.mapping.Cf.eqidx = [44 57 85 ];
M_.mapping.Ucf.eqidx = [44 45 48 ];
M_.mapping.Lambdaf.eqidx = [45 46 47 55 ];
M_.mapping.Labf.eqidx = [48 49 56 87 ];
M_.mapping.Rf.eqidx = [46 89 ];
M_.mapping.Ymf.eqidx = [39 48 49 50 56 57 60 62 82 ];
M_.mapping.Kf.eqidx = [49 50 58 83 ];
M_.mapping.Wf.eqidx = [56 86 ];
M_.mapping.Rkf.eqidx = [47 51 90 ];
M_.mapping.If.eqidx = [52 57 58 84 ];
M_.mapping.Qf.eqidx = [51 55 88 ];
M_.mapping.Gf.eqidx = [57 59 60 ];
M_.mapping.Tf.eqidx = [59 ];
M_.mapping.OUTGAP.eqidx = [62 80 ];
M_.mapping.Pmf.eqidx = [61 ];
M_.mapping.Zf.eqidx = [50 51 ];
M_.mapping.Sf.eqidx = [53 55 ];
M_.mapping.Sdashf.eqidx = [54 55 ];
M_.mapping.Xif.eqidx = [52 53 54 55 ];
M_.mapping.p.eqidx = [24 26 27 63 ];
M_.mapping.fnG.eqidx = [19 21 25 26 29 ];
M_.mapping.fnGam.eqidx = [16 17 19 21 26 ];
M_.mapping.DGam.eqidx = [21 27 ];
M_.mapping.DG.eqidx = [21 28 ];
M_.mapping.S.eqidx = [9 11 13 ];
M_.mapping.Sdash.eqidx = [12 13 ];
M_.mapping.Xi.eqidx = [10 11 12 13 ];
M_.mapping.YY.eqidx = [64 ];
M_.mapping.CC.eqidx = [67 ];
M_.mapping.II.eqidx = [66 ];
M_.mapping.WW.eqidx = [68 ];
M_.mapping.RR.eqidx = [71 75 ];
M_.mapping.QQ.eqidx = [70 ];
M_.mapping.RnRn.eqidx = [73 ];
M_.mapping.PIPPIP.eqidx = [74 ];
M_.mapping.OUTGAPOUTGAP.eqidx = [80 ];
M_.mapping.RkRk.eqidx = [72 75 ];
M_.mapping.NeNe.eqidx = [76 ];
M_.mapping.spreadspread.eqidx = [75 ];
M_.mapping.KK.eqidx = [65 ];
M_.mapping.rhorho.eqidx = [77 ];
M_.mapping.LabLab.eqidx = [69 ];
M_.mapping.phiephie.eqidx = [79 ];
M_.mapping.psipsi.eqidx = [78 ];
M_.mapping.LeLe.eqidx = [81 ];
M_.mapping.YYF.eqidx = [82 ];
M_.mapping.CCF.eqidx = [85 ];
M_.mapping.IIF.eqidx = [84 ];
M_.mapping.WWF.eqidx = [86 ];
M_.mapping.RRF.eqidx = [89 91 ];
M_.mapping.spreadspreadF.eqidx = [91 ];
M_.mapping.LabLabF.eqidx = [87 ];
M_.mapping.QQF.eqidx = [88 ];
M_.mapping.RkRkF.eqidx = [90 91 ];
M_.mapping.KKF.eqidx = [83 ];
M_.mapping.e_A.eqidx = [92 ];
M_.mapping.epsilonM.eqidx = [39 ];
M_.mapping.e_G.eqidx = [93 ];
M_.mapping.e_xi1.eqidx = [111 112 ];
M_.mapping.e_xi2.eqidx = [110 111 112 ];
M_.mapping.e_xi3.eqidx = [109 110 111 112 ];
M_.mapping.e_xi4.eqidx = [108 109 110 111 112 ];
M_.mapping.e_xi5.eqidx = [107 108 109 110 111 112 ];
M_.mapping.e_xi6.eqidx = [106 107 108 109 110 111 112 ];
M_.mapping.e_xi7.eqidx = [105 106 107 108 109 110 111 112 ];
M_.mapping.e_xi8.eqidx = [104 105 106 107 108 109 110 111 112 ];
M_.mapping.e_RS.eqidx = [112 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = true;
M_.state_var = [1 2 7 10 12 13 21 22 30 31 32 39 42 44 45 46 47 48 49 50 51 61 62 67 70 71 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 ];
M_.exo_names_orig_ord = [1:12];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(143, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(12, 1);
M_.params = NaN(24, 1);
M_.endo_trends = struct('deflator', cell(143, 1), 'log_deflator', cell(143, 1), 'growth_factor', cell(143, 1), 'log_growth_factor', cell(143, 1));
M_.NNZDerivatives = [431; -1; -1; ];
M_.static_tmp_nbr = [34; 13; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(7) = 0.0102;
ksie = M_.params(7);
M_.params(10) = 1;
phiX = M_.params(10);
M_.params(1) = 0.33;
alphha = M_.params(1);
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(3) = 0.500;
gammma = M_.params(3);
M_.params(6) = 0.025;
delta = M_.params(6);
M_.params(4) = 5.584;
chil = M_.params(4);
M_.params(5) = 0.333;
epsl = M_.params(5);
M_.params(8) = 1.5;
eta = M_.params(8);
M_.params(9) = 0.2;
G_over_Y = M_.params(9);
M_.params(15) = 0.75;
gam = M_.params(15);
M_.params(14) = 4.167;
els = M_.params(14);
M_.params(16) = 1;
sig = M_.params(16);
M_.params(12) = 1.5;
kpP = M_.params(12);
M_.params(11) = 0.3;
kpY = M_.params(11);
M_.params(18) = 7.0;
zzeta = M_.params(18);
M_.params(17) = 1;
kap = M_.params(17);
M_.params(13) = 0.7;
rho_r = M_.params(13);
M_.params(19) = 0.97;
rhosigma = M_.params(19);
rhog     = 0.97;
M_.params(20) = 0;
signal_corr_p = M_.params(20);
M_.params(21) = 0.0282985;
stdsigma2_p = M_.params(21);
M_.params(22) = 0.0282985;
stdsigma1_p = M_.params(22);
M_.params(23) = 1;
stdA = M_.params(23);
M_.params(24) = 1;
stdG = M_.params(24);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(23))^2;
M_.Sigma_e(2, 2) = (0)^2;
M_.Sigma_e(3, 3) = (M_.params(24))^2;
M_.Sigma_e(4, 4) = (1)^2;
M_.Sigma_e(5, 5) = (1)^2;
M_.Sigma_e(6, 6) = (1)^2;
M_.Sigma_e(7, 7) = (1)^2;
M_.Sigma_e(8, 8) = (1)^2;
M_.Sigma_e(9, 9) = (1)^2;
M_.Sigma_e(10, 10) = (1)^2;
M_.Sigma_e(11, 11) = (1)^2;
M_.Sigma_e(12, 12) = (1)^2;
steady;
resid(1); 
oo_.dr.eigval = check(M_,options_,oo_);
options_.nograph        = 1;
options_.irf = 40;
options_.order = 1;
options_.periods = 10000;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('BGGsticky_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('BGGsticky_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('BGGsticky_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('BGGsticky_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('BGGsticky_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('BGGsticky_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('BGGsticky_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
