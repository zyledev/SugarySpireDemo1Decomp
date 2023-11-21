can_collide = function(argument0) //anon_gml_Object_obj_cottonplatform_Create_0_14_gml_Object_obj_cottonplatform_Create_0
{
    if (argument0 == undefined)
        argument0 = obj_player
    if (argument0 == obj_player)
    {
		if(argument0.state != 110)
		{
        var wow = (argument0.state == (100 << 0) || argument0.state == (111 << 0))
        return wow;
		}
		else if(argument0.state == 110)
		{
		return 0;
		}
    }
    else
        return 1;
}

