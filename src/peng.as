package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Dean "BigB0yHardyXXX" Leaton
	 */
	public class peng extends Entity
	{
		[Embed(source = '../pengggg.png')] private const PENG:Class
		public function peng(x:int,y:int) 
		{
			super(x, y);
			
			var g:Image = new Image(PENG);
			graphic = g;
		}
		
	}

}