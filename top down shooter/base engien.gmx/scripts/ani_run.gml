frame += 1;
if frame > 40 {frame = 0}

tskArmLeftOneY = -10
tskArmLeftTwoX = tskArmLeftOneX*5;
tskArmLeftTwoY = -5;

if frame < 10{
    tskArmLeftOneX = -frame;
    
    }else if frame < 30{
    tskArmLeftOneX = -10+(frame-10);
    
    }else{
    tskArmLeftOneX = 10-(frame-30);
    
    }
    
tskArmRightOneY = 10
tskArmRightTwoY = 5;

if frame < 10{
    tskArmRightOneX = -frame;
    
    }else if frame < 30{
    tskArmRightOneX = -10+(frame-10);
    
    }else{
    tskArmRightOneX = 10-(frame-30);
    
    }
    
tskArmRightOneX *= -1;
tskArmRightTwoX = tskArmRightOneX*4;
