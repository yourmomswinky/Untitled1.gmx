// capping the arm travel distance
// left

if point_distance(preTskArmLeftOneX, preTskArmLeftOneY, tskArmLeftOneX, tskArmLeftOneY) > 2{
    var dir
    dir = point_direction(preTskArmLeftOneX, preTskArmLeftOneY, tskArmLeftOneX, tskArmLeftOneY);
    tskArmLeftOneY = preTskArmLeftOneY + lengthdir_y(2, dir);
    tskArmLeftOneY = preTskArmLeftOneY + lengthdir_y(2, dir);
    
    }
    
if point_distance(preTskArmLeftTwoX, preTskArmLeftTwoY, tskArmLeftTwoX, tskArmLeftTwoY) > 2{
    var dir
    dir = point_direction(preTskArmLeftTwoX, preTskArmLeftTwoY, tskArmLeftTwoX, tskArmLeftTwoY);
    tskArmLeftTwoY = preTskArmLeftTwoY + lengthdir_y(2, dir);
    tskArmLeftTwoY = preTskArmLeftTwoY + lengthdir_y(2, dir);
    
    }
// right
    
if point_distance(preTskArmRightOneX, preTskArmRightOneY, tskArmRightOneX, tskArmRightOneY) > 2{
    var dir
    dir = point_direction(preTskArmRightOneX, preTskArmRightOneY, tskArmRightOneX, tskArmRightOneY);
    tskArmRightOneY = preTskArmRightOneY + lengthdir_y(2, dir);
    tskArmRightOneY = preTskArmRightOneY + lengthdir_y(2, dir);
    
    }
    
if point_distance(preTskArmRightTwoX, preTskArmRightTwoY, tskArmRightTwoX, tskArmRightTwoY) > 2{
    var dir
    dir = point_direction(preTskArmRightTwoX, preTskArmRightTwoY, tskArmRightTwoX, tskArmRightTwoY);
    tskArmRightTwoY = preTskArmRightTwoY + lengthdir_y(2, dir);
    tskArmRightTwoY = preTskArmRightTwoY + lengthdir_y(2, dir);
    
    }
