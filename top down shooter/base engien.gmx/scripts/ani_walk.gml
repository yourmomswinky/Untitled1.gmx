frame += .75;
if frame > 40 {frame = 0}

tskArmLeftOneY = -5-tskArmLeftOneX*0.5;
tskArmLeftTwoX = -tskArmLeftOneX*1.3 + 20;
tskArmLeftTwoY = -5

if frame < 10{
    tskArmLeftOneX = -frame;
    
    }else if frame < 30{
    tskArmLeftOneX = -10+(frame-10);
    
    }else{
    tskArmLeftOneX = 10-(frame-30);
    
    }
    
tskArmRightOneY = 5+tskArmRightOneX*0.5;
tskArmRightTwoX = -tskArmRightOneX*1.3 + 20;
tskArmRightTwoY = 5

if frame < 10{
    tskArmRightOneX = -frame;
    
    }else if frame < 30{
    tskArmRightOneX = -10+(frame-10);
    
    }else{
    tskArmRightOneX = 10-(frame-30);
    
    }
    
tskArmRightOneX *= -1;
