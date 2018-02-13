/// slippery_collisions()

// this function (as it might suggest in the name)
// makes the collisions slippery, this does NOT check
// for collisions

// declare variables

iOther = instance_nearest(x, y, obj_solid);

if iOther.floorNumber = floorNumber or iOther.floorNumber = "none"
{

xOther = iOther.x;
yOther = iOther.y;
xDifferenece = x - xOther;
yDifferenece = y - yOther;
xMagnitude = abs(xDifferenece);
yMagnitude = abs(yDifferenece);

curx = x;

// determine the direction the player will slip in
if yDifferenece < 0 and yMagnitude > xMagnitude dir = "UP";
if yDifferenece > 0 and yMagnitude > xMagnitude dir = "DOWN";
if xDifferenece < 0 and xMagnitude > yMagnitude dir = "LEFT";
if xDifferenece > 0 and xMagnitude > yMagnitude dir = "RIGHT";

//take action to make collision slippery

if dir = "UP" y = yprevious;
else if dir = "DOWN" y = yprevious;
else if dir = "LEFT" x = xprevious;
else if dir = "RIGHT" x = xprevious;

}
