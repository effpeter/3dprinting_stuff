difference(){
    cube([2.5, 22, 15]);
    translate([0,15,7.5])
    rotate([0, 90,0])
    cylinder(h=2.5, r1=3, r2=3.75);
};
cube([12.5, 2.5, 15]);
translate([10,0,0])
cube([2.5, 10, 15]);

