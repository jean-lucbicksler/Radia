azim=argument0; alti=argument1; magni = argument2
storage[0] = cos(azim)*cos(alti)*magni
storage[1] = sin(azim)*cos(alti)*magni
storage[2] = sin(alti)*magni
return storage
