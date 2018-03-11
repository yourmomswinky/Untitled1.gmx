if objectiveNumber = 1{
    soundPlayed = false;
    trackLoop = false;
    waitTrack = snd_milestones00
    trackAfterLoop = snd_milestones01;
    track = snd_milestones00;
    addedObject = instance_create(160, 288 - 32, obj_objective);
    with addedObject{
        floorNumber = 1;
        image_yscale = 2;
        active = true;
        }
    objectiveNumber = 2;
    }

if objectiveNumber = 2{
    objective = "get the bag";
    }

if objectiveNumber = 3{
    waitTrack = snd_milestones01;
    soundPlayed = false;
    trackLoop = false;
    trackAfterLoop = snd_milestones03;
    track = snd_milestones02;
    with addedObject instance_destroy();
    addedObject = instance_create(1568 + 400, 320, obj_objective);
    with addedObject{
        active = true;
        floorNumber = 3;
        }
    obj_object_adder.allObjectsTwo[array_length_1d(obj_object_adder.allObjectsTwo)+1] = addedObject;
    objectiveNumber = 4;
    }

if objectiveNumber = 4{
    
    }

if objectiveNumber = 5{
    objective = "go outside."
    with addedObject instance_destroy();
    addedObject =  instance_create(1312 + 4*64, 256, obj_objective)
    with addedObject{
        floorNumber = 1;
        image_yscale = 2;
        active = true;
        }
    
    }
    
if objectiveNumber = 6{
    with addedObject{
        instance_destroy();
        
        }
    
    objective = "kill the enemies."
    waitTrack = snd_milestones03;
    soundPlayed = false;
    trackLoop = false;
    trackAfterLoop = snd_milestones05;
    track = snd_milestones04;
    with instance_create(1824, 960 - 32, obj_enemy){
        floorNumber = 1;
        active = true;
        dead = false;
        }
    with instance_create(1920, 896 - 32, obj_enemy){
        floorNumber = 1;
        active = true;
        dead = false;
        }
    with instance_create(1536, 384, obj_enemy){
        floorNumber = 2;
        active = true;
        dead = false;
        }
    with instance_create(1760, 672, obj_enemy){
        floorNumber = 2;
        active = true;
        dead = false;
        }
    with instance_create(1964, 1472, obj_enemy){
        floorNumber = 2;
        active = true;
        dead = false;
        }
    with instance_create(2048, 672, obj_enemy){
        floorNumber = 2;
        active = true;
        dead = false;
        }
    with instance_create(1152, 1984, obj_enemy){
        floorNumber = 1;
        active = true;
        dead = false;
        }
    objectiveNumber = 7;        // need to change the
    global.aliveEnemies = 7;    // band aid solution.
    }
    
if objectiveNumber = 7{
    objective = "kill the enemies."
    
    if global.aliveEnemies = 0{
        objectiveNumber = 8;
        addedObject = instance_create(2944, 4672, obj_objective);
        
        with addedObject{
            floorNumber = 2;
            active = true;
            
            }
        
        with instance_create(2720, 5024, obj_cutscene){
            cutscene = cutscene_test_bank;
            image_yscale = 3;
            
            }
        
        }
    
    }

if objectiveNumber = 8{
    objective = "get the bag."
    
    }

if objectiveNumber = 9{
    objective = "return to brandon."
    waitTrack = snd_milestones05;
    soundPlayed = false;
    trackLoop = false;
    trackAfterLoop = snd_milestones07;
    track = snd_milestones06;
    
    with addedObject{
        instance_destroy();
        
        }
    objectiveNumber = 10;
    
    }
    
if objectiveNumber = 10{
    
    
    }
