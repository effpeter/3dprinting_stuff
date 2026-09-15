// fedlap
cylinder (h = 4.6, r1=26, r2=26.5, center = false, $fn=100);

module labak() {// labak
difference(){
    translate([0,0,4.6])
    cylinder (h = 3, r=24, center = false, $fn=100);
    translate([0,0,4.6])
    cylinder (h = 3, r1=20, r2=21, center = false, $fn=100);
};

// fulek1
difference(){
    translate([0,0,7.6])
    cylinder (h = 0.5, r1=24, r2=25, center = false, $fn=100);
    translate([0,0,7.6])
    cylinder (h = 0.5, r=21, center = false, $fn=100);
};

// fulek2
difference(){
    translate([0,0,8.1])
    cylinder (h = 3, r1=25, r2=23, center = false, $fn=100);
    translate([0,0,8.1])
    cylinder (h = 3, r=21, center = false, $fn=100);
};
}

radius = 27;
angles = [0, 360/12];
fn = 10;
height = 8;

module sector(radius, angles, height, fn = 24) {
    step = -360 / fn;

    points = concat([[0, 0]],
        [for(a = [angles[0] : step : angles[1] - 360]) 
            [radius * cos(a), radius * sin(a)]
        ],
        [[radius * cos(angles[1]), radius * sin(angles[1])]]
    );

    linear_extrude(height)
    difference() {
        circle(radius, $fn = fn);
        #polygon(points);
    }
}
difference(){
labak();
translate([0,0,4.6]) {
    sector(radius, [0, 30], height, fn);
    sector(radius, [60, 90], height, fn);
    sector(radius, [120, 150], height, fn);
    sector(radius, [180, 210], height, fn);
    sector(radius, [240, 270], height, fn);
    sector(radius, [300, 330], height, fn);
    
    };
}