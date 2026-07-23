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
