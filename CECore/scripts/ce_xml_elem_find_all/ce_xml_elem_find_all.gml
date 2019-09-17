/// @func ce_xml_elem_find_all(rootElement, name)
/// @desc Finds all elements with given name in the given tree of elements.
/// @param {real} rootElement The root element of the tree.
/// @param {string} name The name of elements to be found.
/// @return {real} A ds_list containing all found elements.
var _element = argument[0];
var _name = argument[1];
var _list = (argument_count == 2) ? ds_list_create() : argument[2];
if (ce_xml_elem_get_name(_element) == _name)
{
	ds_list_add(_list, _element);
}
var _numOfChildElements = ce_xml_elem_get_child_count(_element);
for (var i = 0; i < _numOfChildElements; ++i)
{
	ce_xml_elem_find_all(ce_xml_elem_get_child(_element, i), _name, _list);
}
return _list;