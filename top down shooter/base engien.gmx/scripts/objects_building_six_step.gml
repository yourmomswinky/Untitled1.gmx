/// objects_building_one_step()
// go through each object in the array and check each one
// for its floor disabling and enabling as nessacary

for (i = 0; i < array_length_1d(allObjectsBuildingSix); i += 1){
    with allObjectsBuildingSix[i]{
        if floorNumber != obj_player.floorNumber{
            active = false;
            }else{
            active = true;
            }
        }
    }
