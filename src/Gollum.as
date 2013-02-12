package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Jamie Bayne
	 */
	public class Gollum extends Entity
	{
		[Embed(source = '../gollum.PNG')] private const GOLLUM:Class;
		[Embed(source = '../taters.mp3')] private const GSOUND:Class;
		
		private var gSound:Sfx;
		
		public function Gollum() 
		{
			var g:Image = new Image(GOLLUM);
			graphic = g;
			width = g.width;
			height = g.height;
			
			x = 400;
			y = FP.halfHeight - halfHeight;
			
			gSound = new Sfx(GSOUND);
			gSound.play();
		}
		
		override public function update():void
		{
			FP.world.bringToFront(this);
			if (!gSound.playing)
			{
				FP.world.remove(this);
			}
		}
		
	}

}