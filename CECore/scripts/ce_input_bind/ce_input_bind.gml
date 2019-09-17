/// @func ce_input_bind(scheme, action[, controller])
/// @desc Enable binding of an input to the action in the input scheme.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {real} [controller] The index of the controller. Default is 0.
global.__ceInputBindingScheme = argument[0];
global.__ceInputBindingAction = argument[1];
global.__ceInputBindingTimestamp = current_time;
global.__ceInputBindingController = (argument_count > 2) ? argument[2] : 0;