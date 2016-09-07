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
	public var bala : FlxSprite;
	override public function create():Void
	{
		super.create();
		jugador = new Player();
		jugador.makeGraphic(12, 12, FlxColor.GREEN); 
	//  jugador.loadGraphic("assets/images/Ship.png");
	//  pone el grafico del player. pero deja de funcionar el oob checking debido al hitbox del sprite.
		jugador.setPosition(FlxG.width / 2 - jugador.width / 2, 110);
		add(jugador);
		
		bala = new FlxSprite();
		bala.makeGraphic(2, 8, FlxColor.PURPLE);
		bala.exists = false;
		add(bala);
		
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		//BALA PLAYER
		{
		if (FlxG.keys.justPressed.SPACE && !bala.exists) {
		bala.setPosition(jugador.x + jugador.width / 2 -bala.width / 2, jugador.y - jugador.height/2); 
		bala.velocity.y = -Reg.velocidadBalaP;
		bala.exists = true;
		}
		if (bala.y + bala.height <= 0) {
		bala.exists = false;
		}
		}
		//BALA PLAYER
		
	}
}
