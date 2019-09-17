/// @func ce_ds_bucket_add(bucket, key, value)
/// @param {real} bucket
/// @param {string/real} key
/// @param {any} value
var _bucket = argument0;
var _key = argument1;
var _value = argument2;

var _list;

if (!ds_map_exists(_bucket, _key))
{
	_list = ds_list_create();
	ds_map_add_list(_bucket, _key, _list);
}
else
{
	_list = _bucket[? _key];
}

ds_list_add(_list, _value);