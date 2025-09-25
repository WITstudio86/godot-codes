extends Node

signal change_score

var score : int = 0:
	set(value):
		score = value
		print("set 触发已更新值: " , score)
		change_score.emit() # 全局的消息所有节点都可见
