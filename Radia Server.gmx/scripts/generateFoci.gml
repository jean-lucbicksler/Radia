for (k = 0; k < FOCUS_COUNT*3; k++)
{
    azimalt = rand_pol()
    azimalt = rect(azimalt[0],azimalt[1],1)
    foci[k] = azimalt[0]
    k++
    foci[k] = azimalt[1]
    k++
    foci[k] = azimalt[2]
}
return foci
