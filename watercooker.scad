$fa = 1;
$fs = 0.4;

radius=10;
border_height=2;
wall_thick=0.4;
floor_thick=0.2;


steps = 72;
step_size = 360 / steps;
cutout_z = border_height;
cutout_radius = 1;


difference() {
    cylinder(h=border_height, r=radius, center=true);
    // move in height to create floor
    translate([0,0,floor_thick])
        // use smaller radius to dig a whole
        cylinder(h=border_height+0.001, r=radius-wall_thick, center=true);

    for(i=[1:steps]) {
        translate([cos(i*step_size)*radius,sin(i*step_size)*radius,cutout_z/2])
            rotate([90,0,90+step_size*(i)])
            cylinder(wall_thick*3, cutout_radius, center=true);
    }
}


