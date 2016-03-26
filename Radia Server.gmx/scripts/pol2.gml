xx = argument0; yy = argument1; zz = argument2
storage[2] = xx*xx+yy*yy+zz*zz
storage[0] = arctan2(yy,xx)
storage[1] = arcsin(zz/storage[2])
return storage //polar squared
