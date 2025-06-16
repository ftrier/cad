$cm = 10;

$width = 11 * $cm;
$back_height = 11 * $cm;
$back_depth = 0.4 * $cm;
$plane_length = 10 * $cm;
$floor_thickness = 0.5 * $cm;

cube([$width,$back_depth,$back_height + $floor_thickness]);
cube([$width,$plane_length,$floor_thickness]);

