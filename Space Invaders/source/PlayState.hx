package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import Player;
import flixel.util.FlxColor;
class PlayState extends FlxState
{
	public var jugador : Player;
	
	override public function create():Void
	{
		super.create();
		jugador = new Player();
		jugador.makeGraphic(12, 12, FlxColor.GREEN);
		add(jugador);
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
