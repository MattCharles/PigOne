extends HBoxContainer

class_name ScoreLog

@onready var _index := $Index
@onready var _value := $Value
var point_value := 0

func write(index:int, value:int):
	_index.text = str(index) + ":"
	_value.text = str(value)
	point_value = value
