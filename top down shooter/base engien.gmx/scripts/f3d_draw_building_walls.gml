/// f3d_draw_building_walls(height, relative, leftSpr, rightSpr, bottomSpr, topSpr, roofSpr)

var height  = argument0 * 0.5;
var relative = argument1;
var distToRelativeObject = point_distance(x, y, relative.x, relative.y);
var alpha = 1;

var leftSprite = argument2;
var rightSprite = argument3;
var bottomSprite = argument4;
var topSprite = argument5;
var roofSprite = argument6;

var mn_topLeftX     = x - (sprite_width  / 2);
var mn_topLeftY     = y - (sprite_height / 2);
var mn_topRightX    = x + (sprite_width  / 2);
var mn_topRightY    = y - (sprite_height / 2);

var mn_botLeftX     = x - (sprite_width  / 2);
var mn_botLeftY     = y + (sprite_height / 2);
var mn_botRightX    = x + (sprite_width  / 2);      // mn = points on the square
var mn_botRightY    = y + (sprite_height / 2);      // object itself 

var topLeftDir      = point_direction(relative.x, relative.y, mn_topLeftX, mn_topLeftY);
var topRightDir     = point_direction(relative.x, relative.y, mn_topRightX, mn_topRightY);
var botLeftDir      = point_direction(relative.x, relative.y, mn_botLeftX, mn_botLeftY);
var botRightDir     = point_direction(relative.x, relative.y, mn_botRightX, mn_botRightY);

var lef_mtpBotRight = point_distance(relative.x, relative.y, mn_botLeftX, mn_botLeftY) / 500;
var lef_mtpTopRight = point_distance(relative.x, relative.y, mn_topLeftX, mn_topLeftY) / 500;

var lef_topLeftX    = mn_topLeftX + (lengthdir_x(height*lef_mtpTopRight, topLeftDir));
var lef_topLeftY    = mn_topLeftY + (lengthdir_y(height*lef_mtpTopRight, topLeftDir));
var lef_botLeftX    = mn_botLeftX + (lengthdir_x(height*lef_mtpBotRight, botLeftDir));
var lef_botLeftY    = mn_botLeftY + (lengthdir_y(height*lef_mtpBotRight, botLeftDir));

var rgt_mtpBotRight = point_distance(relative.x, relative.y, mn_botRightX, mn_botRightY) / 500;
var rgt_mtpTopRight = point_distance(relative.x, relative.y, mn_topRightX, mn_topRightY) / 500; 

var rgt_topRightX   = mn_topRightX + (lengthdir_x(height*rgt_mtpTopRight, topRightDir));
var rgt_topRightY   = mn_topRightY + (lengthdir_y(height*rgt_mtpTopRight, topRightDir));
var rgt_botRightX   = mn_botRightX + (lengthdir_x(height*rgt_mtpBotRight, botRightDir));
var rgt_botRightY   = mn_botRightY + (lengthdir_y(height*rgt_mtpBotRight, botRightDir));

if mn_botLeftY > lef_botLeftY or mn_topLeftY < lef_topLeftY{

    // left wall
    draw_sprite_pos(leftSprite, 0,      lef_topLeftX, lef_topLeftY, lef_botLeftX, lef_botLeftY,
                                        mn_botLeftX, mn_botLeftY, mn_topLeftX, mn_topLeftY, alpha);
    
    // right wall
    draw_sprite_pos(rightSprite, 0,     rgt_topRightX, rgt_topRightY, rgt_botRightX, rgt_botRightY,
                                        mn_botRightX, mn_botRightY, mn_topRightX, mn_topRightY, alpha);
    
    // bottom wall
    draw_sprite_pos(bottomSprite, 0,    mn_botLeftX, mn_botLeftY, mn_botRightX, mn_botRightY,
                                        rgt_botRightX, rgt_botRightY, lef_botLeftX, lef_botLeftY, alpha);
    
    // top wall
    draw_sprite_pos(topSprite, 0,       mn_topLeftX, mn_topLeftY, mn_topRightX, mn_topRightY,
                                        rgt_topRightX, rgt_topRightY, lef_topLeftX, lef_topLeftY, alpha);
    }else{
    
    // bottom wall
    draw_sprite_pos(bottomSprite, 0,    mn_botLeftX, mn_botLeftY, mn_botRightX, mn_botRightY,
                                        rgt_botRightX, rgt_botRightY, lef_botLeftX, lef_botLeftY, alpha);
    
    // top wall
    draw_sprite_pos(topSprite, 0,       mn_topLeftX, mn_topLeftY, mn_topRightX, mn_topRightY,
                                        rgt_topRightX, rgt_topRightY, lef_topLeftX, lef_topLeftY, alpha);
    
    // left wall
    draw_sprite_pos(leftSprite, 0,      lef_topLeftX, lef_topLeftY, lef_botLeftX, lef_botLeftY,
                                        mn_botLeftX, mn_botLeftY, mn_topLeftX, mn_topLeftY, alpha);
    
    // right wall
    draw_sprite_pos(rightSprite, 0,     rgt_topRightX, rgt_topRightY, rgt_botRightX, rgt_botRightY,
                                        mn_botRightX, mn_botRightY, mn_topRightX, mn_topRightY, alpha);
    }
