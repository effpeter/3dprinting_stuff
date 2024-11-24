/*
Copyright (c) 2023, Peter Felber <effpeter@gmail.com>

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

module prism(l, w, h){
    polyhedron(
        points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );      
};

module abus_key() {
    translate([0,-5.1,0])
    cube([63.3,10.2,2.9]);
    translate([0,-12.5,0])
    cube([18,25,2.9]);
    translate([18,-12.5,2.9])
    rotate([0,90,0])
    prism(2.9, 7.5, 0.7);
    translate([18,12.5,0])
    rotate([0,-90,180])
    prism(2.9, 7.5, 0.7);
}
module chamfer() {
    translate([9.5,0,1.45])
    rotate([45,0,0])
difference() {
    cube([19,23,23], center = true);
    cube([19,21,21], center = true);
    };
}

// translate to [0,0,0]
translate([1,13.5,19])
rotate([0,90,0])
difference() {
    difference() {
        difference() {
            difference(){
                translate([0,-(25+2)/2,-1])
                cube([18+1,25+2,2.9+2]);
                // subtract key from cap
                abus_key();
            };
            // subtract hole from cap
            translate([2.7+2.9,0,-5])
            linear_extrude(10) {
                circle(d = 5.8);
            };
        };
        // subtract a set of edges to give it a 45 degree chamfer
        chamfer();
    };
    // subtract another set of edges to give it a 45 degree chamfer
    rotate([0,90,90])
    translate([-6,-9.5,-2.13])
    scale([1.473,1.473,1.473])
    chamfer();
};