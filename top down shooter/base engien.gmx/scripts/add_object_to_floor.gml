/// add_object_to_floor(x, y, obj, floor or "none")
var xAdd = argument0;
var yAdd = argument1;
var objAdd = argument2;
var floorDependence = argument3;

if !instance_place(xAdd, yAdd, objAdd){
    returnInstance = instance_create(xAdd, yAdd, objAdd);
    with returnInstance{
        roomDependent = floorDependence;
        
        }
    
    }
return returnInstance;
