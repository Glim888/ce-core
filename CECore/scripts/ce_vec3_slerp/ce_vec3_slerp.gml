/// @func ce_vec3_slerp(v1, v2, s)
/// @desc Performs a spherical linear interpolation between the vectors `v1`,
/// `v2` and stores the result to `v1`.
/// @param {array} v1 The first vector. Should be normalized!
/// @param {array} v2 The second vector. Should be normalized!
/// @param {real} s The slerping factor.
/// @source https://keithmaggio.wordpress.com/2011/02/15/math-magician-lerp-slerp-and-nlerp/
var _v1 = argument0;
var _v2 = argument1;
var _dot = clamp(ce_vec3_dot(_v1, _v2), -1, 1); 
var _theta = arccos(_dot) * argument2;
var _relativeVec = ce_vec3_clone(_v2);
var _sub = ce_vec3_clone(_v1);
ce_vec3_scale(_sub, _dot);
ce_vec3_subtract(_relativeVec, _sub);
ce_vec3_normalize(_relativeVec);
ce_vec3_scale(_v1, cos(_theta));
ce_vec3_scale(_relativeVec, sin(_theta));
ce_vec3_add(_v1, _relativeVec);