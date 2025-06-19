$cm = 10;

// KC Figure
$plane_x = 11 * $cm;
$plane_y = $plane_x;

// Name Tag
$plane_x = 5 * $cm;
$plane_y = 9 * $cm;

$plane_height = 0.2 * $cm;
$leg_distance = 5.2 * $cm; // The desk wall is 5.2cm thick
$leg = 7 * $cm;
$leg_width = 0.2 * $cm;
$leg_clip = 0.1 * $cm;

cube([$plane_x,$plane_y,$plane_height]);
cube([$plane_x,$leg_width,$leg]);
translate([0, $leg_distance + $leg_width, 0])
    cube([$plane_x,$leg_width,$leg]);

translate([0,0, $leg])
    cube([$plane_x,$leg_width+$leg_clip,$leg_width]);

translate([0,$leg_distance+$leg_width-$leg_clip, $leg])
    cube([$plane_x,$leg_width+$leg_clip,$leg_width]);
