/// objects_building_Two_step()
// go through each object in the array and check each Two
// for its floor disabling and enabling as nessacary

for (i = 0; i < array_length_1d(allObjectsStationCamden); i += 1){
    with allObjectsStationCamden[i]{
        if floorNumber != obj_player.floorNumber{
            active = false;
            }else{
            active = true;
            }
        }
    }
