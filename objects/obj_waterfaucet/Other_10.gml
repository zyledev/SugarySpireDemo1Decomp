if instance_exists(obj_molasseswater)
{
    with (obj_molasseswater)
        targety = other.targety
}
var _targety = targety
targety = targety2
targety2 = _targety
can_switch = 1
with (obj_waterfaucet)
    alarm[0] = -1
