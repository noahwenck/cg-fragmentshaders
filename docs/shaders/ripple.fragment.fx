#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    // Color
    FragColor = texture(image, model_uv);

    vec2 coords = model_uv;
    coords *= 2.0;
    coords -= 1.0;
    float radius = length(coords);
    vec2 offset = coords * (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;
    vec2 newCoords = model_uv + offset;
    //coords /= 2.0;
    FragColor = texture(image, newCoords);

}
