/// @func ce_matrix_determinant(m)
/// @desc Gets the determinant of the matrix.
/// @param {array} m The matrix.
/// @return {real} The determinant of the matrix.
gml_pragma("forceinline");
var _m = argument0;
var _m0 = _m[0];
var _m1 = _m[1];
var _m2 = _m[2];
var _m3 = _m[3];
var _m4 = _m[4];
var _m5 = _m[5];
var _m6 = _m[6];
var _m7 = _m[7];
var _m8 = _m[8];
var _m9 = _m[9];
var _m10 = _m[10];
var _m11 = _m[11];
var _m12 = _m[12];
var _m13 = _m[13];
var _m14 = _m[14];
var _m15 = _m[15];
return(_m3*_m6*_m9*_m12-_m2*_m7*_m9*_m12-_m3*_m5*_m10*_m12+_m1*_m7*_m10*_m12
	+_m2*_m5*_m11*_m12-_m1*_m6*_m11*_m12-_m3*_m6*_m8*_m13+_m2*_m7*_m8*_m13
	+_m3*_m4*_m10*_m13-_m0*_m7*_m10*_m13-_m2*_m4*_m11*_m13+_m0*_m6*_m11*_m13
	+_m3*_m5*_m8*_m14-_m1*_m7*_m8*_m14-_m3*_m4*_m9*_m14+_m0*_m7*_m9*_m14
	+_m1*_m4*_m11*_m14-_m0*_m5*_m11*_m14-_m2*_m5*_m8*_m15+_m1*_m6*_m8*_m15
	+_m2*_m4*_m9*_m15-_m0*_m6*_m9*_m15-_m1*_m4*_m10*_m15+_m0*_m5*_m10*_m15);