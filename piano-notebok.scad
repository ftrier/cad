include <BOSL2/std.scad>
use <hex-grid.scad>

$cm = 10;

$width = 15 * $cm;
$back_height = 1.5 * $cm;
$back_depth = 0.4 * $cm;
$plane_length = 20 * $cm;
$floor_thickness = 0.5 * $cm;

$front_height = 4.2 * $cm;
$front_depth = $back_depth;

cube([$width,$back_depth,$back_height + $floor_thickness]);
translate([0, $plane_length - $front_depth, 0])
    cube([$width, $front_depth, $front_height + $floor_thickness]);
translate([$width/2,$plane_length/2,0])
    create_grid(size=[$width,$plane_length,$floor_thickness],SW=20,wall=5);