extends PanelContainer

@export_category("Options")
@export_enum("highscore", "score") var score_type: String = "highscore"
@export_category("Script Exports")
@export var score_label: Label
@export var red_theme: Theme


func _ready() -> void:
	match score_type:
		"highscore":
			self.text = str(Save.get_save_data("highscore"))
		"score":
			self.text = Game.score
	
	
func cookies_not_allowed() -> void:
	self.set_theme(red_theme)
	score_label.text = "COOKIES NOT ALLOWED"
