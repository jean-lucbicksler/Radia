//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

//uniform float u_color1[3]
//uniform float u_cpos1[3]
//uniform float u_color2[3]
//uniform float u_cpos2[3]
//uniform float u_color3[3]
//uniform float u_cpos3[3]

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
//    vec3 d1 = vec3 (in_Position.x-u_cpos1[0],in_Position.y-u_cpos1[1],in_Position.z-u_cpos1[2]);
 //   vec3 d2 = vec3 (in_Position.x-u_cpos2[0],in_Position.y-u_cpos2[1],in_Position.z-u_cpos2[2]);
  //  vec3 d3 = vec3 (in_Position.x-u_cpos3[0],in_Position.y-u_cpos3[1],in_Position.z-u_cpos3[2]);
    //vec3 mags = normalize(vec3(dot(d1,d1),dot(d2,d2),dot(d3,d3)));
    //v_vColour = vec3(vec3(mags.x*u_color1[0],mags.y*u_color2[0],mags.z*u_color3[0])
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

