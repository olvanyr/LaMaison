/// @ desc load_JSON_from_file
/// @arg filename
function load_JSON_from_file(argument0) {

	var _filename = argument0;

	var _buffer = buffer_load( _filename);
	var _string = buffer_read( _buffer, buffer_string);
	buffer_delete( _buffer);

	var _json = json_decode( _string);
	return _json;



}
