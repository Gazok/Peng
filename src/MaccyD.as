package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Jamie Bayne
	 */
	
	public class MaccyD extends Entity
	{
		[Embed(source = '../mcdonalds.jpg')] private const MCD:Class;
		
		private var _bounce:Boolean;
		private var _bouncable:Boolean;
		private var _velX:Number;
		private var _velY:Number;
	
		public function MaccyD(x:int,y:int,bouncable:Boolean = false) 
		{
			super(x, y);
			
			_velX = 0;
			_velY = 1.5;
			_bounce = false;
			_bouncable = bouncable;
			var g:Image = new Image(MCD);
			graphic = g;
			width = g.width;
			height = g.height;
			type = "burger";
		}
		
		override public function update():void
		{
			if (!_bounce)
			{
				if (y > FP.height)
				{
					FP.world.remove(this);
				}
				if (collide("blunt", x, y))
				{
					if (_bouncable)
					{
						_bounce = true;
					}
					else
					{
						FP.world.remove(this);
					}
				}
			}
			else
			{
				if (y + height > FP.height || y < 0 || collide("blunt", x, y))
				{
					_velY = -_velY;
					if (_velX == 0)
					{
						_velX = 1.5;
					}
				}
				
				if (x < 0)
				{
					x = 0
					_velX = -_velX;
				}
				else if ((x + width) > FP.width)
				{
					x = FP.width - width;
					_velX = -_velX;
				}
			}
			
			y += _velY;
			x += _velX;
		}
	}

}