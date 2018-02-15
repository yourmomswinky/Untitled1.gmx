frame += 2;
if frame > 40 {frame = 0};

tskArmLeftOneX = lengthdir_x(25, 90-frame*2);
tskArmLeftOneY = lengthdir_y(25, 90-frame*2);
tskArmLeftTwoX = tskArmLeftOneX + lengthdir_x(30, frame*-3.5);
tskArmLeftTwoY = tskArmLeftOneY + lengthdir_y(30, frame*-3.5);

tskArmRightOneX = 15;//+frame*0.4;
tskArmRightOneY = 15+frame;
tskArmRightTwoX = 30;
tskArmRightTwoY = 0+frame*2;
//sk_cap_arms();
