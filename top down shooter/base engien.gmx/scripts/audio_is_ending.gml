/// audio_is_ending(track)
var track = argument0;

if audio_is_playing(track){
    difference = audio_sound_length(track) - audio_sound_get_track_position(audioIndex);
    if difference < 0.05{
        return(true)
        }else{
            return(false);
            }
    }else{
    return(true)
    }
