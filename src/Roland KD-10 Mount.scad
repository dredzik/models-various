$fn = 100;

difference() {
    union() {
        translate([-30, 0, 0]) cylinder(h = 20, d = 60, center = true);
        translate([50, 0, 0])
            minkowski() {
                cube([130, 35, 10], center = true);
                cylinder(h = 10, d = 5, center = true);
            }
    }
    translate([-30, 0, 2.5]) cylinder(h = 15, d = 38.5, center = true);
    translate([55, 0, 0])
        union() {
            minkowski() {
                cube([86, 2, 10], center = true);
                cylinder(h = 10, d = 4, center = true);
            }
            translate([0, 0, -4.5])
                minkowski() {
                    cube([96, 6, 6], center = true);
                    cylinder(h = 5, d = 4, center = true);
                }
        }
}
