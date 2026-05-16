union($fn = 100) {
    rotate([0, -41.4, 0])
        difference() {
            cube([100, 70, 5], center = true);
            translate([44, 2.5, 0])
                cube([12, 25, 5], center = true);
            translate([-44, 2.5, 0])
                cube([12, 25, 5], center = true);
        }
    translate([0, -37.5, -(48.5-4.2073)])
        rotate([90, 0, 0])
            difference() {
                union() {
                    cube([40, 60, 5], center = true);
                    translate([0, -30, 0])
                        cylinder(h = 5, d = 40, center = true);
                    translate([-20, 30, -2.5])
                    intersection() {
                        cube([40, 66, 5]);
                        rotate_extrude(angle = 41.4)
                            square([60, 5]);
                    }
                }
                translate([0, -15, 0])
                union() {
                    cube([10, 30, 5], center = true);
                    translate([0, -15, 0])
                        cylinder(h = 5, d = 20, center = true);
                    translate([0, 15, 0])
                        cylinder(h = 5, d = 10, center = true);
                }
            }
}

