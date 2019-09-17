var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();
var _mouseX = window_mouse_get_x();
var _mouseY = window_mouse_get_y();
var _fontHeight = string_height("Q");
var _x = 0;
var _y = 0;

#region Player healthbar
_y = 16;

var _healthbarWidth = 200;
var _healthbarHeight = 24;
var _potionWidth = sprite_get_width(SprPotion);
var _potionHeight = sprite_get_height(SprPotion);
var _padding = 8;

with (OPlayer)
{
	_x = 16;
	draw_text(_x, _y, "Player" + string(playerNumber));
	_y += _fontHeight + _padding;
	ce_draw_rectangle(_x, _y, _healthbarWidth, _healthbarHeight, c_black);
	ce_draw_rectangle(_x, _y, (hp / 100) * _healthbarWidth, _healthbarHeight, c_red);
	_y += _healthbarHeight + _padding;
	draw_sprite(SprPotion, 0, _x, _y);
	_x += _potionWidth + _padding;
	draw_text(_x, _y + round((_potionHeight - _fontHeight) * 0.5), string(potions) + "x");
	_y += _potionHeight + _padding;
}
#endregion Player healthbar

#region Wave text
draw_set_halign(fa_center);

_x = _guiWidth * 0.5;
_y = 16;

draw_text(_x, _y, ce_string_format("Wave ${0} coming in", [wave]));
_y += _fontHeight;

var _timeLeft = ceil(ce_timer_get_time_left(timerSpawnEnemy) / 1000);
draw_text(_x, _y, string(_timeLeft));

draw_set_halign(fa_left);
#endregion Wave text

#region Pause screen
var _btnWidth = sprite_get_width(SprBtnPause);

if (pause)
{
	ce_draw_rectangle(0, 0, _guiWidth, _guiHeight, c_black, 0.5);
}

draw_sprite(SprBtnPause, pause, _guiWidth - _btnWidth - 16, 16);

draw_set_halign(fa_right);
draw_text(_guiWidth - _btnWidth - 16, 16, ce_key_to_string(vk_escape));
draw_set_halign(fa_left);

if (!pause)
{
	exit;
}

var _scheme = ce_input_get_scheme();
var _binding = ce_input_get_binding_action();
var _gamepad = ce_input_get_main_gamepad();
var _actions = ce_array_create_range(0, EAction.SIZE - 1);
var _tableWidth = 512;

_x = round((_guiWidth - _tableWidth) * 0.5);
_y = round((_guiHeight - EAction.SIZE * _fontHeight) * 0.5);

while (ce_iter(_actions))
{
	var _action = CE_ITER_VALUE;
	var _actionName = ce_input_action_get_name(_action);

	var _text = ce_string_format("${0}:${1}${2}", [
		_actionName,
		string_repeat(" ", 14 - string_length(_actionName)),
		ce_input_to_string(_scheme, _action)
	]);

	if (_binding == _action)
	{
		ce_draw_rectangle(_x, _y, _tableWidth, _fontHeight, c_white);
		draw_rectangle_color(_x, _y + _fontHeight - 1,
			_x + _tableWidth * ce_input_get_binding_countdown_l(),
			_y + _fontHeight + 1, $FF8000, $FF8000, $FF8000, $FF8000, false);
	}
	else if (ce_point_in_rect(_mouseX, _mouseY, _x, _y, _tableWidth, _fontHeight))
	{
		draw_rectangle(_x, _y, _x + _tableWidth, _y + _fontHeight, true);

		if (_binding == noone
			&& mouse_check_button_pressed(mb_left))
		{
			if (keyboard_check(vk_control))
			{
				ce_input_scheme_clear_bindings(_scheme, _action);
			}
			ce_input_bind(_scheme, _action, _gamepad);
		}
	}

	var _color = c_white * (_binding != _action);
	draw_text_color(_x, _y, _text, _color, _color, _color, _color, 1);
	_y += _fontHeight;
}
#endregion Pause screen