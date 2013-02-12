package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import net.flashpunk.graphics.Image;
	/**
	 * ...
	 * @author Jamie Bayne
	 */
	public class Blunt extends Entity
	{
		[Embed(source = '../blunt.png')] private const BLUNT:Class;
		
		private var velX:Number;
		private var _world:GameWorld;
		
		public function Blunt(x:int,y:int,world:GameWorld) 
		{
			var gfx:Image = new Image(BLUNT);
			super(x, y);
			
			graphic = gfx;
			width = gfx.width;
			height = gfx.height;
			type = "blunt";
			velX = 0;
			_world = world;
			
			Input.define("left", Key.Q, Key.E, Key.T, Key.U, Key.O, Key.A, Key.D, Key.G, Key.J, Key.Z, Key.C, Key.B,Key.LEFT,Key.LEFT_SQUARE_BRACKET);
			Input.define("right", Key.W, Key.R, Key.Y, Key.I, Key.P, Key.S, Key.F, Key.H, Key.K, Key.X, Key.V, Key.N,Key.RIGHT,Key.RIGHT_SQUARE_BRACKET);
		}
		
		override public function update():void
		{
			if (Input.check("left"))
			{
				velX = -1;
			}
			else if (Input.check("right"))
			{
				velX = 1;
			}
			else
			{
				velX = 0;
			}
			
			if (collide("burger",x,y))
			{
				_world.add(new Swag);
				_world.mcdonalds++;
			}
			x += velX;
		}
		
	}

}