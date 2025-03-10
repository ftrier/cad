$fn=100;
sep() airplane();

module airplane(){
// Wings
wing(0.7);
translate([18,0,0]) wing(1);
translate([0,0,2.1]) rotate([90,-20,0]) wing(0.45);
// Hull
hull(){
 translate([-3,0,0]) sphere(1.5);
 translate([24,0,0]) sphere(3);
};
// Cockpit
translate([19,0,2]) scale([2,1,1]) color("red",0.6) sphere(2);
//Propeller
translate([26.5,0,0]) scale([2,1,1]) color("grey") sphere(1);
translate([27.3,0,0]) rotate([0,90,0]) color("grey",0.5) cylinder(h=0.5, r=5);
// Wing Module
module wing(s=1){
 rotate([90,0,0])
 scale([3*s,0.4*s,1*s*s])
 cylinder(h=35,r=1,center=true);
 };
};

module sep(){
 translate([0,0,-0.5]) difference(){
 children();
 translate([-40,-40,0]) cube(100);
 };
 translate([0,0,0.5]) intersection(){
 children();
 translate([-40,-40,0]) cube(100);
 };
};