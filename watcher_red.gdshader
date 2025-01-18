shader_type spatial;

uniform float pulse_speed : hint_range(0.1, 5.0) = 1.0;  // Speed of the glow pulse
uniform vec4 glow_color : source_color = vec4(1.0, 0.0, 0.0, 0.0);  // Glow color (blue as an example)

void fragment() {
    // Get the time for pulsating effect
    float time = sin(TIME * pulse_speed) * 0.5 + 0.5;  // A smooth pulse between 0 and 1
    
    // Apply the glow effect
    vec3 glowing_color = glow_color.rgb * time;
    
    // Set the final color
    ALBEDO = glowing_color;  // Apply the glow to the surface
	EMISSION = glowing_color;
}