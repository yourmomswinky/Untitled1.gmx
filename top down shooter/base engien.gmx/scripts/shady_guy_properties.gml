/// to be ran in the draw_GUI event.
// debugging

// THIS IS HORRIBLY BROKEN AND HAS SOMETHING TO DO WITH
// INSTANCES: CAN BE FIXED WITH FURTHER INVESTIGATION

// check the instance
// assign the messages to variables

if event = 5{
    event = 0   // need to remove
    
    }

messageOne =
"?(UNDER BREATH): Here he comes.
";

messageTwo = 
"?(SPEAKING TO YOU): Oh hey dude, see that crime scene over there. Well I sorta left my phone on the desk and need it to call my ride.
";

messageThree = 
"?: Would you mind just going in there and grabbing it? It's on the counter at the back in a locked briefcase, thanks.
";

messageFour = 
"Oh and the metro police don't take kindly to strangers, so make sure they don't see you on your way in.
";

// take the enter key and shift the events forward
// if within proximity to the player.

if distance_to_object(obj_player) < interactionDistance{
    // check for inputs
    // set the camera target
    obj_player.camTarget = self;
        
    if keyboard_check_pressed(vk_enter){
        // move the events forward
        if event < 4{
            event += 1;
            }
        
        }else{
        // reset the cam target
        obj_player.camTarget = obj_player;
        
        }
    }
    
// event specific actions
if event = 0{
    // do nothing
    }

if event = 1{
    // draw a text box
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageOne, 10, 40);
        
        }else{
        // reset the event
        event = 0;
            
        }
    
    }
    
if event = 2{
    if distance_to_object(obj_player) < interactionDistance{
    draw_text_box(10, 800, 1900, messageTwo, 10, 40);
    
    }else{
        // reset the event
        event = 0;
        }
    }
    
if event = 3{
    if distance_to_object(obj_player) < interactionDistance{
    draw_text_box(10, 800, 1900, messageThree, 10, 40);
    
    }else{
        // reset the event
        event = 0;
        }
    }
    
if event = 4{
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageFour, 10, 40);
        
        }else{
        obj_player.mission = test_stealth_mission;
        obj_player.objectiveNumber = 1;
        event = 5;
        
        }
    
    }
    
if event = 5{
    if obj_player.mission = test_stealth_mission and obj_player.objectiveNumber = 3{
        if keyboard_check_pressed(vk_enter){
            event = 6;
            
            }
        
        }
    
    }

if event = 6{
    if mission = test_stealth_mission{
        obj_player.mission = "none";
        obj_player.objectiveNumber = 0;
        event = 0;
        
        }
    }
