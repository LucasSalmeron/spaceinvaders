package;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxCollision;

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
		//MOVIMIENTO DERECHA IZQUIERDA
	    if (FlxG.keys.pressed.LEFT || FlxG.keys.pressed.RIGHT) {
			
			if (FlxG.keys.pressed.RIGHT) {
			velocity.x = Reg.velocidadPlayer;
		}
		  if (FlxG.keys.pressed.LEFT) {
		    velocity.x = -Reg.velocidadPlayer;
		}
		
		 if (FlxG.keys.pressed.LEFT && FlxG.keys.pressed.RIGHT) {
			 velocity.x = 0;
		 }
		
		}else {
		velocity.x = 0;	
		}
		//MOVIMIENTO DERECHA IZQUIERDA
		
		//OUT OF BOUNDS CHECKING
		if (this.x <= 0 && !FlxG.keys.pressed.RIGHT) {
			velocity.x = 0;
		}
		if (this.x + this.width >= FlxG.width && !FlxG.keys.pressed.LEFT) {
			velocity.x = 0;
		}
		//OUT OF BOUNDS CHECKING
		
		
		
		
	}
	
}