# ------------------------------------------------------------------------------
# @file        kv_cache.gd
# @brief       KVCache
# @author      masvetak
# @version     0.1.0
# ------------------------------------------------------------------------------

extends Node

var _kv_cache: Dictionary = {}

func set_value(key: String, value) -> void:
	_kv_cache[key] = value

func get_value(key: String, default = null):
	return _kv_cache.get(key, default)

func remove_value(key: String) -> void:
	if _kv_cache.has(key):
		var _res = _kv_cache.erase(key)

func print_cache() -> void:
	print("[KV-CACHE] number of keys: ", _kv_cache.size())
	print(JSON.print(_kv_cache, '\t'))
