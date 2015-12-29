function animate_robot(dt,state)
tic
global par

plotOpts.LineWidth = 1;
plotOpts.Marker = '*';
figure(1)

    r = getJointPosition(state);

    xLeft = [r(1) r(4) r(7) r(10) r(13)];
    yLeft = [r(2) r(5) r(8) r(11) r(14)];
    zLeft = [r(3) r(6) r(9) r(12) r(15)];
    xRight = [r(25) r(22) r(19) r(16) r(1)];
    yRight = [r(26) r(23) r(20) r(17) r(2)];
    zRight = [r(27) r(24) r(21) r(18) r(3)];
    
    subplot(2,2,1)
    p = plot3(xLeft,yLeft,zLeft,'b');
    p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
    hold on 
    p = plot3(xLeft,yLeft,zLeft,'r');  
    p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
    axis([-2 2 -2 2 -0.5 2]);
    hold off
    grid on
    
    subplot(2,2,2)
    p = plot(xLeft,zLeft,'b');
        p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
    hold on 
    p = plot(xRight,zRight,'r');
        p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
        hold off
    axis([-2 2 -0.5 2]);
    grid on
    
    subplot(2,2,3)
    p = plot(yLeft,zLeft,'b');
        p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
    hold on 
    p = plot(yRight,zRight,'r');
        p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
        hold off
    axis([-2 2 -0.5 2]);
    grid on
    
    subplot(2,2,4)
    p = plot(xLeft,yLeft,'b');
            p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
    hold on 
    p = plot(xRight,yRight,'r');
            p.LineWidth = plotOpts.LineWidth;
    p.Marker = plotOpts.Marker;
        hold off
    axis([-2 2 -2 2]);
    grid on
    
    drawnow
    pause(dt - toc);
end