var planet, azimalt, pos, genArray
planet = instance_create(0,0,obj_planet)
azimalt = rand_pol();
planet.azimuth = azimalt[0]
planet.altitude = azimalt[1]
planet.magnitude = 60 + random(60)
pos = rect(azimalt[0],azimalt[1],planet.magnitude)
planet.northx = pos[0]
planet.northy = pos[1]
planet.northz = pos[2]
azimalt = rand_pol()
pos = rect(azimalt[0],azimalt[1],random(100.0))
planet.x = pos[0]
planet.y = pos[1]
planet.z = pos[2]
planet.momentum = (random(0.0825) - .003125)
for(var i = 11; (i/2/pi) < planet.magnitude; i += 11)
{
    var l = 20 // fuckup counter
    for(var j = 0; j < i && l > 0; j++)
    {
        azimalt = rand_pol();
        pos = rect(azimalt[0],azimalt[1],i/2/pi+0.5);
        genArray[j,0] = pos[0];
        genArray[j,1] = pos[1];
        genArray[j,2] = pos[2];
        planet.terrain[i/11,2*j] = azimalt[0];
        planet.terrain[i/11,2*j+1] = azimalt[1];
        for(var k = 0; k < j; k++)
        {
            var dist2 = (genArray[j,0]-genArray[k,0])^2+(genArray[j,1]-genArray[k,1])^2+(genArray[j,2]-genArray[k,2])^2
            if (dist2 < 3)
            {
                j--;
                l--;
                break;
            }
        }
    }
}
return planet
