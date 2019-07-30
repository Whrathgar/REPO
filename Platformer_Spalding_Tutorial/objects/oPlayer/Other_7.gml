/// @desc Walking sound
if (sprite_index == sPlayerR)
{
	audio_play_sound(choose(snFoot1,snFoot2,snFoot3,snFoot4),4,false);
	repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Player",oDust))
			{
				vsp = 0;
			}
		}
}
