function r = rot(angel,sort)
    if (nargin == 1)
        if (size(angel) ~= 3)
            error('angel not defined');
        end
        z = [cos(angel(3)) -sin(angel(3)) 0;
            sin(angel(3)) cos(angel(3)) 0;
            0        0         1];
        y = [cos(angel(2)) 0 sin(angel(2));
             0          1           0;
              -sin(angel(2)) 0  cos(angel(2))];
        x = [1 0 0;
            0 cos(angel(1)) -sin(angel(1));
            0 sin(angel(1)) cos(angel(1))];
        r = z*y*x;
    else 
        switch sort
        case 'y'
            r = [cos(angel) 0 sin(angel);
                 0          1           0;
                  -sin(angel) 0  cos(angel)];
        case 'x'  
            r = [1 0 0;
                0 cos(angel) -sin(angel);
                0 sin(angel) cos(angel)];

        case 'z'    
            r = [cos(angel) -sin(angel) 0;
                sin(angel) cos(angel) 0;
                0        0         1];
        end
    end    
end    