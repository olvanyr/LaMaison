offset_y= 0;
host = self;

next_rope = instance_create_layer(x,y + offset_y,"Instances",oRope);

attach = physics_joint_distance_create(host,next_rope,host.x,host.y,next_rope.x,next_rope.y,false);
physics_joint_set_value(attach,phy_joint_damping_ratio,1);	 //springyness of the rope 
physics_joint_set_value(attach,phy_joint_frequency,10);		 //frequency at witch the rope update
physics_joint_set_value(attach,phy_joint_max_length,10);

with(next_rope)
{
	parent = other.id;
}

repeat(5)
{
	offset_y += 0.1;
	last_rope = next_rope;
	next_rope = instance_create_layer(x,y + offset_y,"Instances",oRope);
	
	link = physics_joint_distance_create(last_rope,next_rope,last_rope.x,last_rope.y,next_rope.x,next_rope.y,false);
	physics_joint_set_value(link,phy_joint_damping_ratio,1);	 //springyness of the rope 
	physics_joint_set_value(link,phy_joint_frequency,10);		 //frequency at witch the rope update
	physics_joint_set_value(attach,phy_joint_max_length,10);
	with(next_rope)
	{
		parent = other.last_rope;
	}
}