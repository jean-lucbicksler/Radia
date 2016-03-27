for (k = 0; k < FOCUS_COUNT; k++)
{
    azimalt = rand_pol()
    azimalt = rect(azimalt[0],azimalt[1],1)
    global.foci[k*3] = azimalt[0]
    global.foci[k*3+1] = azimalt[1]
    global.foci[k*3+2] = azimalt[2]
    for(l = 0; l < STARS_PER_FOCUS*3; l += 3)
    {
        global.stars[k,l] = azimalt[0]*200 + random(50.0)-25;
        global.stars[k,l+1] = azimalt[1]*200 + random(50.0)-25;
        global.stars[k,l+2] = azimalt[2]*200 + random(50.0)-25;
    }
}
