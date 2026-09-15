include <threads.scad>

diameter = 23;
pitch = 2.1;
length = 20;
// taper=diameter/length (default: 0). The amount of taper as change in diameter per length. The NPT standard is 1 inch change in diameter per 16 inches length. 
// goes from 23 to 19 over 10mm
taper = 0.2;

difference(){
    cylinder(h=25, d=25);
    metric_thread (diameter, pitch, length, taper=taper);
};
