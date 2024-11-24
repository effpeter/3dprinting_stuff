include <roundedcube.scad>

// An [x, y, z] vector specifies distance on each axis. Default [1, 1, 1]
//size = [2, 3, 5];

// An integer creates a cube with specified wall distance. Default [1, 1, 1]
//size = 5;

// Whether or not to place the object centered on the origin. Default false
//center = true|false;
// Specify a rounding radius. Default 0.5

// Specify where to apply the rounded corners. Default "all"
//apply_to = "all"|"x"|"y"|"z"|"zmax"|"zmin"|"xmax"|"xmin"|"ymax"|"ymin"

module tolto() {
size = [38, 41, 70];
center = false;
radius = 5;
apply_to = "z";
roundedcube(size, center, radius, apply_to);
};

module tarto() {
size = [38+2, 41+2, 70];
center = false;
radius = 5;
apply_to = "z";
roundedcube(size, center, radius, apply_to);
};


module ful() {
    nyilas = 26;
    translate([40,(43-11)/2,68])
    cube([26, 11, 2]);
    translate([40+26,(43-11)/2,68-26+2])
    cube([2, 11, 26]);
};

difference() {
    tarto();
    translate([1,1,1])
    tolto();
    translate([-6,(43-11)/2,0])
    roundedcube([30, 11, 70], false, 5, "z");
};

ful();