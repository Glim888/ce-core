/// @func ce_quaternion_inverse(q)
/// @desc Inverts the quaternion.
/// @param {array} q The quaternion.
var _q = argument0;
ce_quaternion_conjugate(_q);
var _n = 1 / ce_quaternion_length(_q);
ce_quaternion_scale(_q, _n);