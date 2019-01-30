// Select Starting Room

var current_y = 0;						// Initialize as starting y
var current_x = choose(0, 1, 2, 3);		// Initialize as starting x
var new_direction = 0;					// Keep track of what direction to move

sections [current_x, current_y] = 1;	// Start with room type of exit left and right

while (current_y <4)
{
	if (new_direction == 0)
	new_direction = choose(1, 1, 2, 2, 3);	// 1= left, 2 = right, 3 = down
	
	//Move us left if direction = 1
	if (new_direction == 1)
		{
			if (current_x > 0)
			{
				sections[--current_x, current_y] = 1;
				new_direction = 0;
			}
			else
			{
				// Can't move left, need to move down. Need to change current room to a "2" and next room to a "3" 
				if (current_y < 3)
				{
				sections[current_x, current_y] = 2;
				sections[current_x, ++current_y] = 3;
				new_direction = 2;
				}
				else
					++current_y;	// Exit out of loop
			}
		}
		// Move us right if direction = 2
		else if (new_direction == 2)
		{
						if (current_x < 3)
			{
				sections[++current_x, current_y] = 1;		// Set room type to entrance left and entrance right
				new_direction = 0;
			}
			else
			{
				// Can't move left, need to move down. Need to change current room to a "2" and next room to a "3" 
				if (current_y < 3)
				{
				sections[current_x, current_y] = 2;
				sections[current_x, ++current_y] = 3;
				new_direction = 1;
				}
				else
					++current_y;	// Exit out of loop
			}	
		}
		// Move us down if direction = 3
		else if (new_direction ==3)
		{
			if(current_y < 3)
			{
				sections[current_x, current_y] = 2;
				sections[current_x, ++current_y] = 3;
				new_direction = 0;
				
				if(current_x == x_sections - 1)
					new_direction = choose(1, 1, 3);
				else if (current_x == 0)
					new_direction = choose(2, 2, 3);
			}
			else
			{
				++current_y;
			}
		}
}




















