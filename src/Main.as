package 
{
	import net.flashpunk.Engine
	import net.flashpunk.FP
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import flash.display.Stage;

	[SWF(width=600, height=400)]
	
	/**
	 * ...
	 * @author Dean "leet" Leaton
	 */
	public class Main extends Engine
	{
		
		public function Main():void 
		{
			super(600, 400, 60, false);
			
			FP.world = new MyWorld;
		}
		
		override public function update():void
		{
			super.update();
			if (Input.check(Key.ESCAPE))
			{
					FP.screen.angle += 5;
			}
		}
		
		override public function init():void
		{
			trace("FlashPunk Started Successfully!");
		}
	}
	
}