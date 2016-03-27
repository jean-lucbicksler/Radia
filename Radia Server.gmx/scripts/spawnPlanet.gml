planet = instance_create(0,0,obj_planet)
azimalt = rand_pol()
planet.azimuth = azimalt[0]
planet.altitude = azimalt[1]
planet.magnitude = random(10.0)
pos = rect(azimalt[0],azimalt[1],planet.magnitude)
planet.northx = pos[0]
planet.northy = pos[1]
planet.northz = pos[2]
azimalt = rand_pol()
pos = rect(azimalt[0],azimalt[1],random(100.0))
planet.x = pos[0]
planet.y = pos[1]
planet.z = pos[2]
planet.momentum = (random(2.0) - 1.0)
return planet
