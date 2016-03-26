azimuth=argument0; altitude=argument1; magnitude = argument2
storage[0] = cos(azimuth)*cos(altitude)*magnitude
storage[1] = sin(azimuth)*cos(altitude)*magnitude
storage[2] = sin(altitude)*magnitude
return storage
