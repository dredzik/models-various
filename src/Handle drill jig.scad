$fn = 100;

difference() {
    union() {
        cube([30, 200, 3], center = true);
        translate([30/2 + 10/2, 0, 0])
            cube([10, 30, 3], center = true);
        translate([30/2 + 5 + 59/2, 0, 0])
            cylinder(d = 59, h = 3, center = true);
    }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 0])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 120])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 240])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
}