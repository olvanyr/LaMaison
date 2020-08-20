///@desc in_list
///@arg array
///@arg thing_to_check
function in_list() {

	var array = argument[0];
	var check = argument[1];

	var len = array_length(array);
	var i = 0; repeat(len)
	{
		if (check == array[i])
		{
			return true
			break;
		}
		i++;
	}


}
