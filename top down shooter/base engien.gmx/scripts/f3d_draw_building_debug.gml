/// f3d_draw_building_debug(height, relative)

var height  = argument0 * 0.5;
var relative = argument1;
var distToRelativeObject = point_distance(x, y, relative.x, relative.y);

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


draw_set_colour(c_blue);
draw_set_alpha(0.3);

draw_primitive_begin(pr_trianglestrip);
    draw_vertex(mn_topLeftX, mn_topLeftY);
    draw_vertex(mn_botLeftX, mn_botLeftY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
draw_primitive_end();

draw_primitive_begin(pr_trianglestrip);
    draw_vertex(mn_topRightX, mn_topRightY);
    draw_vertex(mn_botRightX, mn_botRightY);
    draw_vertex(rgt_topRightX, rgt_topRightY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
draw_primitive_end();

draw_primitive_begin(pr_trianglestrip);
    draw_vertex(mn_botLeftX, mn_botLeftY);
    draw_vertex(mn_botRightX, mn_botRightY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
draw_primitive_end();

draw_primitive_begin(pr_trianglestrip);
    draw_vertex(mn_topLeftX, mn_topLeftY);
    draw_vertex(mn_topRightX, mn_topRightY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(rgt_topRightX, rgt_topRightY);
draw_primitive_end();

draw_primitive_begin(pr_trianglestrip);
    draw_vertex(rgt_topRightX, rgt_topRightY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
draw_primitive_end();

// lines

draw_primitive_begin(pr_linestrip);
    draw_vertex(mn_topLeftX, mn_topLeftY);
    draw_vertex(mn_botLeftX, mn_botLeftY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
draw_primitive_end();

draw_primitive_begin(pr_linestrip);
    draw_vertex(mn_topRightX, mn_topRightY);
    draw_vertex(mn_botRightX, mn_botRightY);
    draw_vertex(rgt_topRightX, rgt_topRightY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
draw_primitive_end();

draw_primitive_begin(pr_linestrip);
    draw_vertex(mn_botLeftX, mn_botLeftY);
    draw_vertex(mn_botRightX, mn_botRightY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
draw_primitive_end();

draw_primitive_begin(pr_linestrip);
    draw_vertex(mn_topLeftX, mn_topLeftY);
    draw_vertex(mn_topRightX, mn_topRightY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(rgt_topRightX, rgt_topRightY);
draw_primitive_end();

draw_primitive_begin(pr_linestrip);
    draw_vertex(rgt_topRightX, rgt_topRightY);
    draw_vertex(rgt_botRightX, rgt_botRightY);
    draw_vertex(lef_topLeftX, lef_topLeftY);
    draw_vertex(lef_botLeftX, lef_botLeftY);
draw_primitive_end();

draw_set_alpha(1);
draw_set_colour(c_black);
