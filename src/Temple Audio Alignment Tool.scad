difference() {
  // Set these
  length = 5 - 1;
  width = 10 - 1;
  inner_length = 42.60;
  inner_width = 93.40;
  
  // Don't touch these
  diameter = 6.10;
  distance = 11.90;
  margin = 2;

  x = distance * length / 2;
  y = distance * width / 2;

  
  outer_length = distance * length + diameter + margin;
  outer_width = distance * width + diameter + margin;

  union($fn = 100) {
    cube([outer_length, outer_width, 8.00], center = true);
    
    translate([-x, -y, 4.00])
      cylinder(h = 10, d = 6.10, center = true);
    translate([-x, y, 4.00])
      cylinder(h = 10, d = 6.10, center = true);
    translate([x, -y, 4.00])
      cylinder(h = 10, d = 6.10, center = true);
    translate([x, y, 4.00])
      cylinder(h = 10, d = 6.10, center = true);
  }

  cube([inner_length, inner_width, 8.00], center = true);
}
