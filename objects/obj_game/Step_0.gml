/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 59A5301B
/// @DnDArgument : "expr" "room"
var l59A5301B_0 = room;
switch(l59A5301B_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 43E0C1CE
	/// @DnDParent : 59A5301B
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 3FC48AAF
		/// @DnDParent : 43E0C1CE
		/// @DnDArgument : "op" "3"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives <= 0)
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 5B8E5094
			/// @DnDParent : 3FC48AAF
			/// @DnDArgument : "room" "rm_gameover"
			/// @DnDSaveInfo : "room" "rm_gameover"
			room_goto(rm_gameover);
		}
		break;
}