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
    float radius = length(coords);
    //vec2 offset = coords * (sin(radius * 30.0) + 0.5) / 60.0;
    coords += 1.0;
    coords *= 10.0;
    FragColor = texture(image, coords);


    /*vec2 coords = model_uv; // 16:9 try
    coords.x *= 160.0;
    coords.y *= 90.0;
    coords = round(coords);
    coords.x /= 160.0;
    coords.y /= 90.0;
    FragColor = texture(image, coords);*/

}
