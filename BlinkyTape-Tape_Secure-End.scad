
use <BlinkyTape-Rail.scad>

//These variables are useful from the BlinkyTape-Rail.scad
outerWallThickness=1.2;
aluminumXThickness=27.4;
aluminumZHeight=18.25;
topLipZ=3;
topLipX=3;
innerRailX=2.9;
innerRailZ=1.2;

railLength=60;


difference(){
	translate([outerWallThickness,1,0]) cube([aluminumXThickness-2*outerWallThickness,5,11]);	

	blinkyTubeHolder();

	//Clean rail guide at bottom
	translate([10,-1,0]) cube([10,60,6]);

	//Get clean edges
	translate([-1,-1,-1]) cube([aluminumXThickness+10,60,6]);

};