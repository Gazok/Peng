package  
{
	import net.flashpunk.graphics.Image
	import net.flashpunk.FP
	import net.flashpunk.Graphic
	import net.flashpunk.Entity
	/**
	 * ...
	 * @author Bean Meaton
	 */
	public class Berk extends Entity
	{
		[Embed(source = '../marklol.png')] private const MARKLOL:Class; //marks such a berk lol
		private var _graphic:Image;
		private var _world:GameWorld;
		
		public function Berk(x:int,y:int,world:GameWorld) 
		{
			super(x, y)
			
			var scaleX:Number = Math.random();
			var scaleY:Number = Math.random();
			scaleX += 0.5; scaleY += 0.5;
			scaleX *= 0.75;   scaleY *= 0.75;
			
			_graphic = new Image(MARKLOL);
			graphic = _graphic;
			
			width = _graphic.width * scaleX;
			height = _graphic.height * scaleY;
			_graphic.scaleX = scaleX;
			_graphic.scaleY = scaleY;
			
			type = "berk";
			
			_world = world;
		}
		
		override public function update():void
		{
			if (collide("balls", x, y))
			{
				_world.remove(this);
				_world.score++;
				if (Math.random() > 0.9)
				{
					var bounce:Boolean = false;
				
					if (_world.mcdonalds > 3)
					{
						bounce = true;
					}
					
					_world.add(new MaccyD(x, y, bounce));
				}
			}
		}
		
	}

}