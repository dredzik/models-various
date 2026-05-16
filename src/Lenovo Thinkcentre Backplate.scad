$fn = 100;

difference() {
  minkowski() {
    cube([68, 10, 1], center = true);
    cylinder(h = 1, r = 1, center = true);
  }
  translate([30, 0, 0])
    cylinder(h = 2, d = 3, center = true);
  translate([-30, 0, 0])
    cylinder(h = 2, d = 3, center = true);
  translate([18, 0, 0])
    cylinder(h = 2, d = 6.5, center = true);
  translate([-18, 0, 0])
    cylinder(h = 2, d = 6.5, center = true);
}