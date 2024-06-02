extends Sprite2D

@export var speed =100.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Olá Mundo!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float):
	var input = Input.get_vector("ui_left","ui_right","ui_up","ui_down") # trocar a ordem do up e down também resolve o problema de movimentação
	position.x =position.x+input.x * 5.0 # no Godot o espacamento tem que ser igual para todas as variaveis por padrão
	position.y =position.y+input.y * 5.0
	
	#position += input * speed * delta# versão simplificada para fazer a movimentação
	pass
