using Godot;
using System;


public partial class double_jump : Area2D
{
	private void _on_body_entered(Node2D body)
	{
		GD.Print("New powerUp");
		player.HasPower = true;
		player.stack++;
		GD.Print("+ " + player.stack + " jump");
		QueueFree();
	}
}
