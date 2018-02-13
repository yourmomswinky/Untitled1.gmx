// first floor

allObjectsStationCamden[0] = instance_create(3872-64, 192, obj_door);
with allObjectsStationCamden[0]{
    floorNumber = 1;
    transferTo = "DOWN";
    image_yscale = 2;
    xnPos = x; ynPos = y;
    }
for(i = 0; i < 5; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(2784 + 64*i, 1760, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        
        }
    
    }
    
for(i = 0; i < 5; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(2784 + 64*i, 800, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        
        }
    
    }

for(i = 0; i < 5; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3424 + 64*i, 800, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        
        }
    
    }
    
for(i = 0; i < 6; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3424 + 64*i, 1760, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        
        }
    
    }
    
for(i = 0; i < 15; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3744, 1696 - 64*i, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        
        }
    
    }
    
for(i = 0; i < 5; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3392 + 128*i, 192, obj_escalator);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        tDirection = "DOWN";
        
        }
    
    }
    
for(i = 0; i < 5; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3392 + 128*i, 384, obj_escalator);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 1;
        tDirection = "UP";
        
        }
    
    }
    
// platform floor

allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3936, 384, obj_door);
with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
    floorNumber = 0;
    transferTo = "UP";
    image_yscale = 2;
    xnPos = x; ynPos = y;
    }
    
for(i = 0; i < 6; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3840 + 128*i, 192, obj_escalator);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        tDirection = "DOWN";
        
        }
    
    }
    
for(i = 0; i < 6; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3840 + 128*i, 384, obj_escalator);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        tDirection = "UP";
        
        }
    
    }
    
for(i = 0; i < 18; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3808 + 64*i, 96, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 11; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3808 + 64*i, 288, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
        
    }
    
for(i = 0; i < 4; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(4448, 544 + 64*i, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
        
    }

for(i = 0; i < 11; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3808 + 64*i, 480, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 15; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3552 + 64*i, 800, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 17; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(4896 + 64*i, 800, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 10; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(4896, 160 + 64*i, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 4; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3552, 864 + 64*i, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 4; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(5920, 864 + 64*i, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
    
for(i = 0; i < 38; i += 1){
    allObjectsStationCamden[array_length_1d(allObjectsStationCamden)] = instance_create(3552 + 64*i, 1440, obj_solid);
    with allObjectsStationCamden[array_length_1d(allObjectsStationCamden) - 1]{
        floorNumber = 0;
        
        }
    
    }
