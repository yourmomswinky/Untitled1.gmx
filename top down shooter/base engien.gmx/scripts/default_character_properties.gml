/// to be ran in the draw_GUI event.
// debugging
draw_text(x, y+10, "SC");

// check the instance
// assign the messages to variables

messageOne =
"DEFAULT: placeholder text
";

// take the enter key and shift the events forward
// if within proximity to the player.

if distance_to_object(obj_player) < interactionDistance{
    // check for inputs
    // set the camera target
    obj_player.camTarget = self;
        
    if keyboard_check_pressed(vk_enter){
            // move the events forward
        if event < 1{
            event += 1;
            }
        
        }else{
        // reset the cam target
        obj_player.camTarget = obj_player;
        
        }   
    
    }


if obj_player.mission = test_mission{
    if obj_player.objectiveNumber = 5{
        if event = 6{
            event += 1;
            
            }
        
        }
    
    if event > 6 and event < 9{
        if keyboard_check_pressed(vk_enter){
            // move the events forward
            event += 1;
            }
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
