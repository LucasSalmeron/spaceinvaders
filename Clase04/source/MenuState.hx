package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{	
	
	var timer:Int=0;
	override public function create():Void
	{
		super.create();
		
		var intro:FlxSprite = new FlxSprite();
		
		intro.loadGraphic(AssetPaths.IntroA__png);
		//intro.setGraphicSize(160, 144);
		add(intro);


		
		
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		/*var menu:FlxState = new FlxState();
		flixel.FlxG.switchState(menu);
		*/
		if (timer > 100)
		{
			
		}
		else
		{
			
			
		};
		
		if(FlxG.keys.pressed.ENTER)
		{
			var Invasion:FlxState = new FlxState();
			flixel.FlxG.switchState(Invasion);
		}
		if (FlxG.keys.pressed.ENTER) 
		{
			
			
		}
		
		if (FlxG.keys.pressed.BACKSPACE)
		{
			Sys.exit(0);
		}
		
	timer++;	
	}
}
