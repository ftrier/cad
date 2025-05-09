$fa = 1;
$fs = 0.4;

cm = 10;

model_depth = 0.33 * cm;

width = 3*cm;
floor_height = 0.2*cm;
pyramid_height = 3 * cm;

cylinder(h=floor_height, r = width, center = true);

difference() {
    translate([0,0,pyramid_height/2+floor_height/2])
        cylinder(h=pyramid_height, r1=width, r2=0, center=true);
    
    translate([0,0,pyramid_height/2+floor_height/2])
        cube([model_depth, width*2, pyramid_height], center = true);

    translate([0,0,pyramid_height+floor_height/2])
        sphere(3*cm);
}


 