/// objects_building_one_step()
// go through each object in the array and check each one
// for its floor disabling and enabling as nessacary

for (i = 0; i < array_length_1d(allObjectsOne); i += 1){
    with allObjectsOne[i]{
        if floorNumber != obj_player.floorNumber{
            active = false;
            }else{
            active = true;
            }
        }
    }
