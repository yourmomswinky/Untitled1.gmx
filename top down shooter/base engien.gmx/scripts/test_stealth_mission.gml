if objectiveNumber = 1{
    with instance_create(4224, 2176, obj_enemy){
        alert = false;
        patrolPath = pth_mission_test_stealth_patrol_one;
        patrolSpeed = 2;
        floorNumber = 1;
        active = true;
        patrolEnd = path_action_stop;
        
        }
    
    addedObject = instance_create(4736, 3072, obj_objective);
    with addedObject{
        floorNumber = 1;    // need to add to a building
        active = true;      // script and array
        
        }
    
    objectiveNumber = 2;
    
    }
    
if objectiveNumber = 2{
    objective = "get the bag.";
    
    }
    
if objectiveNumber = 3{
    with addedObject {instance_destroy()};
    objective = "return to the contact."
    
    }
