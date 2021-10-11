/// @desc Slide Transition(mode, target_room)
/// @arg Mode sets transitions mode between next, restart, and go to.
/// @arg Target sets target room when using the goto mode.
function SlideTransition() {

	with (oTransitions)
	{
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
	}



}
