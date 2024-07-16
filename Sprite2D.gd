extends Sprite2D

# Velocidad de movimiento del personaje
var velocidad = 200

# Llamado cuando el nodo entra en el árbol de la escena por primera vez
func _ready():
	$Animaciones.play("andar")
	pass

# Llamado cada frame de física. 'delta' es el tiempo transcurrido desde el frame anterior
func _physics_process(delta):
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_down", "ui_up")
	var movimiento = direccion * velocidad * delta
	position += movimiento
