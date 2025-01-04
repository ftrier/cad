$fa = 1;
$fs = 0.4;

cm = 10;

inner_radius = 7.2 * cm;
border_height = 0.4 * cm;
wall_width = 0.1 * cm;
floor_height = 0.2 * cm;
cable_size=2 * cm;

plateau = inner_radius + 2 * cm;
wall_width_bottom = wall_width + 0.3 * cm;
floor_height_plateau = floor_height + 0.2 * cm;


difference() {
    cylinder(h=border_height, r1=plateau+wall_width_bottom, r2=plateau+wall_width, center=true);

    translate([0,0,floor_height_plateau]) // move in height to create floor
        cylinder(h=border_height+0.001, r=plateau, center=true);

    translate([0,0,floor_height]) // move in height to create floor
        cylinder(h=border_height+0.001, r=inner_radius, center=true);

    translate([0,inner_radius,floor_height])
         cube([cable_size, plateau, border_height], center=true);
}
