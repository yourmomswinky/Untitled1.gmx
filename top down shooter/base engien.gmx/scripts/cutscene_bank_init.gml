// cameras

Cview_wview[1] = 1280;
Cview_hview[1] = 720;

Cview_xview[1] = 2976 - Cview_wview[1]/2;
Cview_yview[1] = 5024 - Cview_hview[1]/2;

Cview_wview[2] = 1280;
Cview_hview[2] = 720;

Cview_xview[2] = 3072 - Cview_wview[2]/2;
Cview_yview[2] = 4704 - Cview_hview[2]/2;

// props

player = instance_nearest(x, y, obj_player);
brandon = instance_create(2688, 4896, obj_actor);

civ0 = instance_create(2880, 5120, obj_actor);

civ1 = instance_create(2944, 4627, obj_actor);
civ2 = instance_create(2944, 4800, obj_actor);
civ3 = instance_create(3072, 4627, obj_actor);
civ4 = instance_create(3072, 4800, obj_actor);

civ5 = instance_create(3264, 4627, obj_actor);
civ6 = instance_create(3264, 4800, obj_actor);
civ7 = instance_create(3456, 4627, obj_actor);
civ8 = instance_create(3456, 4800, obj_actor);

with civ0 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ1 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ2 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ3 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ4 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ5 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ6 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ7 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with civ8 {floorNumber = 1; actorScript = cutscene_actor_properties;
    cutSpeed = "none"}
with brandon {floorNumber = 1; actorScript = cutscene_actor_properties}

with civ0{
    direction = 90;
    image_angle = 90;
    
    }
    
with brandon {direction = 315; image_angle = 315}
with civ3 {direction = 180; image_angle = 180}
with civ4 {direction = 180; image_angle = 180}
with civ7 {direction = 180; image_angle = 180}
with civ8 {direction = 180; image_angle = 180}

with player {direction = 0; image_angle = 0;
            x = 2720; y = 5024}

global.cutscene = true;

with player{
    cutTargetPath = pth_cutscene_test1_player1;
    cutSpeed = 2;
    
    }
    
with brandon{
    cutTargetPath = pth_cutscene_test1_brandon1;
    cutSpeed = 2;
    
    }
