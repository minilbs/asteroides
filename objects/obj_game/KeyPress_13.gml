/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2804EDB0
/// @DnDArgument : "expr" "room"
var l2804EDB0_0 = room;
switch(l2804EDB0_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 381D8F87
	/// @DnDParent : 2804EDB0
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 53AD133A
		/// @DnDParent : 381D8F87
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 44AAF6F9
	/// @DnDParent : 2804EDB0
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2EDD2CEB
		/// @DnDParent : 44AAF6F9
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3D3AB38B
	/// @DnDParent : 2804EDB0
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 532149B1
		/// @DnDParent : 3D3AB38B
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 760D9727
	/// @DnDParent : 2804EDB0
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Instance Variables.If_Score
		/// @DnDVersion : 1
		/// @DnDHash : 09B923F4
		/// @DnDParent : 760D9727
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "100"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		if(__dnd_score >= 100)
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 4E730B66
			/// @DnDParent : 09B923F4
			room_goto_next();
		}
		break;
}