difference() {
    union($fn = 100) {
        cylinder(h = 50, d = 16, center = true);
        cylinder(h = 20, d = 19, center = true);
        minkowski() {
            cube([39, 1, 14], center = true);
            rotate([90, 0, 0])
                cylinder(h = 2, r = 3, center = true);
        }
        rotate([0, 0, 30]) rib();
        rotate([0, 0, 60]) rib();
        rotate([0, 0, 90]) rib();
        rotate([0, 0, 120]) rib();
        rotate([0, 0, 150]) rib();
    }
    translate([0, 0, 25]) hex(10);
    translate([0, 0, -25]) hex(11);
}

module rib() {
    minkowski() {
        cube([20, 1, 16], center = true);
        rotate([90, 0, 0])
            cylinder(h = 0.5, r = 2);
    }
}

module hex(m) {
  // 2 * a * tan(180 / edge_count)
  // m = 2 * a
  // edge_count = 6
  // tan(180 / 6) = tan(30) = sqrt(1) / sqrt(3) = ~0.58
  // 0.2 - just a bit extra to account for imperfections
  r = m * 0.58 + 0.2;
  cylinder(h = 50, r = r, $fn = 6, center = true);  
}