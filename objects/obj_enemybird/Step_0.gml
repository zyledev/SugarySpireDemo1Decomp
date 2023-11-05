if instance_exists(ID)
{
    x = ID.x
    y = (ID.y - 40)
    if (ID.state != 98 || ID.stunned < 40)
    {
        ID.birdcreated = 0
        instance_destroy()
    }
}
