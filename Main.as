package
{
	import Player.Player;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	public class Main extends Sprite 
	{
		private var leftDown:Boolean = false;
		private var rightDown:Boolean = false;
		private var spaceDown:Boolean = false;
		private var char:Player = new Player();
		public function Main() 
		{
			
			char.x = 500;
			char.y = 300;
			addChild(char);
			stage.addEventListener(Event.ENTER_FRAME, checkStuff);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keysDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keysUp);
		}
		public function checkStuff(e:Event):void
		{
			if (leftDown)
				char.x -= 4;
			if (rightDown)
				char.x += 4;
			if (spaceDown && char.y + char.width/2==char.floor)
				char.grav = -15;
			char.adjust();
		}
		public function keysDown(e:KeyboardEvent):void
		{
			if (e.keyCode == 37)
				leftDown = true;
			if (e.keyCode == 39)
				rightDown = true;
			if (e.keyCode == 32)
				spaceDown = true;
		}
		public function keysUp(e:KeyboardEvent):void
		{
			if (e.keyCode == 37)
				leftDown = false;
			if (e.keyCode == 39)
				rightDown = false;
			if (e.keyCode == 32)
				spaceDown = false;
		}
	}
	
}