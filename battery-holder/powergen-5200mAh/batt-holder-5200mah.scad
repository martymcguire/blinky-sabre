include <batt-5200mah.scad>

case_thick = 1;
clip_w = 10;
difference() {
	union() {
		right_clip();
		left_clip();
		bottom_clip();
		top_clip();
	}
	# batt_5200mah();
}

module right_clip() {
	translate([
		-batt_w/2 - case_thick,
		-clip_w/2,
		-case_thick
	]) {
		cube([
			batt_w/2 + case_thick,
			clip_w,
			batt_h/2
		]);
		translate([0,0,batt_h/2]) {
			cube([
				case_thick*4,
				clip_w,
				batt_h/2 + case_thick
			]);
		}
	}
}

module left_clip() {
	 rotate([0,0,180]) right_clip();
}

module bottom_clip() {
	translate([
		-clip_w/2,
		-batt_l/2 - case_thick,
		-case_thick
	]) {
		cube([
			clip_w,
			batt_l/2,
			batt_h/2
		]);
		translate([0,0,batt_h/2]) {
			cube([
				clip_w,
				case_thick*4,
				batt_h/2 + case_thick
			]);
		}
	}
}

module top_clip() {
	translate([batt_w/4,0,0]) {
		rotate([0,0,180]) bottom_clip();
	}
}