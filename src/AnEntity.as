package  
{
	/**
	 * ...
	 * @author Dean "deanz0" Leaton
	 */
	
	import net.flashpunk.Entity
	import net.flashpunk.graphics.Image
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	
	public class AnEntity extends Entity
	{
		[Embed(source = '../dude.png')] private const ENTITY:Class;

		public function AnEntity() 
		{
			graphic = new Image(ENTITY);			
		}
		
		override public function update():void
		{
			if (Input.check("Left"))
			{
				x++;
			}
			x = Input.mouseX;
			y = Input.mouseY;
		}
		
	}

}