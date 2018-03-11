/// to be ran in the draw_GUI event.
// debugging
draw_text(x, y+10, "SC");

// check the instance
//if instance = 0
//{

// assign the messages to variables
messageOne =
"BRANDON: Yo Yo Yo, how's it hanging?";
messageTwo =
"BRANDON: So listen up, i been hearin' 'bout some niggas 'round
theese parts, boastin' a huge pile of 'dat sweet ganja.";
messageThree =
"BRANDON: And that got me thinkin'. How 'bout we go pay them a
li'l visit. If you catch my drift.";
messageFour = 
"BRANDON: Maybe re-direct that shit to some more deserving
clientele. And make a sweet buck in the process.
Or we could light it up ourselves";
messageFive = 
"BRANDON: If your interested, roll on over to that block over
there, and hit me up on the mobile, yeah?"
messageSix = 
"BRANDON OVER PHONE: Yo. You got it? The next one's down after the second roundabout  in the
HMV. I'll meet you there a'ight?"
messageSeven = 
"BRANDON OVER PHONE: Looks like theese niggas caught on to our
little operation. They floodin' the buildin'. How 'bout you show them a little respect. Ok?";
messageNine = 
"BRANDON: Ahhhhh shieeet nigga! You fuckin' did it! Hey you drop me
them bags and i wire you yo' money later, a'ight. PRESS X TO END MISSION."



// brandon moves the player to a mission
// this is done with the enter key and
// proximity.

// take the enter key and shift the events forward
// if within proximity to the player.

if distance_to_object(obj_player) < interactionDistance{
    // check for inputs
    // set the camera target
    obj_player.camTarget = self;
        
    if keyboard_check_pressed(vk_enter){
        // move the events forward
        if event < 6{
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
    
if event = 2{
    // draw a text box
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageTwo, 10, 40);
        
        }else{
            // reset the event
            event = 0;
            }
    }
    
if event = 3{
    // draw a text box
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageThree, 10, 40);
        
        }else{
            // reset the event
            event = 0;
            }
    }
if event = 4{
    // draw a text box
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageFour, 10, 40);
        
        }else{
            // reset the event
            event = 0;
            }
    }
if event = 5{
    // draw a text box
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageFive, 10, 40);
        
        }else{
            // reset the event
            event = 0;
            }
    }
if event = 6{
    obj_player.mission = test_mission;
    
    }
    
if event = 7{
    draw_text_box(10, 800, 1900, messageSix, 10, 40);
    }
if event = 8{
    draw_text_box(10, 800, 1900, messageSeven, 10, 40);
    }
//}

if event = 9{
    if obj_player.mission = test_mission and
    obj_player.objectiveNumber = 10{
        if distance_to_object(obj_player) < interactionDistance{
            if keyboard_check_pressed(vk_enter){
                event += 1;
                
                }
            
            }
    
        }
    }
    
if event = 10{
    if distance_to_object(obj_player) < interactionDistance{
        draw_text_box(10, 800, 1900, messageNine, 10, 40);
        if keyboard_check_pressed(ord("X")){
            event += 1;
            }
        }else{
        event = 9
        }
    }

if event = 11{
    obj_player.mission = "none"
    obj_player.objectiveNumber = 1;
    obj_player.objective = "none"
    event = 0;
    obj_player.track = "none";
    }
