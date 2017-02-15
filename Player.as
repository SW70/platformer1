package Player 
{
	import flash.display.MovieClip;
	public class Player extends MovieClip 
	{
		public var grav:int = 0;
		public var floor:int = 480;
		public function Player() 
		{
			this.graphics.beginFill(0, 1);
			this.graphics.drawCircle(this.x, this.y, 25);
			this.graphics.endFill();
		}
		public function adjust():void
		{
			this.y += grav;
			if(this.y+this.height/2<floor)
				grav++;
			else
			{
				grav = 0;
				this.y = floor - this.height / 2;
			}
			if (this.x - this.width / 2 < 0)
				this.x = this.width / 2;
			if (this.x + this.width / 2 > 640)
				this.x = 640 - this.width / 2;	
		}
	}

}