package;
import flash.display.Graphics;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.math.FlxMath;
import flixel.FlxState;
import flixel.system.FlxBGSprite;
import flixel.text.FlxText;
import flixel.system.FlxAssets;
import Reg;
/**
 * ...
 * @author ...
 */

class Enemigo extends FlxSprite
{
	var movement:Bool = false;
	public function new() 
	{

		
		
		super();

		/*	{
		super();

		ship.loadGraphic(AssetPaths.Ship__png);
		ship.y = FlxG.height / 2;
		ship.x = FlxG.width / 2 - ship.width / 2;
		*/
	}
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (!movement)
		{
			//this.x += 1;
			this.velocity.x = Reg.speed;
			
			
		}
		else
		{
			//this.x -= 1;
			this.velocity.x = -Reg.speed;
			
			
		}
		if (FlxG.width-this.width <= this.x)
		{
			movement = true;
			this.y += 2;
		}
		if (this.x <=0 )
		{
			movement = false;
			this.y += 2;
		}
	}
}