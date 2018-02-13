/// draw_text_box(x, y, width, text, padding, line distance)
// this function draws a string with a rectangle surrounding it
// in seperated lines based on width of the string.
// it can draw up to three lines and is the main cutscene box.

// setting up the alignments and draw variables
draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_font(fnt_text_box);

// assign variables
// arguments
xVal = argument0;
yVal = argument1;
width = argument2;
text = argument3;
padding = argument4;
lineDistance = argument5;

// calculations

if width > string_width(text){
    boxWidth = string_width(text)+padding*2;
    
    }else{
        boxWidth = width+padding*2;
        
        }
    
boxLines = ceil(string_width(text)/boxWidth);
textHeight = string_height(text) * boxLines;
boxHeight = textHeight + lineDistance*2 + lineDistance*(boxLines-1);

// draw the rectangle to draw the text onto
draw_set_colour(make_colour_rgb(100, 100, 100));
draw_set_alpha(0.5);
draw_rectangle(xVal, yVal, xVal+boxWidth+20, yVal+boxHeight, false);

draw_set_colour(make_colour_rgb(30, 115, 255));
draw_set_alpha(1);
draw_rectangle(xVal, yVal, xVal+20, yVal+boxHeight, false);

// draw the text into the box
draw_set_colour(c_black);
draw_set_font(fnt_text_box);
draw_text_ext(xVal+padding+20, yVal+padding, text, lineDistance, width-20);

// debugging section
// asterix once done with debugging

draw_set_colour(c_blue);
draw_text(10, 325, boxLines);
draw_text(10, 350, textHeight);
draw_text(10, 375, boxHeight);
