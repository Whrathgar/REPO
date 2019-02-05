
// Grab section type from sections array
section_type = argument0;

if (section_type == 0)
	section_type = choose(1, 2, 3)

switch (section_type)
{
	case 1:
		return ds_list_find_value(section_lr_list, floor(random(ds_list_size(section_lr_list))));
		break;
	case 2:
		return ds_list_find_value(section_lbr_list, floor(random(ds_list_size(section_lbr_list))));
		break;
	case 3:
		return ds_list_find_value(section_ltr_list, floor(random(ds_list_size(section_ltr_list))));
		break;
}