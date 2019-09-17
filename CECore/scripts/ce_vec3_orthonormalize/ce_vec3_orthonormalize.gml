/// @func ce_vec3_orthonormalize(v1, v2)
/// @desc Orthonormalizes the vectors using the Gram–Schmidt process.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @return {bool} True if the vectors were orthonormalized.
/// @source https://www.gamedev.net/forums/topic/585184-orthonormalize-two-vectors/
var _inV1 = argument0;
var _inV2 = argument1;

var _v1 = ce_vec3_clone(_inV1);
ce_vec3_normalize(_v1);
var _proj = ce_vec3_clone(_v1);
ce_vec3_scale(_proj, ce_vec3_dot(_inV2, _v1));
var _v2 = ce_vec3_clone(_inV2);
ce_vec3_subtract(_v2, _proj);

if (ce_vec3_lengthsqr(_v2) <= 0)
{
	return false;
}

ce_vec3_normalize(_v2);

_inV1[@ 0] = _v1[0];
_inV1[@ 1] = _v1[1];
_inV1[@ 2] = _v1[2];

_inV2[@ 0] = _v2[0];
_inV2[@ 1] = _v2[1];
_inV2[@ 2] = _v2[2];

return true;