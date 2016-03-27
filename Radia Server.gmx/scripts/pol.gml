xx = argument0; yy = argument1; zz = argument2
polstor[2] = sqrt(xx*xx+yy*yy+zz*zz)
polstor[0] = arctan2(yy,xx)
polstor[1] = arcsin(zz/polstor[2])
return polstor
