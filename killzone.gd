extends Area2D

@onready var timer: Timer = $Timer
var death_triggered = false

func _on_body_entered(body: Node2D) -> void:
	print("Entered", body.name)
	if body.name == "Player":
		print("You died")
		timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
