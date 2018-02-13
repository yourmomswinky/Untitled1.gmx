/// objects_building_one_create()
// this building's array identifier is 0
// for the allObjects array allObjects[objectId]
// create the objects
// first floor

allObjectsOne[0] = instance_create(608, 576, obj_door);
with allObjectsOne[0]{
    floorNumber = 1;
    transferTo = "UP";
    xnPos = 416; ynPos = 576;
    }

// second floor

allObjectsOne[1] = instance_create(608, 576, obj_door);
with allObjectsOne[1]{
    floorNumber = 2;
    transferTo = "UP";
    xnPos = 416; ynPos = 576;
    }

allObjectsOne[2] = instance_create(608, 704, obj_door)
with allObjectsOne[2]{
    floorNumber = 2;
    transferTo = "DOWN";
    xnPos = 416; ynPos = 704;
    }

allObjectsOne[3] = instance_create(224, 320 - 32, obj_solid)
with allObjectsOne[3]{
    floorNumber = 2;
    }
    
allObjectsOne[4] = instance_create(224, 256 - 32, obj_solid)
with allObjectsOne[4]{
    floorNumber = 2;
    }

// third floor

allObjectsOne[5] = instance_create(608, 704, obj_door)
with allObjectsOne[5]{
    floorNumber = 3;
    transferTo = "DOWN";
    xnPos = 416; ynPos = 704;
    }

allObjectsOne[6] = instance_create(224, 320 - 32, obj_solid)
with allObjectsOne[6]{
    floorNumber = 3;
    }
    
allObjectsOne[7] = instance_create(224, 256 - 32, obj_solid)
with allObjectsOne[7]{
    floorNumber = 3;
    }
    
allObjectsOne[8] = instance_create(576, 864, obj_actor)
with allObjectsOne[8]{
    floorNumber = 3;
    image_angle = 145;
    actorScript = brandon_properties;
    pause = 0
    }

// fourth floor


