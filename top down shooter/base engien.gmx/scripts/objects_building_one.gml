/// objects_building_one()

// create the objects
// first floor

allObjects[0] = instance_create(608, 448, obj_door);
with allObjects[0]{
    floorNumber = 1;
    transferTo = "UP";
    xnPos = 416; ynPos = 448;
    }

allObjects[1] = instance_create(608, 576, obj_door)
with allObjects[1]{
    floorNumber = 1;
    transferTo = "DOWN";
    xnPos = 416; ynPos = 576;
    }

// second floor

allObjects[2] = instance_create(608, 576, obj_door)
with allObjects[1]{
    floorNumber = 1;
    transferTo = "DOWN";
    xnPos = 416; ynPos = 576;
    }

// third floor

// fourth floor


