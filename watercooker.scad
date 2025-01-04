$fa = 1;
$fs = 0.4;

cm = 10;

inner_radius = 7.2 * cm;
border_height = 0.5 * cm;
wall_thick_top = 0.1 * cm;
wall_thick_bottom = 0.3 * cm;
floor_thick = 0.2 * cm;


steps = 4;
step_size = 360 / steps;
cutout_z = border_height;
cutout_radius = 1  * cm;
cable_size=3 * cm;

difference() {
    cylinder(h=border_height, r1=inner_radius+wall_thick_bottom, r2=inner_radius+wall_thick_top, center=true);

    translate([0,0,floor_thick]) // move in height to create floor
        cylinder(h=border_height+0.001, r=inner_radius, center=true);

    translate([0,inner_radius,floor_thick])
         cube([cable_size, cable_size, border_height], center=true);
}
