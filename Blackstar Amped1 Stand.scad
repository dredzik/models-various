translate([0, 75, 0])  blackstar_amped1_stand_front();
translate([0, -75, 0]) blackstar_amped1_stand_back();
translate([0, 25, 0])  blackstar_amped1_stand_side();
translate([0, -25, 0]) blackstar_amped1_stand_side();

module blackstar_amped1_stand_front() {
    difference($fn=100) {
        length = 200;
        length1 = length / 2;

        width = 40;
        width1 = width / 2;

        height = 5;
        height1 = height / 2;

        cube([length, width, height], true);

        // Nut heads
        x = length1 - 10;
        y = width1 - 10;
        z = 0;

        translate([x, y, z])   m3_head_insert();
        translate([x, -y, z])  m3_head_insert();
        translate([-x, y, z])  m3_head_insert();
        translate([-x, -y, z]) m3_head_insert();

        // Socket mounts
        translate([-70, 0, 0]) socket_mount();
        translate([70, 0, 0])  socket_mount();

        // Temple audio module mount  
        temple_audio_module_mount();
    }
}

module blackstar_amped1_stand_back() {
    difference($fn=100) {
        length = 200;
        length1 = length / 2;

        width = 40;
        width1 = width / 2;

        height = 5;
        height1 = height / 2;

        cube([length, width, height], true);

        // Nut heads
        x = length1 - 10;
        y = width1 - 10;
        z = 0;

        translate([x, y, z])   m3_head_insert();
        translate([x, -y, z])  m3_head_insert();
        translate([-x, y, z])  m3_head_insert();
        translate([-x, -y, z]) m3_head_insert();

        // Decorative holes
        translate([0, 0, 0])     cylinder(d = 24.5, h = 5, center = true);
        translate([32.5, 0, 0])  cylinder(d = 24.5, h = 5, center = true);
        translate([65, 0, 0])    cylinder(d = 24.5, h = 5, center = true);
        translate([-32.5, 0, 0]) cylinder(d = 24.5, h = 5, center = true);
        translate([-65, 0, 0])   cylinder(d = 24.5, h = 5, center = true);
    }
}

module blackstar_amped1_stand_side() {
    difference($fn=100) {
        length = 147;
        length1 = length / 2;

        width = 40;
        width1 = width / 2;

        height = 15;
        height1 = height / 2;

        rimSize = 2.5;
        rimSize1 = rimSize / 2;
        rimSize2 = rimSize * 2;
        rimSize4 = rimSize * 4;

        cube([length, width, height], true);

        // The big gap in the middle
        translate([0, 0, rimSize]) cube([length - rimSize4, width, height - rimSize2], true);

        rimWidth = 2.5;
        rimHalf = rimWidth / 2;

        // X axis rim
        xr = 0;
        yr = width1 - rimSize1;
        zr = height1 - (rimSize + rimSize1);

        translate([xr, yr, -zr]) cube([length - rimSize4, rimSize, rimSize], true);
        translate([0, -yr, -zr]) cube([length - rimSize4, rimSize, rimSize], true);

        // Z axis rim
        xr = length1 - (rimSize + rimSize1);
        yr = width1 - rimSize1;
        zr = 0;

        translate([xr, yr, zr])   cube([rimWidth, rimWidth, height], true);
        translate([xr, -yr, zr])  cube([rimWidth, rimWidth, height], true);
        translate([-xr, yr, zr])  cube([rimWidth, rimWidth, height], true);
        translate([-xr, -yr, zr]) cube([rimWidth, rimWidth, height], true);

        // Decorative holes
        cdiameter = 24.5;
        xc_offset = (length / 4);
        xc1 = xc_offset / 2;
        xc2 = xc1 + xc_offset;

        translate([xc1, 0, 0])  cylinder(d = cdiameter, h = height, center = true);
        translate([xc2, 0, 0])  cylinder(d = cdiameter, h = height, center = true);
        translate([-xc1, 0, 0]) cylinder(d = cdiameter, h = height, center = true);
        translate([-xc2, 0, 0]) cylinder(d = cdiameter, h = height, center = true);

        // Nut inserts
        nx = (length / 2) - rimSize;
        ny = width1 / 2;
        nz = rimSize;

        translate([nx, ny, nz])   rotate([0, 90, 0])  m3_nut_insert();
        translate([nx, -ny, nz])  rotate([0, 90, 0])  m3_nut_insert();
        translate([-nx, ny, nz])  rotate([0, -90, 0]) m3_nut_insert();
        translate([-nx, -ny, nz]) rotate([0, -90, 0]) m3_nut_insert();
    }
}

module socket_mount() {
  union() {
    cylinder(d = 24.5, h = 5, center = true);
    translate([-9.5, 12, 0])
      m3_head_insert();
    translate([9.5, -12, 0])
      m3_head_insert();
  }
}

module temple_audio_module_mount() {
  union() {
    minkowski() {
      cube([92 - 4, 31 - 4, 5 - 1], true);
      cylinder(d = 4, h = 1, center = true);
    }
    translate([51.15, -12.60, 0])
      m4_head_insert();
    translate([-51.15, 12.60, 0])
      m4_head_insert();
  }
}

module m3_head_insert() {
  union() {
    translate([0, 0, 1])
      cylinder(d = 6, h = 3, center = true);
    translate([0, 0, -1.5])
      cylinder(d = 3, h = 2, center = true);
  }
}

module m4_head_insert() {
  union() {
    translate([0, 0, 1.25])
      cylinder(d1 = 4, d2 = 7.5, h = 2.5, center = true);
    translate([0, 0, -1.25])
      cylinder(d = 4, h = 2.5, center = true);
  }
}

module m3_nut_insert() {
  union() {
    translate([0, 0, 1])
      cylinder(d = 3, h = 3, center = true);
    translate([0, 0, -1.5])
      cylinder(r = 3.175, h = 2, center = true, $fn = 6);
  }
}
