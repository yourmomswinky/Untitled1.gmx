// needs correcting for pedestrian

if dead = false{
    if !wander{
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
        
        if collision_point(x, y, obj_wander_marker, false, true){
            if random(50) > 49.90 {wander = true}
            
            }
        
        // wander zones
        }else{
        
        if !foundTarget{
            // find the target
            targetMarker = instance_nearest(x, y, obj_wander_marker);
            targetX = targetMarker.x + irandom(targetMarker.sprite_width) - targetMarker.sprite_width/2;
            targetY = targetMarker.y + irandom(targetMarker.sprite_height) - targetMarker.sprite_height/2;
            foundTarget = true;
            
            // create the path
            // grid path was being a bitch so if it ever becomes a problem just change back to grid and fix it.
            //mp_grid_path(targetMarker.grid, path, x, y, targetX, targetY, false);
            mp_linear_step(targetX, targetY, 2.5, false);
            image_angle = point_direction(x, y, targetX, targetY);
            
            //path_start(path, 2.5, path_action_stop, false);
            foundTarget = true
            
            }
        
        if point_distance(x, y, targetX, targetY) < 64{
            //path_end();
            foundTarget = false;
            
            // need to add a delay betweeen changing targets
            if irandom(2)>1{
                wander = false
                target = instance_nearest(x, y, obj_walk_marker);
                
                }
            // need to add returning to normal mode
            
            }
        
        }
    
    }
