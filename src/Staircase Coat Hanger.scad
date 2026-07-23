/**
 * MIT License
 *
 * Copyright (c) 2026 Adam Kuczyński
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

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

