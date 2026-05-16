difference($fn = 100) {
  import("/Users/ak/Projects/3d-models/backup/gridfinity/holders/Gridfinity Deburrer Holder.stl", center = true);
  translate([7.75, 0, 1.08])
    minkowski() {
      cube([12, 152, 10], center = true);
      cylinder(r = 1, h = 2, center = true);
    }
}