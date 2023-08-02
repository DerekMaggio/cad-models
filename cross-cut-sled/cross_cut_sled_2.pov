#version 3.7; // 3.6
global_settings { assumed_gamma 1.0 }
#default { finish { ambient 0.2 diffuse 0.9 } }
#default { pigment { rgb <0.800, 0.800, 0.800> } }

//------------------------------------------
#include "colors.inc"
#include "textures.inc"

#include "rad_def.inc"
global_settings {
	radiosity {
		Rad_Settings(Radiosity_Final, off, off)
	}
}
#default { finish{ ambient 0 } }

//------------------------------------------
#include "cross_cut_sled_2_textures.inc"
#include "cross_cut_sled_2_meshes.inc"

//------------------------------------------
// Camera ----------------------------------
#declare CamUp = < 0, 0, 804.44>;
#declare CamRight = <1430.12, 0, 0>;
#declare CamRotation = <-22.819851545819688, -9.697794448996139e-06, 122.72878000836744>;
#declare CamPosition = <715.480712890625, 406.09423828125, 431.21209716796875>;
camera {
	orthographic
	location <0, 0, 0>
	direction <0, 1, 0>
	up CamUp
	right CamRight
	rotate CamRotation
	translate CamPosition
}

// FreeCAD Light -------------------------------------
light_source { CamPosition color rgb <0.5, 0.5, 0.5> }

// Background ------------------------------

polygon {
	5, <-715.0593532986111, -402.22088623046875>, <-715.0593532986111, 402.22088623046875>, <715.0593532986111, 402.22088623046875>, <715.0593532986111, -402.22088623046875>, <-715.0593532986111, -402.22088623046875>
	pigment {
		gradient y
		color_map {
			[ 0.00  color rgb<0.690, 0.690, 0.776> ]
			[ 0.05  color rgb<0.690, 0.690, 0.776> ]
			[ 0.50  color rgb<0.435, 0.435, 0.576> ]
			[ 0.95  color rgb<0.200, 0.200, 0.396> ]
			[ 1.00  color rgb<0.200, 0.200, 0.396> ]
		}
		scale <1,804.4417724609375,1>
		translate <0,-402.22088623046875,0>
	}
	finish { ambient 1 diffuse 0 }
	rotate <67.18014845418031, -9.697794448996139e-06, 122.72878000836744>
	translate <715.480712890625, 406.09423828125, 431.21209716796875>
	translate <-77539.45589065552, -49834.45703983307, -38783.496618270874>
}
sky_sphere {
	pigment {
		gradient z
		color_map {
			[ 0.00  color rgb<0.690, 0.690, 0.776> ]
			[ 0.30  color rgb<0.690, 0.690, 0.776> ]
			[ 0.50  color rgb<0.435, 0.435, 0.576> ]
			[ 0.70  color rgb<0.200, 0.200, 0.396> ]
			[ 1.00  color rgb<0.200, 0.200, 0.396> ]
		}
		scale 2
		translate -1
		rotate<-22.819851545819688, -9.697794448996139e-06, 122.72878000836744>
	}
}

//------------------------------------------

#include "cross_cut_sled_2_user.inc"

// Objects in Scene ------------------------

//----- Base -----
object { Base_mesh
	
material {Base_material }

}

//----- Near_Fence -----
object { Near_Fence_mesh
	
material {Near_Fence_material }

}

//----- Zero_Clearance_Insert -----
object { Zero_Clearance_Insert_mesh
		pigment { color rgb <0.369, 0.369, 0.369> }

}

//----- Far_Fence -----
object { Far_Fence_mesh
	
material {Far_Fence_material }

}

//----- planeCoincident_001__Base___L_001 -----
//----- planeCoincident_001__Far_Fence_001 -----
//----- planeCoincident_002__Far_Fence_001 -----
//----- planeCoincident_002__Base___L_001 -----
//----- Blade_Guard___Left -----
object { Blade_Guard___Left_mesh
	
material {Blade_Guard___Left_material }

}

//----- Blade_Guard___Right -----
object { Blade_Guard___Right_mesh
	
material {Blade_Guard___Right_material }

}

//----- Blade_Guard___Main -----
object { Blade_Guard___Main_mesh
	
material {Blade_Guard___Main_material }

}

//----- Handle -----
object { Handle_mesh
	
material {Handle_material }

}

//----- Near_Fence_Top_T_Track -----
object { Near_Fence_Top_T_Track_mesh
	
material {Near_Fence_Top_T_Track_material }

}

//----- Far_Fence_Top_T_Track -----
object { Far_Fence_Top_T_Track_mesh
	
material {Far_Fence_Top_T_Track_material }

}

//----- Far_Fence_Insert -----
object { Far_Fence_Insert_mesh
}

//----- Near_Fence_Insert -----
object { Near_Fence_Insert_mesh
}

//----- Base_T_Track___Left -----
object { Base_T_Track___Left_mesh
	
material {Base_T_Track___Left_material }

}

//----- Base_T_Track___Right -----
object { Base_T_Track___Right_mesh
	
material {Base_T_Track___Right_material }

}

//----- SpotLight -----
light_source { <0, 0, 0>
	color rgb<1.0, 1.0, 1.0>
	spotlight
	point_at <0, -1, 0>
	radius 30.0
	falloff 45.0
	tightness 0
	rotate <10.728583121609043, 10.545290589499556, -44.00702719563632>
	translate <625.6734375, 343.56075028667885, 250.67513991799268>
}

//----- planeCoincident_003__Base -----
//----- planeCoincident_003__Far_Fence -----
//----- planeCoincident_003__Far_Fence_001 -----
//----- planeCoincident_003__Base___L_001 -----
//----- planeCoincident_004__Base___L_001 -----
//----- planeCoincident_004__Zero_Clearance_Insert_001 -----
//----- planeCoincident_005__Zero_Clearance_Insert_001 -----
//----- planeCoincident_005__Base___L_001 -----
//----- planeCoincident_007__Near_Fence_001 -----
//----- planeCoincident_007__Base___L_001 -----
//----- planeCoincident_008__Near_Fence_001 -----
//----- planeCoincident_008__Base___L_001 -----
//----- planeCoincident_009__Near_Fence_001 -----
//----- planeCoincident_009__Base___L_001 -----
//----- planeCoincident_010__Blade_Guard___Outer_001 -----
//----- planeCoincident_010__Base___L_001 -----
//----- planeCoincident_011__Blade_Guard___Outer_001 -----
//----- planeCoincident_011__Base___L_001 -----
//----- planeCoincident_012__Blade_Guard___Outer_001 -----
//----- planeCoincident_012__Near_Fence_001 -----
//----- planeCoincident_013__Blade_Guard___Outer_004 -----
//----- planeCoincident_013__Base___L_001 -----
//----- planeCoincident_014__Blade_Guard___Outer_004 -----
//----- planeCoincident_014__Near_Fence_001 -----
//----- planeCoincident_015__Base___L_001 -----
//----- planeCoincident_015__Blade_Guard___Outer_004 -----
//----- axisCoincident_001__Blade_Guard___Main_001 -----
//----- axisCoincident_001__Base___L_001 -----
//----- planeCoincident_016__Blade_Guard___Main_001 -----
//----- planeCoincident_016__Base___L_001 -----
//----- planeCoincident_017__Blade_Guard___Main_001 -----
//----- planeCoincident_017__Near_Fence_001 -----
//----- axisCoincident_002__Handle_001 -----
//----- axisCoincident_002__Blade_Guard___Outer_001 -----
//----- planeCoincident_018__Handle_001 -----
//----- planeCoincident_018__Blade_Guard___Outer_001 -----
//----- planeCoincident_019__Near_Fence_Top_T_Track_001 -----
//----- planeCoincident_019__Near_Fence_001 -----
//----- planeCoincident_020__Near_Fence_Top_T_Track_001 -----
//----- planeCoincident_020__Near_Fence_001 -----
//----- planeCoincident_021__Near_Fence_Top_T_Track_001 -----
//----- planeCoincident_021__Near_Fence_001 -----
//----- planeCoincident_022__Far_Fence_Top_T_Track_001 -----
//----- planeCoincident_022__Far_Fence_001 -----
//----- planeCoincident_023__Far_Fence_Top_T_Track_001 -----
//----- planeCoincident_023__Far_Fence_001 -----
//----- planeCoincident_024__Far_Fence_Top_T_Track_001 -----
//----- planeCoincident_024__Far_Fence_001 -----
//----- planeCoincident_025__Fence_Insert_001 -----
//----- planeCoincident_025__Far_Fence_001 -----
//----- planeCoincident_026__Fence_Insert_001 -----
//----- planeCoincident_026__Base___L_001 -----
//----- planeCoincident_027__Far_Fence_001 -----
//----- planeCoincident_027__Fence_Insert_001 -----
//----- planeCoincident_028__Fence_Insert_002 -----
//----- planeCoincident_028__Near_Fence_001 -----
//----- planeCoincident_029__Fence_Insert_002 -----
//----- planeCoincident_029__Near_Fence_001 -----
//----- planeCoincident_030__Fence_Insert_002 -----
//----- planeCoincident_030__Near_Fence_001 -----
//----- planeCoincident_031__Base_T_Track_001 -----
//----- planeCoincident_031__Base___L_001 -----
//----- planeCoincident_032__Base_T_Track_001 -----
//----- planeCoincident_032__Base___L_001 -----
//----- planeCoincident_033__Base_T_Track_001 -----
//----- planeCoincident_033__Base___L_001 -----
//----- planeCoincident_034__Base_T_Track_002 -----
//----- planeCoincident_034__Base___L_001 -----
//----- planeCoincident_035__Base_T_Track_002 -----
//----- planeCoincident_035__Base___L_001 -----
//----- planeCoincident_037__Table_Saw_Top_001 -----
//----- planeCoincident_037__Base___L_001 -----
//----- planeCoincident_038__Base___L_001 -----
//----- planeCoincident_038__Table_Saw_Top_001 -----
//----- planeCoincident_039__Table_Saw_Top_001 -----
//----- planeCoincident_039__Base___L_001 -----
//----- planeCoincident_006__stop_cleat_001 -----
//----- planeCoincident_006__Zero_Clearance_Insert_001 -----
//----- planeCoincident_006__Base___L_001 -----
//----- planeCoincident_036__Base___L_001 -----
//----- planeCoincident_036__Base_T_Track_002 -----