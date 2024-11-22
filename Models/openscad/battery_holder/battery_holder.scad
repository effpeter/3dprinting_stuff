// AA battery size
d=15;
h=51;
// n*n grid with 1mm of space between them
bank_size = 5;
module battery(d, h){
translate([0.5,0.5,0.5])
linear_extrude(h){
    translate([d/2, d/2, 0])
    circle(d/2);
    };
};

module line(size)
{
for(i = [0:size-1]){
    translate([i*(d+0.5), 0, 0])
    battery(d, h);
    }
};

module bank(size) {
for(i = [0:size-1]){
    translate([0, i*(d+0.5), 0])
    line(size);
}
};

difference(){
cube([(d+0.5)*bank_size+0.5, (d+0.5)*bank_size+0.5, h-10]);
bank(bank_size);
};