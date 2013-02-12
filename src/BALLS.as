package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	/**
	 * ...
	 * @author Jamie Bayne
	 */
	public class BALLS extends Entity
	{
		[Embed(source = '../marklol.png')] private const MARKLOL:Class; //marks such a berk lol

		private var free:Boolean;
		private var _blunt:Blunt;
		private var velX:Number;
		private var velY:Number;
		private var _world:GameWorld;
		
		public function BALLS(blunt:Blunt,world:GameWorld) 
		{
			var g:Image = new Image(MARKLOL);
			graphic = g;
			
			g.scale = 0.4;
			
			width = g.width*g.scale;
			height = g.height*g.scale;
			
			_world = world;
			
			velX = 2;
			velY = 0;
			_blunt = blunt;
			type = "balls";
			free = false;
		}

		override public function update():void
		{
			if (free)
			{
				x += velX;
				y += velY;
				
				if (x < 0 || x + width > FP.width)
				{
					velX = -velX;
				}
				if (y < 0)
				{
					velY = -velY;
				}
				if (y + height > FP.height)
				{
					_world.life--;
					free = false
				}
				
				if (collide("blunt", x, y) || collide("berk", x, y))
				{
					velY = -velY;
				}
			}
			else
			{
				x = _blunt.x + _blunt.halfWidth - halfWidth;
				y = _blunt.y - height;
				
				if (Input.pressed(Key.SPACE))
				{
					free = true;
					velY = -2;
				}
			}
		}
		
	}

}