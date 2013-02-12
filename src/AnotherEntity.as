package  
{
	/**
	 * ...
	 * @author Dean "leanNdean" Leaton
	 */
	
	import net.flashpunk.Entity
	import net.flashpunk.graphics.Image
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import net.flashpunk.FP
	
	public class AnotherEntity extends Entity
	{
		[Embed(source = '../OtherDude.png')] private const ENTITY2:Class;

		public function AnotherEntity(x:int,y:int = 0)
		{
			super(x, y);
			graphic = new Image(ENTITY2);	
		}
		
		override public function update():void
		{
			FP.world.bringToFront(this);
		}
		
	}

}