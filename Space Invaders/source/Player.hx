package;
import flixel.FlxSprite;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{

	public function new() 
	{
		super();
	}
	
    override public function update(elapsed:Float)
	{
		super.update(elapsed);
		
	    if (FlxG.keys.justPressed.LEFT) {
		    velocity.x = -50;
		}
		if (FlxG.keys.justPressed.RIGHT) {
			velocity.x = 50;
		}
	
		
		
		
	}
	
}