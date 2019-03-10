// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // obj_player
global.__objectDepths[1] = 0; // obj_Bullet
global.__objectDepths[2] = 0; // obj_Asteroid
global.__objectDepths[3] = 0; // obj_Asteroid_s
global.__objectDepths[4] = 0; // obj_Score
global.__objectDepths[5] = 0; // obj_Spawner
global.__objectDepths[6] = 0; // obj_deadplayer_1
global.__objectDepths[7] = 0; // obj_deadplayer_2
global.__objectDepths[8] = 0; // obj_deadplayer_3
global.__objectDepths[9] = 0; // obj_deadplayer_4
global.__objectDepths[10] = 0; // obj_deadplayer_5
global.__objectDepths[11] = -2; // obj_gameover
global.__objectDepths[12] = 0; // obj_turtlebuglogo
global.__objectDepths[13] = 0; // obj_gamelogo
global.__objectDepths[14] = 0; // obj_instructions


global.__objectNames[0] = "obj_player";
global.__objectNames[1] = "obj_Bullet";
global.__objectNames[2] = "obj_Asteroid";
global.__objectNames[3] = "obj_Asteroid_s";
global.__objectNames[4] = "obj_Score";
global.__objectNames[5] = "obj_Spawner";
global.__objectNames[6] = "obj_deadplayer_1";
global.__objectNames[7] = "obj_deadplayer_2";
global.__objectNames[8] = "obj_deadplayer_3";
global.__objectNames[9] = "obj_deadplayer_4";
global.__objectNames[10] = "obj_deadplayer_5";
global.__objectNames[11] = "obj_gameover";
global.__objectNames[12] = "obj_turtlebuglogo";
global.__objectNames[13] = "obj_gamelogo";
global.__objectNames[14] = "obj_instructions";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for