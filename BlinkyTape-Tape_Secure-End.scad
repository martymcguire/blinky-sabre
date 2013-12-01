
outerWallThickness=1.4;
aluminumXThickness=27.4;
aluminumZHeight=18.25;
topLipZ=3;
topLipX=3;
innerRailX=3.2;
innerRailZ=1.4	;

railLength=60;

rotate([90,0,0]) 

difference(){
	translate([outerWallThickness,0,0]) cube([aluminumXThickness-2*outerWallThickness,5,11]);

	//Clean rail guide at bottom
	translate([10,-1,0]) cube([10,60,6]);

	//Get clean edges
	translate([-1,-1,-1]) cube([aluminumXThickness+10,60,6]);

//Get frame	 guide
translate([0,-1,0]) union(){
	difference(){
		cube([aluminumXThickness,railLength,aluminumZHeight]);

		//Full Channel Gap
		translate([outerWallThickness,-1,6]) cube([25,railLength+10,20]);
		
		//Bottom Gap
		translate([outerWallThickness,-1,4.15]) cube([25,railLength+10,5]);	
		
		//Middle Gap
		translate([outerWallThickness,-1,10.15]) cube([25,railLength+10,2]);	
		
		//Bottom Guide
		translate([10.6,-1,0.8]) cube([5.8,railLength+10,5]);
		translate([11.5,-1,-1]) cube([4.03,railLength+10,5]);
		
	};

	//Bottom Rails
	difference(){
		translate([3,0,0]) cube([21.5,railLength,8]);
		//Bottom Guide
		translate([10.6,-1,0.8]) cube([5.8,railLength+10,5]);
		translate([11.5,-1,-1]) cube([4.03,railLength+10,5]);
	};

	//Left Rails
	//Bottom
	translate([0,0,10-innerRailZ]) cube([innerRailX,railLength,innerRailZ]);

	//Middle
	translate([0,0,13-innerRailZ]) cube([innerRailX,railLength,innerRailZ]);

	//Top
	translate([0,0,aluminumZHeight-topLipZ]) cube([topLipX,railLength,topLipZ]);

	//Right Rails
	//Bottom
	translate([aluminumXThickness-innerRailX,0,10-innerRailZ]) cube([innerRailX,railLength,innerRailZ]);

	//Middle
	translate([aluminumXThickness-innerRailX,0,13-innerRailZ]) cube([innerRailX,railLength,innerRailZ]);

	//Top
	translate([aluminumXThickness-topLipX,0,aluminumZHeight-topLipZ]) cube([topLipX,railLength,topLipZ]);
};


};