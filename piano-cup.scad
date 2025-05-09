include <BOSL2/std.scad>
use <hex-grid.scad>

$fa = 1;
$fs = 0.4;

$cm = 10;

$width = 7 * $cm;
$back_height = 1.5 * $cm;
$back_depth = 0.4 * $cm;
$plane_length = 20 * $cm;
$floor_thickness = 0.8 * $cm;

$front_height = 4.2 * $cm;
$front_depth = $back_depth;

$cup_border = 1 * $cm;

$cup_radius = 3 * $cm;

cube([$width,$back_depth,$back_height + $floor_thickness]);
translate([0, $plane_length - $front_depth, 0])
    cube([$width, $front_depth, $front_height + $floor_thickness]);


difference() {
    cube([$width,$plane_length,$floor_thickness]);
    for (i = [1,3]) {
        translate([$width/2,i*$plane_length/4,0])
            cylinder(h=$cup_border, r=$cup_radius, center=true);
    }
}
//    create_grid(size=[$width,$plane_length,$floor_thickness],SW=20,wall=5);