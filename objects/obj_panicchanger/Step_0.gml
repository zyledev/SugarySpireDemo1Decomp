if (fadealpha > 1)
{
    scr_escapebgs()
    fadein = 1
}
if (fadein == 0)
    fadealpha += 0.375
else if (fadein == 1)
    fadealpha -= 0.375
if (fadealpha == 0)
    instance_destroy()
