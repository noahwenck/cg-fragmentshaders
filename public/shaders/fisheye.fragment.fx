#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    FragColor = texture(image, model_uv);

    vec2 coords = model_uv;
    coords *= 2.0;
    coords -= 1.0;
    float theta = atan(coords.y, coords.x);
    float radius = pow(length(coords), 1.5);
    vec2 fish = vec2(radius * cos(theta), radius * sin(theta));
    fish += 1.0;
    fish *= 0.5;
    FragColor = texture(image, fish);

}
