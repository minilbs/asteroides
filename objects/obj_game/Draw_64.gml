/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 35B8E701
/// @DnDArgument : "expr" "room"
var l35B8E701_0 = room;
switch(l35B8E701_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 52D3882E
	/// @DnDParent : 35B8E701
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3671618B
		/// @DnDParent : 52D3882E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 71C3EF33
		/// @DnDParent : 52D3882E
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "spr_lives"
		var l71C3EF33_0 = sprite_get_width(spr_lives);
		var l71C3EF33_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l71C3EF33_2 = __dnd_lives; l71C3EF33_2 > 0; --l71C3EF33_2) {
			draw_sprite(spr_lives, 0, 20 + l71C3EF33_1, 60);
			l71C3EF33_1 += l71C3EF33_0;
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0D36DC35
		/// @DnDParent : 52D3882E
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "100"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		if(__dnd_score >= 100)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
			/// @DnDVersion : 1
			/// @DnDHash : 3E2972EC
			/// @DnDParent : 0D36DC35
			/// @DnDArgument : "x1" "250"
			/// @DnDArgument : "y1" "20"
			/// @DnDArgument : "x2" "850"
			/// @DnDArgument : "y2" "120"
			draw_rectangle(250, 20, 850, 120, 1);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 770ADB59
			/// @DnDParent : 0D36DC35
			/// @DnDArgument : "x" "270"
			/// @DnDArgument : "y" "40"
			/// @DnDArgument : "caption" ""Yey, ganaste. Enter para continuar ""
			draw_text(270, 40, string("Yey, ganaste. Enter para continuar ") + "");
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 23C3DC99
	/// @DnDParent : 35B8E701
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 18771778
		/// @DnDParent : 23C3DC99
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0C050D4C
		/// @DnDParent : 23C3DC99
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""GO GO LETS GO""
		draw_text(500, 250, string("GO GO LETS GO") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3A24A180
		/// @DnDParent : 23C3DC99
		/// @DnDArgument : "color" "$FFFF9F05"
		draw_set_colour($FFFF9F05 & $ffffff);
		var l3A24A180_0=($FFFF9F05 >> 24);
		draw_set_alpha(l3A24A180_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 659D3FA3
		/// @DnDParent : 23C3DC99
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "xscale" "5"
		/// @DnDArgument : "yscale" "5"
		/// @DnDArgument : "caption" ""SPACE ONIONIO ""
		draw_text_transformed(500, 300, string("SPACE ONIONIO ") + "", 5, 5, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4F8E26B9
		/// @DnDParent : 23C3DC99
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4F8E26B9_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4F8E26B9_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7851C10B
	/// @DnDParent : 35B8E701
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7105B0B5
		/// @DnDParent : 7851C10B
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6C366DB8
		/// @DnDParent : 7851C10B
		/// @DnDArgument : "x" "0250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""DED""
		draw_text(0250, 250, string("DED") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0594A681
	/// @DnDParent : 35B8E701
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 14596DA2
		/// @DnDParent : 0594A681
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2CCB5046
		/// @DnDParent : 0594A681
		/// @DnDArgument : "x" "0250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""YEAH""
		draw_text(0250, 250, string("YEAH") + "");
		break;
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 46BD0FE7
draw_set_halign(fa_left);
draw_set_valign(fa_top);