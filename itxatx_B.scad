// Title: Mini-ITX + ATX Power Supply Test Bench
// Author: Charles François Rey
// Date: 29/12/2018
// License: Creative Commons Attribution-NonCommercial 4.0 International License

include <screw_holes.scad>

translate([0, 0, 7])
rotate([0,-90,0])
difference()
{
  union()
  {
    // vertical plate
    color("aqua", 1)
    translate([-7, 0, 6])
    linear_extrude(172)
    square([7,170]);
    
    // bottom atx holder
    color("aqua", 1.0)
    translate([-7, -4, 0])
    linear_extrude(35+7+1)
    square([19,4]);
    
    // top atx holder
    color("aqua", 1.0)
    translate([-7, -4, (7+150)-12])
    linear_extrude(12)
    square([7+22,4]);
  }
  
  // bottom screws
  translate([-3.5, 50, 0])
  screw_hole([8, 4, 170], M4, 35);
  translate([-3.5, 120, 0])
  screw_hole([8, 4, 170], M4, 35);
  
  // bottom atx holder screw hole
  color("aqua", 1.0)
  translate([6, -6, ((7+35)-6)+1])
  rotate([90,0,180])
  screw_hole([8, 4, 170], M4, 30);
  
  // top atx holder screw hole
  color("aqua", 1.0)
  translate([16, -6, (7+150)-6])
  rotate([90,0,180])
  screw_hole([8, 4, 170], M4, 30);
  
  // mini-itx screw holes
  color("aqua", 1.0)
  translate([-20, 33, 7+1+6])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  color("aqua", 1.0)
  translate([-20, 33+132, 7+1+6])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  color("aqua", 1.0)
  translate([-20, 165, 7+1+(170-6)])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  color("aqua", 1.0)
  translate([-20, 10, 7+1+(170-6)])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  
  // bottom screw nut holders
  color("aqua", 1.0)
  translate([-3.5, 50, 7+20])
  cube([10,7,3.2], true);
  color("aqua", 1.0)
  translate([-3.5, 120, 7+20])
  cube([10,7,3.2], true);
  
  // back atx screw holes
  color("aqua", 1.0)
  translate([-20, 145+1.5, 7+30])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  color("aqua", 1.0)
  translate([-20, 145+1.5, 7+120])
  rotate([90,0,90])
  screw_hole([8, 4, 90], M3, 30);
  
  //
  // material savers
  //
  
  cx = 170/2;
  cy = (170/2)+7+1+20;
  
  color("aqua", 1.0)
  translate([-10, cx, cy])
  rotate([90,0,90])
  cylinder(20, 50, 50, $fn=100);
  
  d3 = 55;
  
  color("aqua", 1.0)
  translate([-10, cx-d3, cy-d3])
  rotate([90,0,90])
  cylinder(20, 15, 15, $fn=100);
  
  color("aqua", 1.0)
  translate([-10, cx+d3, cy-d3])
  rotate([90,0,90])
  cylinder(20, 15, 15, $fn=100);
  
  color("aqua", 1.0)
  translate([-10, cx-d3*1.1, cy+d3*0.78])
  rotate([90,0,90])
  cylinder(20, 15, 15, $fn=100);
  
  color("aqua", 1.0)
  translate([-10, cx+d3*1.1, cy+d3*0.78])
  rotate([90,0,90])
  cylinder(20, 15, 15, $fn=100);
  
  r3 = sqrt(2*pow(d3,2));
  
  color("aqua", 1.0)
  translate([-10, cx+r3*0.86, cy+0])
  rotate([90,0,90])
  cylinder(20, 9, 9, $fn=100);
  
  color("aqua", 1.0)
  translate([-10, cx-r3*0.86, cy+0])
  rotate([90,0,90])
  cylinder(20, 9, 9, $fn=100);
  
  color("aqua", 1.0)
  translate([-10, cx+0, cy-r3])
  rotate([90,0,90])
  cylinder(20, 18, 18, $fn=100);
}