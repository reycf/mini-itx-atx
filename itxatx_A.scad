// Title: Mini-ITX + ATX Power Supply Test Bench
// Author: Charles François Rey
// Date: 29/12/2018
// License: Creative Commons Attribution-NonCommercial 4.0 International License

include <screw_holes.scad>
 
difference()
{
  union()
  {
    // atx bottom plate
    linear_extrude(7)
    square([87,170]);
    
    // vertical plate holder
    translate([-7, 0, 0])
    linear_extrude(6)
    square([7,170]);
    
    // mini-itx bottom plate
    translate([-51, 0, 0])
    linear_extrude(7)
    square([44,170]);
    
    // bottom atx holder
    translate([74, -4, 0])
    linear_extrude(19+0.5)
    square([12,4]);
  }
  
  // vertical plate screw holes
  translate([-3.5, 50, 0])
  screw_hole([8, 4, 170], M4, 30);
  translate([-3.5, 120, 0])
  screw_hole([8, 4, 170], M4, 30);
  
  // bottom atx holder screw hole
  translate([80, -6, 07+6+0.5])
  rotate([90,0,180])
  screw_hole([8, 4, 170], M4, 30);
  
  //
  // material savers
  //
  
  translate([43, 122.5, -1])
  cylinder(10, 55/2, 55/2, $fn=100);
  translate([43, 47.5, -1])
  cylinder(10, 55/2, 55/2, $fn=100);
  
  translate([-29, 145, -1])
  cylinder(10, 15, 15, $fn=100);
  translate([-29, 105, -1])
  cylinder(10, 15, 15, $fn=100);
  translate([-29, 65, -1])
  cylinder(10, 15, 15, $fn=100);
  translate([-29, 25, -1])
  cylinder(10, 15, 15, $fn=100);
  
  translate([6, 85, -1])
  cylinder(10, 18, 18, $fn=100);
  translate([70, 85, -1])
  cylinder(10, 12, 12, $fn=100);
  translate([72, 16, -1])
  cylinder(10, 10, 10, $fn=100);
  translate([72, 170-16, -1])
  cylinder(10, 10, 10, $fn=100);
  translate([5, 22, -1])
  cylinder(10, 12, 12, $fn=100);
  translate([5, 170-22, -1])
  cylinder(10, 12, 12, $fn=100);
}