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

$fn = 100;

difference() {
    union() {
        cube([30, 200, 3], center = true);
        translate([30/2 + 10/2, 0, 0])
            cube([10, 30, 3], center = true);
        translate([30/2 + 5 + 59/2, 0, 0])
            cylinder(d = 59, h = 3, center = true);
    }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 0])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 120])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
    translate([30/2 + 5 + 59/2, 0, 0])
        rotate([0, 0, 240])
            union() {
                translate([0, 59/2-4, 0])
                   cylinder(d = 3, h = 3, center = true);
                translate([0, -(59/2-4), 0])
                   cylinder(d = 3, h = 3, center = true);
            }
}
