include <BOSL2/std.scad>

$fn=100;

difference() {
    cuboid(size=[70,40,2], rounding=1);
    translate([15,9,-2]) linear_extrude(height=4) egg(20,3,6,12);
    translate([15,-9,-2]) linear_extrude(height=4) egg(20,3,6,12);
    translate([-5,20,0]) cuboid(size=[10,8,2.1], rounding=-1);
    translate([-5,-20,0]) cuboid(size=[10,8,2.1], rounding=-1);
    translate([36,0,0]) cuboid(size=[10,12,2.1], rounding=-1);
    translate([-36,0,0]) cuboid(size=[10,12,2.1], rounding=-1);
    
    translate([-15,0,-2]) linear_extrude(height=4)rot(180) egg(24,6,8,15);
    
}