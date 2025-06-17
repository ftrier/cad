$cm = 10;

$plane = 11 * $cm;
// $plane = 3 * $cm;
$plane_height = 0.2 * $cm;

// The desk wall is 5.2cm thick
$leg_distance = 5.2 * $cm;
// $leg_distance = 1 * $cm;

$leg = 7 * $cm;
$leg_width = 0.2 * $cm;

$leg_clip = 0.1 * $cm;

cube([$plane,$plane,$plane_height]);
cube([$plane,$leg_width,$leg]);
translate([0, $leg_distance + $leg_width, 0])
    cube([$plane,$leg_width,$leg]);

translate([0,0, $leg])
    cube([$plane,$leg_width+$leg_clip,$leg_width]);

translate([0,$leg_distance+$leg_width-$leg_clip, $leg])
    cube([$plane,$leg_width+$leg_clip,$leg_width]);



