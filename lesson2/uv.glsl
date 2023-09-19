void mainImage(out vec4 fragColor, in vec2 fragCoord){
    vec2 uv = fragCoord/iResolution.xy;
    
    // x 方向上的渐变，红色
    // fragColor = vec4(uv.x, 0.,0.,1.);
    // y 方向上的渐变，绿色
    // fragColor = vec4(0.,uv.y,0.,1.);

    fragColor = vec4(uv,0.,1.);

}