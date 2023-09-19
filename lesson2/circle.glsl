void mainImage(out vec4 fragColor, in vec2 fragCoord){
    vec2 uv = fragCoord/iResolution.xy;

    // 将 uv 坐标移动到页面中心
    uv = (uv-.5)*2.;

    uv.x *= iResolution.x / iResolution.y;

    float d = length(uv);
    // 在 Shader 中，值的取值范围为[0,1]，小于 0 显示为黑色；大于 1 显示为白色
    d-=.5;

    // step 内置函数；step(edge,x);如果目标 x 大于边界值 edge，则返回 1，反之返回 0
    // float c = step(0., d);

    float c = smoothstep(0.,.002,d);

    fragColor = vec4(vec3(c),1.);
    //fragColor = vec4(uv,0.,1.);
}