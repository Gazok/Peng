package  
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World
	import net.flashpunk.Sfx
	import net.flashpunk.FP
	/**
	 * ...
	 * @author Dean "d3@n0m!n@70r" Leaton
	 */
	public class GameWorld extends World
	{
		[Embed(source = '../ronpaul2012.jpg')] private const RONPAUL:Class;
		[Embed(source = '../puredopechoonz.mp3')] private const CHOONZ:Class;
		
		private var _choonz:Sfx;
		private var _blunt:Blunt;
		private var _score:int;
		private var _life:int;
		private var _lifeText:Text;
		private var _scoreText:Text;
		private var _mcdonalds:int;
		
		public function GameWorld() 
		{
			//Set up scene
			add(new AnotherEntity(200));
			addGraphic(new Image(RONPAUL));
			
			//Create the bricks
			var screenWidth:int = FP.width;
			var screenHeight:int = FP.height;
			
			for (var i:int = 0; i < 40; i++)
			{
				var posX:int = screenWidth * Math.random();
				var posY:int = (screenHeight - 150) * Math.random();
				add(new Berk(posX,posY,this));
			}
			
			//Set up the bat
			_blunt = new Blunt(screenWidth/2,380,this);
			add(_blunt);
			add(new BALLS(_blunt, this));
			
			//Start looping music
			_choonz = new Sfx(CHOONZ);
			_choonz.loop();
			
			//Set up the text objects
			_life = 3;
			_lifeText = new Text("Liveeeeeeeees: " + life);
			_lifeText.size = 20;
			_lifeText.color = 0x000000;
			addGraphic(_lifeText);
			_score = 0;
			_scoreText = new Text("scoreeeeeeeee: " + score,0,380);
			_scoreText.size = 30;
			_scoreText.color = 0x00CC00;
			addGraphic(_scoreText);
			
			var test:Text = new Text("Test", 50, 50);
			addGraphic(test);
		}
		
		//Getters/Setters
		public function get mcdonalds():int
		{
			return _mcdonalds;
		}
		
		public function set mcdonalds(value:int):void
		{
			_mcdonalds = value;
			if (mcdonalds == 2)
			{
				_scoreText.text = "scoreeeeeeeee: 420";
			}
			if (mcdonalds == 3)
			{
				_lifeText.text = "Liveeeeeeeees: 420";
			}
		}
		
		public function set score(value:int):void
		{
			_score = value;
			if (_score == 26)
			{
				add(new Gollum);
			}
		}
		
		public function get score():int
		{
			return _score;
		}
		
		public function set life(value:int):void
		{
			_life = value;
		}
		
		public function get life():int
		{
			return _life;
		}
		
		override public function update():void
		{
			super.update();
			
			if (_mcdonalds < 2)
			{
				_scoreText.text = "scoreeeeeeeee: " + score;
			}
			if (_mcdonalds < 3)
			{
				_lifeText.text = "Liveeeeeeeees: " + life;
			}
			
			if (score == 40)
			{
			
				var nX:int = 20;//Math.round(Math.random() * FP.width);
				var nY:int = 20;//Math.round(Math.random() * FP.height);
		
				var dope:Text = new Text("DOPE",nX,nY);
					
				dope.angle += 10 * Math.random();
				dope.angle -= 5;
			
				dope.color = 0xFFFFFF * Math.random();
				dope.size = 12 * Math.random();
				dope.size += 12;
				addGraphic(dope);
				
			}
			
		}
	}

}