function con = getDoubleJankleRL(in1)
%GETDOUBLEJANKLERL
%    CON = GETDOUBLEJANKLERL(IN1)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    29-Dec-2015 23:28:48

anklePL = in1(25,:);
ankleRL = in1(26,:);
hipJL = in1(30,:);
hipPL = in1(28,:);
hipRL = in1(29,:);
kneeL = in1(27,:);
rootJ = in1(24,:);
rootP = in1(22,:);
rootR = in1(23,:);
con = sparse([19,21,19,21,19,21,19,21,19,21,19,21,19,21,19,21,19,21],[4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12],[sin(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(-1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*(cos(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR))+sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)+cos(ankleRL).*sin(anklePL).*(sin(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR))-cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(-1.0./2.0e1)+cos(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR))+sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)-sin(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR))-cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(ankleRL).*(sin(rootP).*sin(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL))-cos(hipJL).*cos(hipRL).*cos(rootJ).*cos(rootR).*sin(rootP)).*(1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*(cos(kneeL).*(cos(hipPL).*cos(hipRL).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRL).*sin(rootP)-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootJ).*sin(rootP))-sin(kneeL).*(sin(rootP).*sin(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL))+cos(hipRL).*cos(rootJ).*cos(rootR).*sin(hipJL).*sin(rootP))).*(1.0./2.0e1)+cos(ankleRL).*sin(anklePL).*(sin(kneeL).*(cos(hipPL).*cos(hipRL).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRL).*sin(rootP)-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootJ).*sin(rootP))+cos(kneeL).*(sin(rootP).*sin(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL))+cos(hipRL).*cos(rootJ).*cos(rootR).*sin(hipJL).*sin(rootP))).*(1.0./2.0e1),cos(ankleRL).*(sin(rootP).*sin(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL))-cos(hipJL).*cos(hipRL).*cos(rootJ).*cos(rootR).*sin(rootP)).*(1.0./2.0e1)+cos(anklePL).*sin(ankleRL).*(cos(kneeL).*(cos(hipPL).*cos(hipRL).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRL).*sin(rootP)-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootJ).*sin(rootP))-sin(kneeL).*(sin(rootP).*sin(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL))+cos(hipRL).*cos(rootJ).*cos(rootR).*sin(hipJL).*sin(rootP))).*(1.0./2.0e1)-sin(anklePL).*sin(ankleRL).*(sin(kneeL).*(cos(hipPL).*cos(hipRL).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRL).*sin(rootP)-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootJ).*sin(rootP))+cos(kneeL).*(sin(rootP).*sin(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL))+cos(hipRL).*cos(rootJ).*cos(rootR).*sin(hipJL).*sin(rootP))).*(1.0./2.0e1),sin(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))-cos(hipJL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*(sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))-cos(kneeL).*(sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*sin(hipPL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)-cos(ankleRL).*sin(anklePL).*(cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))+sin(kneeL).*(sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*sin(hipPL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))-cos(hipJL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)+cos(anklePL).*sin(ankleRL).*(sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))-cos(kneeL).*(sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*sin(hipPL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePL).*sin(ankleRL).*(cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))+sin(kneeL).*(sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*sin(hipPL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePL).*cos(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)-cos(ankleRL).*sin(anklePL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)-cos(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+cos(ankleRL).*sin(anklePL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePL).*cos(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)-cos(ankleRL).*sin(anklePL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(ankleRL).*((sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL))).*(-1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*(sin(kneeL).*((cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)))-cos(kneeL).*(cos(hipPL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootP))).*(1.0./2.0e1)-cos(ankleRL).*sin(anklePL).*(cos(kneeL).*((cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)))+sin(kneeL).*(cos(hipPL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootP))).*(1.0./2.0e1),cos(ankleRL).*((sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL))).*(-1.0./2.0e1)+cos(anklePL).*sin(ankleRL).*(sin(kneeL).*((cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)))-cos(kneeL).*(cos(hipPL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootP))).*(1.0./2.0e1)+sin(anklePL).*sin(ankleRL).*(cos(kneeL).*((cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)))+sin(kneeL).*(cos(hipPL).*cos(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRL).*cos(rootR).*sin(hipPL).*sin(rootP))).*(1.0./2.0e1),sin(ankleRL).*(cos(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipJL).*cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipJL).*cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP)).*(-1.0./2.0e1)+cos(ankleRL).*sin(anklePL).*(cos(kneeL).*(sin(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(hipJL).*sin(rootP))+sin(kneeL).*(-cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPL).*sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(rootR).*sin(hipRL).*sin(rootP))).*(1.0./2.0e1)+cos(anklePL).*cos(ankleRL).*(sin(kneeL).*(sin(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(hipJL).*sin(rootP))-cos(kneeL).*(-cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPL).*sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(rootR).*sin(hipRL).*sin(rootP))).*(1.0./2.0e1),cos(ankleRL).*(cos(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipJL).*cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipJL).*cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP)).*(-1.0./2.0e1)-cos(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(hipJL).*sin(rootP))-cos(kneeL).*(-cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPL).*sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(rootR).*sin(hipRL).*sin(rootP))).*(1.0./2.0e1)-sin(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipJL).*sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipJL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(hipJL).*sin(rootP))+sin(kneeL).*(-cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPL).*sin(hipRL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(rootR).*sin(hipRL).*sin(rootP))).*(1.0./2.0e1),sin(ankleRL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)-cos(anklePL).*cos(ankleRL).*sin(kneeL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)-cos(ankleRL).*cos(kneeL).*sin(anklePL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1),cos(ankleRL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)+cos(anklePL).*sin(ankleRL).*sin(kneeL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)+cos(kneeL).*sin(anklePL).*sin(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)],42,18);
