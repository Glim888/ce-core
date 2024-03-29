/// @func ce_xml_read(fileName)
/// @desc Reads the XML formatted file and stores the contained data into a
/// tree of elements.
/// @param {string} fileName The name of the XML formatted file.
/// @return {real} The root element of the tree on success or noone on fail.
var _file = file_bin_open(argument0, 0);

if (_file == -1)
{
	return noone;
}

/// @enum XML delimiters.
enum CE_EXmlChars
{
	/// @member Null character.
	Null = 0,
	/// @member Line feed.
	LF = 10,
	/// @member Carriage return.
	CR = 13,
	/// @member Space.
	Space = 32,
	/// @member Exclamation mark.
	EM = 33,
	/// @member Double quote.
	DQ = 34,
	/// @member Single quote.
	SQ = 39,
	/// @member Slash.
	Slash = 47,
	/// @member Less than sign.
	LT = 60,
	/// @member Equals sign.
	Equal = 61,
	/// @member Greater than sign.
	GT = 62,
	/// @member Question mark.
	QM = 63
};

var _filePos = 0;
var _fileSize = file_bin_size(_file);
var _byte = CE_EXmlChars.Space;
var _isSeparator = true;
var _token = "";
var _isString = false;
var _attributeName = "";
var _root = noone;
var _element = noone;
var _lastElement = noone;
var _parentElement = noone;
var _isClosing = false;
var _isComment = false;
var _lastByte;

do
{
	// Read byte from file
	_lastByte = _byte;
	_byte = file_bin_read_byte(_file);

	// Process byte
	_isSeparator = true;

	switch (_byte)
	{
	// Start of new element
	case CE_EXmlChars.LT:
		if (_element != noone)
		{
			if (_root != noone)
			{
				ce_xml_elem_destroy(_root);
			}
			show_debug_message("ERROR: Unexpected symbol '<' at "
				+ string(_filePos) + "!");
			return noone;
		}

		// Set element value
		while (string_byte_at(_token, 1) == 32)
		{
			_token = string_delete(_token, 1, 1);
		}

		if (_token != ""
			&& _parentElement != noone
			&& ce_xml_elem_get_child_count(_parentElement) == 0)
		{
			ce_xml_elem_set_value(_parentElement, ce_xml_parse(_token));
		}

		_element = ce_xml_elem_create();
		break;

	// End of element
	case CE_EXmlChars.GT:
		if (_element == noone)
		{
			if (_root != noone)
			{
				ce_xml_elem_destroy(_root);
			}
			show_debug_message("ERROR: Unexpected symbol '>' at "
				+ string(_filePos) + "!");
			return noone;
		}

		_lastElement = _element;

		if (_root == noone && !_isComment)
		{
			_root = _element;
		}

		if (_isComment)
		{
			_lastElement = noone;
			ds_map_destroy(_element);
			_isComment = false;
		}
		else if (_lastByte == CE_EXmlChars.Slash)
		{
			// Self-closing element
			if (_parentElement != noone)
			{
				ce_xml_elem_add_child(_parentElement, _element);
			}
		}
		else if (_isClosing)
		{
			// If the element is not self-closing and it does not
			// have a value defined, then set its value to an empty string.
			if (is_undefined(ce_xml_elem_get_value(_parentElement))
				&& ce_xml_elem_get_child_count(_parentElement) == 0)
			{
				ce_xml_elem_set_value(_parentElement, "");
			}
			_parentElement = ce_xml_elem_get_parent(_parentElement);
			_lastElement = noone;
			ds_map_destroy(_element);
			_isClosing = false;
		}
		else
		{
			if (_parentElement != noone)
			{
				ce_xml_elem_add_child(_parentElement, _element);
			}
			_parentElement = _element;
		}
		_element = noone;
		break;

	// Closing element
	case CE_EXmlChars.Slash:
		if (_isString || _element == noone)
		{
			_isSeparator = false;
		}
		else if (_lastByte == CE_EXmlChars.LT)
		{
			_isClosing = true;
		}
		break;

	// Attribute
	case CE_EXmlChars.Equal:
		if (!_isString)
		{
			if (_token != "")
			{
				_attributeName = _token;
			}
		} else {
			_isSeparator = false;
		}
		break;

	// Start/end of string
	case CE_EXmlChars.SQ:
	case CE_EXmlChars.DQ:
		if (_isString == _byte)
		{
			_isString = false;
			// Store attribute
			if (_attributeName != "")
			{
				if (_element != noone)
				{
					ce_xml_elem_set_attribute(_element, _attributeName,
						ce_xml_parse(_token));
				}
				_attributeName = "";
			}
		}
		else if (!_isString)
		{
			_isString = _byte;
		}
		break;

	// Treat as comments
	case CE_EXmlChars.QM:
	case CE_EXmlChars.EM:
		if (_lastByte == CE_EXmlChars.LT)
		{
			_isComment = true;
		}
		else
		{
			_isSeparator = false;
		}
		break;

	default:
		// Whitespace
		if (!_isString && _element != noone
			&& ((_byte > CE_EXmlChars.Null && _byte <= CE_EXmlChars.CR)
			|| _byte == CE_EXmlChars.Space))
		{
			// Do nothing...
		}
		else
		{
			_isSeparator = false;
		}
		break;
	}

	// Process tokens
	if (_isSeparator)
	{
		// End of token
		if (_token != "")
		{ 
			// Set element name
			if (_element != noone && ce_xml_elem_get_name(_element) == "")
			{
				ce_xml_elem_set_name(_element, _token);
			}
			else if (_lastElement != noone
				&& ce_xml_elem_get_name(_lastElement) == "")
			{
				ce_xml_elem_set_name(_lastElement, _token);
			}
			_token = "";
		}
	}
	else
	{
		// Build token
		if (_byte > CE_EXmlChars.Null && _byte <= CE_EXmlChars.CR)
		{
			// Replace new lines, tabs, etc. with spaces
			_byte = CE_EXmlChars.Space;
		}
		_token += chr(_byte);
	}
}
until (++_filePos == _fileSize);

file_bin_close(_file);
return _root;