/// @arg fake_array
function array_to_array(argument0) {

	var str = argument0;
	var len = string_length(str);

	var i = 0;
	var place = 0;
	var prevPlace = 0;

	var real_array = [];
	while (place <= len)
	{
		// copy string, including punctuation
		if (string_char_at(str, place) == " " || string_char_at(str, place) == "\n" || place == len)
		{
			if (string_digits(string_copy(str, prevPlace, place - prevPlace)) != ""){
				real_array[i] = string_digits(string_copy(str, prevPlace, place - prevPlace));
				++i;
			}
			prevPlace = place;
		}
		place++;
	}
	
	return real_array;


}
