$fa = 1;
$fs = 0.4;

cm = 10;

radius = 8 * cm;
radius_2 = 7.5 * cm;
border_height = 2 * cm;
wall_thick = 1 * cm;
floor_thick = 0.2 * cm;


steps = 4;
step_size = 360 / steps;
cutout_z = border_height;
cutout_radius = 1  * cm;
cable_size=3 * cm;

difference() {
    cylinder(h=border_height, r1=radius, r2=radius_2, center=true);
    // move in height to create floor
    translate([0,0,floor_thick])
        // use smaller radius to dig a whole
        cylinder(h=border_height+0.001, r=radius-wall_thick, center=true);
    translate([0,0,border_height])
    cylinder(h=3*cm, r=radius, center=true);

    translate([0,radius,floor_thick])
        // use smaller radius to dig a whole
         cube([cable_size, cable_size, border_height], center=true);
}
