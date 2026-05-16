difference() {
    cube([140, 30, 20], center = true);
    translate([35, 0, 5])
        cube([35, 30, 10], center = true);
    translate([0, 0, 5])
        minkowski($fn = 100) {
            cube([128, 4, 6], center = true);
            cylinder(d = 4, h = 4, center = true);
        }
}
