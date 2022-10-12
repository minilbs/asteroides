/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 677431C4
/// @DnDInput : 5
/// @DnDArgument : "expr_2" "obj_ship"
/// @DnDArgument : "expr_3" "1000"
/// @DnDArgument : "expr_4" "1000"
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "var_1" "cameraY"
/// @DnDArgument : "var_2" "target"
/// @DnDArgument : "var_3" "cameraWidth"
/// @DnDArgument : "var_4" "cameraHeight"
cameraX = 0;
cameraY = 0;
target = obj_ship;
cameraWidth = 1000;
cameraHeight = 1000;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5A587CD5
/// @DnDInput : 2
/// @DnDArgument : "function" "display_set_gui_size"
/// @DnDArgument : "arg" "cameraWidth"
/// @DnDArgument : "arg_1" "cameraHeight"
display_set_gui_size(cameraWidth, cameraHeight);