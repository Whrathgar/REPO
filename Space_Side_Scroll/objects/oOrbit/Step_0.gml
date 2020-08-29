/// @description orbit step
if instance_exists(trg)
{
x = trg.x + lengthdir_x(lng,plc);
y = trg.y + lengthdir_y(lng,plc);
plc += spd;
}
else
instance_destroy()