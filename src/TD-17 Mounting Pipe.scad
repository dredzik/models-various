difference() {
    union($fn = 500) {
      translate([0, 0, 25])
        cylinder(d = 23, h = 50, center = true);
      translate([0, 0, 100])  
        cylinder(d1 = 23, d2 = 38, h = 100, center = true);
      translate([0, 0, 170])
        cylinder(d = 38, h = 40, center = true);
    }
}