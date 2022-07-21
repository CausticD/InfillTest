sub_model = "All"; // [All,Base,Infill]

$fn = 100;

if(sub_model=="All" || sub_model=="Infill")
{
	color("yellow") translate([1,1,1]) intersection()
	{
		cube(50);
		translate([0,20,0]) rotate([90,0,0]) cylinder(20, 20, 20);
	}
}

if(sub_model=="All" || sub_model=="Base")
{
    color("blue") cube([1,22,21]);
	color("red") translate([1,0,0]) cube([20,22,1]);
    
    color("green") intersection()
    {
        translate([1,22,1]) rotate([90,0,0]) cylinder(22, 20, 20);
        
        union()
        {
            translate([1,0,1]) cube([20,1,20]);
            translate([1,21,1]) cube([20,1,20]);
        }
    }
}