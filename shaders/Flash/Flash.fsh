//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float alpha;

void main()
{
    vec4 Color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(Color.a != 0.0) {
		gl_FragColor = vec4(Color.r + 0.5,Color.g + 0.5,Color.b + 0.5,Color.a * alpha);
	}
	
}
