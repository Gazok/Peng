package 
{
	import net.flashpunk.utils.Input
	/**
	 * ...
	 * @author Dean "BUTT" Leaton
	 */
	public class BUTT extends ass//Lol butts
	{
		public function BUTT(x:int,y:int)
		{
			super(x,y)
		}
		
		override public function update():void
		{
			var mouseX:int = Input.mouseX;
			var mouseY:int = Input.mouseY;
			if (mouseX > x && mouseX < x + width)
			{
				if (mouseY > y && mouseY < y + height)
				{
					if (Input.mouseDown)
					{
						MouseDown();
					}
					if (Input.mouseUp)
					{
						MouseUp();
					}
					if (Input.mousePressed)
					{
						MousePressed();
					}
					if (Input.mouseReleased)
					{
						MouseReleased();
					}
					MouseOver();
				}
			}
		}
		
		public function MouseDown():void {}
		public function MouseUp():void { }
		public function MousePressed():void {}
		public function MouseReleased():void {}
		public function MouseOver():void {}
	}
	
}