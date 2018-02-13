/// remove_object_from_floor(x, y, obj, floor)
var xAdd = argument0;
var yAdd = argument1;
var objRem = argument2;
floorNum = argument3;

with instance_nearest(xAdd, xAdd, objRem)
instance_destroy();
