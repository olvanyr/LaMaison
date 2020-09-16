if (completed)
{
	if (creator.random_goal == noone) {creator.state = text;}else{creator.state = "";}
	instance_destroy(oTyping);
	instance_destroy(oGoal);
}

