// House keychain

module base(thickness) {
    cube([20, 15, thickness]);
    difference() {
    linear_extrude(thickness)
    polygon(points = [[-3,15], [23,15], [10,26]]);
    translate([10,23.5,-1])
    cylinder(thickness+2, 1.5, 1,5, $fn=8);
        }
    translate([16,18,0])
    cube([3, 8, thickness]);
    
    }
   

module upper_layer(thickness, number) {
    
    };
    
base(1);