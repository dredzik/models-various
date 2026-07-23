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
        translate([-30, 0, 0]) cylinder(h = 20, d = 60, center = true);
        translate([50, 0, 0])
            minkowski() {
                cube([130, 35, 10], center = true);
                cylinder(h = 10, d = 5, center = true);
            }
    }
    translate([-30, 0, 2.5]) cylinder(h = 15, d = 38.5, center = true);
    translate([55, 0, 0])
        union() {
            minkowski() {
                cube([86, 2, 10], center = true);
                cylinder(h = 10, d = 4, center = true);
            }
            translate([0, 0, -4.5])
                minkowski() {
                    cube([96, 6, 6], center = true);
                    cylinder(h = 5, d = 4, center = true);
                }
        }
}
