function contacts = getContactPosition(in1)
%GETCONTACTPOSITION
%    CONTACTS = GETCONTACTPOSITION(IN1)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    04-Jan-2016 22:57:38

anklePL = in1(25,:);
ankleRL = in1(26,:);
anklePR = in1(31,:);
ankleRR = in1(32,:);
hipJL = in1(30,:);
hipJR = in1(36,:);
hipPL = in1(28,:);
hipRL = in1(29,:);
hipPR = in1(34,:);
hipRR = in1(35,:);
kneeL = in1(27,:);
kneeR = in1(33,:);
rootJ = in1(24,:);
rootP = in1(22,:);
rootR = in1(23,:);
rootX = in1(19,:);
rootY = in1(20,:);
rootZ = in1(21,:);
contacts = [rootX-cos(rootJ).*cos(rootR).*(3.0./2.0e1)-(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./5.0)-cos(rootP).*cos(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL)).*(3.0./5.0)-cos(hipJL).*cos(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./5.0);rootY-cos(rootR).*sin(rootJ).*(3.0./2.0e1)+(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-sin(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(3.0./1.0e1)-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1);rootZ+sin(rootR).*(3.0./2.0e1)+cos(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1)+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR).*(3.0./1.0e1);rootX-cos(rootJ).*cos(rootR).*(3.0./2.0e1)-(cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./5.0)-cos(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./1.0e1)-cos(rootP).*cos(rootR).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL)).*(3.0./5.0)-cos(hipJL).*cos(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./5.0)+cos(anklePL).*sin(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-sin(anklePL).*sin(ankleRL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1);rootY-cos(rootR).*sin(rootJ).*(3.0./2.0e1)+(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-sin(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+cos(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)-cos(anklePL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-sin(anklePL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL)).*(3.0./1.0e1)-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1);rootZ+sin(rootR).*(3.0./2.0e1)+cos(kneeL).*(sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+sin(ankleRL).*((cos(hipPL).*sin(hipJL)-cos(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJL).*sin(hipPL)+cos(hipJL).*cos(hipPL).*sin(hipRL))+cos(hipJL).*cos(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./1.0e1)+sin(kneeL).*((cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))-cos(hipRL).*sin(hipJL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+sin(hipRL).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1)+cos(anklePL).*cos(ankleRL).*(cos(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))-sin(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-cos(ankleRL).*sin(anklePL).*(sin(kneeL).*(sin(hipRL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRL).*sin(hipPL).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPL).*cos(hipRL).*cos(rootR).*sin(rootP))+cos(kneeL).*(-(cos(hipJL).*cos(hipPL)+sin(hipJL).*sin(hipPL).*sin(hipRL)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJL).*sin(hipPL)-cos(hipPL).*sin(hipJL).*sin(hipRL))+cos(hipRL).*sin(hipJL).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)+cos(hipRL).*sin(hipPL).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-cos(hipPL).*cos(hipRL).*cos(rootP).*cos(rootR).*(3.0./1.0e1);rootX+cos(rootJ).*cos(rootR).*(3.0./2.0e1)-(cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./5.0)-cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR)).*(3.0./5.0)-cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./5.0);rootY+cos(rootR).*sin(rootJ).*(3.0./2.0e1)+(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(3.0./1.0e1)-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1);rootZ-sin(rootR).*(3.0./2.0e1)+cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1)+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*(3.0./1.0e1);rootX+cos(rootJ).*cos(rootR).*(3.0./2.0e1)-(cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./5.0)-cos(ankleRR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./1.0e1)-cos(rootP).*cos(rootR).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR)).*(3.0./5.0)-cos(hipJR).*cos(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./5.0)+cos(anklePR).*sin(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-sin(anklePR).*sin(ankleRR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1);rootY+cos(rootR).*sin(rootJ).*(3.0./2.0e1)+(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-sin(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+cos(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)-cos(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-sin(anklePR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR)).*(3.0./1.0e1)-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1);rootZ-sin(rootR).*(3.0./2.0e1)+cos(kneeR).*(sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR)).*(3.0./1.0e1)+sin(ankleRR).*((cos(hipPR).*sin(hipJR)-cos(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))-cos(rootR).*sin(rootP).*(sin(hipJR).*sin(hipPR)+cos(hipJR).*cos(hipPR).*sin(hipRR))+cos(hipJR).*cos(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))).*(1.0./1.0e1)+sin(kneeR).*((cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR))+cos(rootP).*cos(rootR).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))-cos(hipRR).*sin(hipJR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR))).*(3.0./1.0e1)+sin(hipRR).*(sin(rootJ).*sin(rootP)+cos(rootJ).*cos(rootP).*sin(rootR)).*(3.0./1.0e1)+cos(anklePR).*cos(ankleRR).*(cos(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))-sin(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)-cos(ankleRR).*sin(anklePR).*(sin(kneeR).*(sin(hipRR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR))+cos(hipRR).*sin(hipPR).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(hipPR).*cos(hipRR).*cos(rootR).*sin(rootP))+cos(kneeR).*(-(cos(hipJR).*cos(hipPR)+sin(hipJR).*sin(hipPR).*sin(hipRR)).*(cos(rootJ).*cos(rootP)+sin(rootJ).*sin(rootP).*sin(rootR))+cos(rootR).*sin(rootP).*(cos(hipJR).*sin(hipPR)-cos(hipPR).*sin(hipJR).*sin(hipRR))+cos(hipRR).*sin(hipJR).*(cos(rootP).*sin(rootJ)-cos(rootJ).*sin(rootP).*sin(rootR)))).*(1.0./1.0e1)+cos(hipRR).*sin(hipPR).*(cos(rootJ).*sin(rootP)-cos(rootP).*sin(rootJ).*sin(rootR)).*(3.0./1.0e1)-cos(hipPR).*cos(hipRR).*cos(rootP).*cos(rootR).*(3.0./1.0e1)];
