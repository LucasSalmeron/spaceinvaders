package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.FlxBGSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import Player;
import Enemigo;
import flixel.util.FlxColor;
import flixel.group.FlxGroup;

class PlayState extends FlxState
{

	public var jugador : Player;
	public var invader : Enemigo;

	private var enemyGroup:FlxGroup;
	
	override public function create():Void
	{
		super.create();
		jugador = new Player();
		jugador.makeGraphic(12, 12, FlxColor.GREEN);
		invader = new Enemigo();
		//invader.makeGraphic(12, 12, FlxColor.BLUE);
		//FlxSprite:invader = new FlxBGSprite();
		invader.loadGraphic(AssetPaths.INVADER__png);
		invader.y = 0;
		invader.x = 0;
		
		

		for (i in 0...4)
		{
			var enemy:Enemigo = new Enemigo();
			enemyGroup.add(enemy);
		}

		// para chequeqar la colision	charGroup.length();
		add(enemyGroup);
			
		add(jugador);
		add(invader);	
		trace(invader.width);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		//da true si una bala toca alguna parte del grupo	
		/*FlxG.overlap(charGroup.members[i]), bala);
		for(i in 0...enemyGroup.length)
		{
			if(FlxG.overlap(bala, enemyGroup.members[i]))
		}
		
		*/
		
		
	}
}
