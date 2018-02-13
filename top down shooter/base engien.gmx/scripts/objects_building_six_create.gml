// /objects_building_six_create

// floor one

allObjectsBuildingSix[0] = instance_create(3552, 4864, obj_door);
with allObjectsBuildingSix[0]{
    floorNumber = 1;
    transferTo = "UP";
    xnPos = x - 128; ynPos = y;
    }
    
// floor two

allObjectsBuildingSix[array_length_1d(allObjectsBuildingSix)] = instance_create(3552, 4864, obj_door);
with allObjectsBuildingSix[array_length_1d(allObjectsBuildingSix) - 1]{
    floorNumber = 2;
    transferTo = "DOWN";
    xnPos = x - 128; ynPos = y;
    }
    
for(i = 0; i < 3; i += 1){
    allObjectsBuildingSix[array_length_1d(allObjectsBuildingSix)] = instance_create(2784, 4960 + 64*i, obj_solid);
    with allObjectsBuildingSix[array_length_1d(allObjectsBuildingSix) - 1]{
        floorNumber = 2;
        
        }
    
    }
