vec3 rgb2xyz( vec3 c ) {
	vec3 tmp;
	tmp.x = ( c.r > 0.04045 ) ? pow( ( c.r + 0.055 ) / 1.055, 2.4 ) : c.r / 12.92;
	tmp.y = ( c.g > 0.04045 ) ? pow( ( c.g + 0.055 ) / 1.055, 2.4 ) : c.g / 12.92,
	tmp.z = ( c.b > 0.04045 ) ? pow( ( c.b + 0.055 ) / 1.055, 2.4 ) : c.b / 12.92;
	const vec3x3 mat = vec3x3(
	0.4124, 0.3576, 0.1805,
		0.2126, 0.7152, 0.0722,
		0.0193, 0.1192, 0.9505 
);
	return 100.0 * mul(tmp, mat);
}

#pragma glslify: export(rgb2xyz)
