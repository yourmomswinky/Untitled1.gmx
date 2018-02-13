// cutscene movement

// check that none of the movement variables are equal to one

if global.cutscene = true and cutSpeed != "none"{
    if cutTargetPath != "none"{
        if path_index != 1{
            path_start(cutTargetPath, cutSpeed, path_action_stop, false);
            
            }
        
        }
    image_angle = direction;
    
    }
    
if messageSpeak != "none"{
    draw_text_box(10, 800, 1900, messageSpeak, 10, 40);
    
    }
