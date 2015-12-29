function [stateNew,legswitch] = switch_leg(stateOld)
    legswitch = false;
    s = [stateOld(1);
         stateOld(1)+stateOld(2);
         stateOld(1)+stateOld(2) + stateOld(3);
         stateOld(1)+stateOld(2) + stateOld(4);
         stateOld(1)+stateOld(2) + stateOld(4) + stateOld(5);
         stateOld(6);
         stateOld(6)+stateOld(7);
         stateOld(6)+stateOld(7) + stateOld(8);
         stateOld(6)+stateOld(7) + stateOld(9);
         stateOld(6)+stateOld(7) + stateOld(9) + stateOld(10)];
    pos = workspace_config_2D(stateOld,'pos');
    swingFootY = pos(14);
    if swingFootY <= 0;
        stateNew = [s(5); -stateOld(5); s(3)-s(4); -stateOld(4); -stateOld(2);
                    s(10); -stateOld(10); s(8)-s(9); -stateOld(9); -stateOld(7)];
        legswitch = true;
    else
        stateNew = stateOld;
    end
    