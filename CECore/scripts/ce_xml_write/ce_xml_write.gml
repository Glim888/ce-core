/// @func ce_xml_write(rootElement[, indent])
/// @desc Writes the tree of XML elements into a string.
/// @param {real} rootElement The root element of the tree.
/// @param {real} [indent] The current indentation.
/// @return {string} The resulting string.
var _element = argument[0];
var _name = ce_xml_elem_get_name(_element);
var _attributeCount = ce_xml_elem_get_attribute_count(_element);
var _childCount = ce_xml_elem_get_child_count(_element);
var _value = ce_xml_elem_get_value(_element);
var _indent = (argument_count > 1) ? argument[1] : 0;
var _spaces = string_repeat(" ", _indent * 2);

// Open element
var _string = _spaces + "<" + _name;

// Attributes
var _attribute = ce_xml_elem_find_first_attribute(_element);

repeat (_attributeCount)
{
	_string += " " + string(_attribute) + "=\""
		+ ce_xml_string(ce_xml_elem_get_attribute(_element, _attribute))
		+ "\"";
	_attribute = ce_xml_elem_find_next_attribute(_element, _attribute);
}

if (_childCount == 0 && is_undefined(_value))
{
	_string += "/";
}

_string += ">";

if (_childCount != 0 || is_undefined(_value))
{
	_string += chr(10);
}

// Children
for (var i = 0; i < _childCount; ++i)
{
	var _childElement = ce_xml_elem_get_child(_element, i);
	_string += ce_xml_write(_childElement, _indent + 1);
}

// Close element
if (_childCount != 0)
{
	_string += _spaces + "</" + ce_xml_elem_get_name(_element) + ">" + chr(10);
}
else if (!is_undefined(_value))
{
	_string += ce_xml_string(_value);
	_string += "</" + ce_xml_elem_get_name(_element) + ">" + chr(10);
}

return _string;