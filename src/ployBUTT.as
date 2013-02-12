package 
{
	import net.flashpunk.graphics.Image
	import net.flashpunk.FP
	/**
	 * ...
	 * @author Dean "Angus" Leaton
	 */
	public class ployBUTT extends BUTT
	{
		[Embed(source = '../ploy.png')] private const PLOY:Class;
		public function ployBUTT(x:int,y:int)
		{
			super(x,y)
			graphic = new Image(PLOY);
			width = 150;
			height = 100;
		}
		
		override public function MouseReleased():void
		{
			FP.world = new GameWorld;
		}
	}
	
}