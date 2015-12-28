function animate_robot(state,dimensions)

global par

figure(1)
if dimensions == 3

    [ pos;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*par.posStraight(:,1);
       anklePL;
       ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(anklePL+kneeL,'x')*par.posStraight(:,2);
       anklePL+kneeL;
       ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL+anklePL,'x')*2*par.posStraight(:,2) + ...
       rot(hipRL,'y')*rot(hipPL+ankleRL,'x')*par.posStraight(:,3);
       hipPL+kneeL+anklePL;
       hipRL+ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL+anklePL,'x')*2*par.posStraight(:,2) - ...
       rot(hipRL,'y')*rot(hipPL+ankleRL,'x')*2*par.posStraight(:,5) - ...
       rot(hipRR+hipRL+kneeR,'y')*rot(hipPR,'x')*par.posStraight(:,1);
       hipPR;
       hipRR;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL,'x')*2*par.posStraight(:,2) - ...
       rot(hipRR,'y')*rot(hipPR,'x')*2*par.posStraight(:,1) - ...
       rot(hipRR,'y')*rot(kneeR,'x')*par.posStraight(:,1);
       kneeR;
       hipRR];
    
    r = [rot(state(7),'y')*rot(state(6),'x')*2*posStraight(:,1);
           state(6);
           state(7);
           rot(state(7),'y')*rot(state(6),'x')*2*posStraight(:,1) + ...
           rot(state(7),'y')*rot(state(8),'x')*2*posStraight(:,2);
           state(8);
           state(7);
           rot(state(7),'y')*rot(state(6),'x')*2*posStraight(:,1) + ...
           rot(state(7),'y')*rot(state(8),'x')*2*posStraight(:,2) + ...
           rot(state(10),'y')*rot(state(9),'x')*2*posStraight(:,3);
           state(9);
           state(10)];
       

    xArray = [0 r(1) r(6) r(11)];
    yArray = [0 r(2) r(7) r(12)];
    zArray = [0 r(3) r(8) r(13)];
    subplot(2,2,1)
    plot3(xArray,yArray,zArray,'-O');
    axis([-2 2 -2 2 -0.5 2]);
    grid on
    subplot(2,2,2)
    plot(xArray,zArray,'-O');
    axis([-2 2 -0.5 2]);
    grid on
    subplot(2,2,3)
    plot(yArray,zArray,'-O');
    axis([-2 2 -0.5 2]);
    grid on
    subplot(2,2,4)
    plot(xArray,yArray,'-O');
    axis([-2 2 -2 2]);
else
    r = workspace_config_2D(state,'pos');

    xArray = [r(1) r(3) r(6) r(9) r(6) r(12) r(15)];
    yArray = [r(2) r(4) r(7) r(10) r(7) r(13) r(16)];

    plot(xArray,yArray,'-O');
    axis([-2 2 -2 2]);
end 

grid on
drawnow
pause(stepSize/2);
end