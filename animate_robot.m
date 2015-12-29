function animate_robot(state)

global par
position = state(length(state)/2+1:end);
figure(1)

    r = getJointPosition(position);

    xArray = [r(19) r(16) r(13) r(1) r(4) r(7) r(10)];
    yArray = [r(20) r(17) r(14) r(2) r(5) r(8) r(11)];
    zArray = [r(21) r(18) r(15) r(3) r(6) r(9) r(12)];
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
    grid on
    drawnow
%     pause(par.stepSize/2);
end