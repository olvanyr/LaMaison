
var text_part_lenght = string_length(text_part);
var keyboard_string_lenght = string_length(keyboard_string);
var text_lenght = string_length(text);

if string_copy(text,text_part_lenght + 1,1) == chr(32)
{
	text_part += chr(32);
	//keyboard_string += " "
}
if string_copy(keyboard_string,keyboard_string_lenght,1) == string_copy(text,text_part_lenght + 1,1)
{
	text_part += string_copy(keyboard_string,keyboard_string_lenght,1);
	keyboard_string = "";
}

if text_part_lenght == text_lenght
{
	instance_destroy();
	interaction.completed = true;
}
//show_debug_message("completed : " + string(completed));

