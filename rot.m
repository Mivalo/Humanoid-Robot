function r = rot(angel,sort)

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