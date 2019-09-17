/// @func ce_quaternion_rotate(q, v)
/// @desc Rotates the 3D vector by the quaternion.
/// @param {array} q The quaternion.
/// @param {array} v The 3D vector.
var _v = argument1;
var _q = ce_quaternion_clone(argument0);
ce_quaternion_normalize(_q);
var _V = ce_quaternion_create(_v[0], _v[1], _v[2], 0);
var _conjugate = ce_quaternion_clone(_q);
ce_quaternion_conjugate(_q);
var _rot = ce_quaternion_clone(_q);
ce_quaternion_multiply(_rot, _V);
ce_quaternion_multiply(_rot, _conjugate);
_v[@ 0] = _rot[0];
_v[@ 1] = _rot[1];
_v[@ 2] = _rot[2];