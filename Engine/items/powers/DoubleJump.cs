using Godot;
using System;


public partial class DoubleJump : Area2D
{
	public override void _Ready()
	{
		// Called every time the node is added to the scene.
		// Initialization here.
		//GD.Print("PowerUp DoubleJump");
	}

	public override void _Process(double delta)
	{
		// Called every frame. Delta is time since the last frame.
		// Update game logic here.
	}
	
	private void _on_body_entered(Node2D body)
	{
		GD.Print("New powerUp");
		player.HasPower = true;
		player.stack++;
		GD.Print("+ " + player.stack + " jump");
		QueueFree();
	}
}
