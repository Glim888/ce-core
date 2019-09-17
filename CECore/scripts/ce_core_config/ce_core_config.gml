/// @func ce_core_config()
/// @desc Configuration script for CE Core.

/// @enum Enumeration of possible return values of comparator scripts.
enum CE_ECompare
{
	/// @member The first value is less than the second value.
	Less = -1,
	/// @member The values are equal.
	Equal = 0,
	/// @member The first value is greater than the second value.
	Greater = 1
};