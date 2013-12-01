batt_l=94; //93.3mm
batt_w=44; //43.3
batt_h=23; //22.2

include <batt_5200mah-outlines.scad>

module batt_5200mah() {
	intersection(){
		linear_extrude(height=batt_h) top();
		
		translate([-batt_w/1.76, batt_l/2, batt_h*0.96]) {
			rotate([90,-90,0]) {
			  linear_extrude(height=batt_l) end_outline();
			}
		}
	
		translate([-batt_w/2,0,batt_h*0.0475]){
			rotate([0,90,0]) {
				linear_extrude(height=batt_w) side_outline();
			}
		}
	}
}
