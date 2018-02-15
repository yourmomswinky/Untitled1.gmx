if holdingWeapon{
    if point_distance(tskArmRightTwoX, tskArmRightTwoY, tskArmLeftTwoX, tskArmLeftTwoY) != 64{
        var dir
        tskArmRightTwoX = tskArmLeftTwoX  - lengthdir_x(32, image_angle + 100);
        tskArmRightTwoY = tskArmLeftTwoY  - lengthdir_y(32, image_angle + 100);
        
        }
    
    }
