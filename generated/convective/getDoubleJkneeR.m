function con = getDoubleJkneeR(in1)
%GETDOUBLEJKNEER
%    CON = GETDOUBLEJKNEER(IN1)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    29-Dec-2015 23:28:52

anklePR = in1(31,:);
ankleRR = in1(32,:);
hipJR = in1(36,:);
hipPR = in1(34,:);
hipRR = in1(35,:);
kneeR = in1(33,:);
rootJ = in1(24,:);
rootP = in1(22,:);
rootR = in1(23,:);
con = sparse([32,33,37,38,39,32,33,37,38,39,32,33,37,38,39,37,38,39,37,39,32,33,37,38,39,32,33,37,38,39,32,33,37,38,39,32,33,37,38,39],[4,4,4,4,4,5,5,5,5,5,6,6,6,6,6,13,13,13,14,14,15,15,15,15,15,16,16,16,16,16,17,17,17,17,17,18,18,18,18,18],[cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP)).*(-3.0./2.0e1)+sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(3.0./2.0e1),sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP)).*(-3.0./2.0e1)-cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))-cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))+sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP)).*(-3.0./1.0e1)+cos(anklePR).*(cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))+sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)-sin(anklePR).*(sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))-cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(3.0./1.0e1),sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP)).*(-3.0./1.0e1)-cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(3.0./1.0e1)+cos(anklePR).*cos(ankleRR).*(sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))-cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR))+sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(kneeR).*(cos(hipPR).*cos(hipRR).*cos(rootP).*sin(rootR)+cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipRR)-cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR).*sin(rootJ)).*(-3.0./2.0e1)+sin(kneeR).*(cos(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootP).*cos(rootR).*sin(rootJ).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./2.0e1),sin(kneeR).*(cos(hipPR).*cos(hipRR).*cos(rootP).*sin(rootR)+cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipRR)-cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR).*sin(rootJ)).*(-3.0./2.0e1)-cos(kneeR).*(cos(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootP).*cos(rootR).*sin(rootJ).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(sin(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))+cos(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(cos(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))-sin(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1),cos(anklePR).*(cos(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))-sin(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1)-sin(anklePR).*(sin(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))+cos(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1)-cos(kneeR).*(cos(hipPR).*cos(hipRR).*cos(rootP).*sin(rootR)+cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipRR)-cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR).*sin(rootJ)).*(3.0./1.0e1)+sin(kneeR).*(cos(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootP).*cos(rootR).*sin(rootJ).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./1.0e1),sin(kneeR).*(cos(hipPR).*cos(hipRR).*cos(rootP).*sin(rootR)+cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipRR)-cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR).*sin(rootJ)).*(-3.0./1.0e1)-cos(kneeR).*(cos(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootP).*cos(rootR).*sin(rootJ).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./1.0e1)+cos(anklePR).*cos(ankleRR).*(sin(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))+cos(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(cos(kneeR).*(cos(hipPR).*cos(hipRR).*sin(rootP).*sin(rootR)+cos(rootJ).*cos(rootR).*sin(hipRR).*sin(rootP)-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootJ).*sin(rootP))-sin(kneeR).*(sin(rootP).*sin(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(rootR).*sin(rootJ).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))+cos(hipRR).*cos(rootJ).*cos(rootR).*sin(hipJR).*sin(rootP))).*(1.0./2.0e1),sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))).*(3.0./2.0e1)-cos(kneeR).*(sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipRR).*sin(hipPR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./2.0e1),cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))).*(-3.0./2.0e1)-sin(kneeR).*(sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipRR).*sin(hipPR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))+sin(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))-cos(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))).*(3.0./1.0e1)+cos(anklePR).*(sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))-cos(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePR).*(cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))+sin(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)-cos(kneeR).*(sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipRR).*sin(hipPR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1),cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))).*(-3.0./1.0e1)-sin(kneeR).*(sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipRR).*sin(hipPR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)-cos(anklePR).*cos(ankleRR).*(cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))+sin(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR)))-cos(kneeR).*(sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*sin(hipPR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePR).*cos(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePR).*cos(ankleRR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)-cos(ankleRR).*sin(anklePR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./2.0e1)-cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./2.0e1),cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(-3.0./2.0e1)-sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(-1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)-cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+cos(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+sin(anklePR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(-3.0./1.0e1)-sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)-cos(anklePR).*cos(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./2.0e1),sin(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(rootP).*cos(rootR).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))).*(3.0./2.0e1)-cos(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR)).*(3.0./2.0e1),cos(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(rootP).*cos(rootR).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))).*(-3.0./2.0e1)-sin(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR)).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(cos(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))+sin(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(-1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*(sin(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))-cos(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(1.0./2.0e1),sin(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(rootP).*cos(rootR).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))).*(3.0./1.0e1)+cos(anklePR).*(sin(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))-cos(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(1.0./2.0e1)+sin(anklePR).*(cos(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))+sin(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(1.0./2.0e1)-cos(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR)).*(3.0./1.0e1),cos(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(rootP).*cos(rootR).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR))).*(-3.0./1.0e1)-sin(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipPR)).*(3.0./1.0e1)-cos(anklePR).*cos(ankleRR).*(cos(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))+sin(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*(sin(kneeR).*((cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)))-cos(kneeR).*(cos(hipPR).*cos(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(hipRR).*cos(rootR).*sin(hipPR).*sin(rootP))).*(1.0./2.0e1),sin(kneeR).*(sin(hipJR).*sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipJR)).*(-3.0./2.0e1)-cos(kneeR).*(cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))-sin(hipPR).*sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipPR).*cos(rootP).*cos(rootR).*sin(hipRR)).*(3.0./2.0e1),sin(kneeR).*(cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))-sin(hipPR).*sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipPR).*cos(rootP).*cos(rootR).*sin(hipRR)).*(-3.0./2.0e1)+cos(kneeR).*(sin(hipJR).*sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./2.0e1),cos(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))+sin(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1)-sin(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))-cos(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1),sin(kneeR).*(sin(hipJR).*sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipJR)).*(-3.0./1.0e1)-cos(anklePR).*(sin(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))-cos(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1)-sin(anklePR).*(cos(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))+sin(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1)-cos(kneeR).*(cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))-sin(hipPR).*sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipPR).*cos(rootP).*cos(rootR).*sin(hipRR)).*(3.0./1.0e1),sin(kneeR).*(cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))-sin(hipPR).*sin(hipRR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(hipPR).*cos(rootP).*cos(rootR).*sin(hipRR)).*(-3.0./1.0e1)+cos(kneeR).*(sin(hipJR).*sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*sin(hipJR)).*(3.0./1.0e1)-cos(ankleRR).*sin(anklePR).*(sin(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))-cos(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1)+cos(anklePR).*cos(ankleRR).*(cos(kneeR).*(sin(hipJR).*sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipJR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(hipJR).*sin(rootP))+sin(kneeR).*(-cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+sin(hipPR).*sin(hipRR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(rootR).*sin(hipRR).*sin(rootP))).*(1.0./2.0e1),sin(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./2.0e1),cos(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(-3.0./2.0e1),cos(anklePR).*cos(kneeR).*sin(ankleRR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(-1.0./2.0e1)+sin(anklePR).*sin(ankleRR).*sin(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1),sin(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+cos(anklePR).*sin(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)+cos(kneeR).*sin(anklePR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1),cos(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(-3.0./1.0e1)-cos(anklePR).*cos(ankleRR).*cos(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)+cos(ankleRR).*sin(anklePR).*sin(kneeR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./2.0e1)],42,18);
