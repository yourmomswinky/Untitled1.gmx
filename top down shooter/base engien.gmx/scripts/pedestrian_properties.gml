// needs correcting for pedestrian

if dead = false{

speed = 2.5;
    
if collision_line(x, y, x + lengthdir_x(64, direction), y + lengthdir_y(64, direction), obj_car, false, true){
    if speed > 0{
        spd = 0;
        }
    }

if point_distance(x, y, target.x, target.y) < 50{
    found = false;
    count = 1;
    
    while found = false{
        i = irandom_range(1, 4);
        if i = 1{
            if target.UP = true{
                travelTarget = collision_line_first(target.x, target.y - 100,
                target.x, target.y - 10000, obj_walk_marker, true, true);
                
                if travelTarget != lastTarget{
                    found = true;
                    lastTarget = target;
                    
                    }
                }
            }
        if i = 2{
            if target.DOWN = true{
                travelTarget = collision_line_first(target.x, target.y + 100,
                target.x, target.y + 10000, obj_walk_marker, true, true);
                
                if travelTarget != lastTarget{
                    found = true;
                    lastTarget = target;
                    
                    }
                }
            }
        if i = 3{
            if target.LEFT = true{
                travelTarget = collision_line_first(target.x - 100, target.y,
                target.x - 10000, target.y, obj_walk_marker, true, true);
                
                if travelTarget != lastTarget{
                    found = true;
                    lastTarget = target;
                    
                    }
                }
            }
        if i = 4{
            if target.RIGHT = true{
                travelTarget = collision_line_first(target.x + 100, target.y,
                target.x + 10000, target.y, obj_walk_marker, true, true);
                
                if travelTarget != lastTarget{
                    found = true;
                    lastTarget = target;
                    
                    }
                }
            }
        
        count+=1;
        if count > 50{
            found = true;
            travelTarget = lastTarget;
            
            }
        
        }
        
    target = travelTarget;
    
    }
    
    if abs(direction - point_direction(x, y, target.x, target.y)) < 3 or abs(direction - point_direction(x, y, target.x, target.y)) > 357{
        turnSpeed = speed * 0.2;
        
        }else{
        turnSpeed = speed * 2 + 10;
        
        }

if collision_line(x, y, x + lengthdir_x(40, direction), y + lengthdir_y(40, direction), obj_walker, false, true){
    direction += 0.1;
    
    }
gradually_turn(self, target, turnSpeed, 1);
image_angle = direction;

}
