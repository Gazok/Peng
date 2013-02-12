package  
{
	/**
	 * ...
	 * @author Dean "of rock" Leaton
	 */
	
	import net.flashpunk.World
	
	public class MyWorld extends World
	{
		
		public function MyWorld() 
		{
			add(new peng(40,20));
			add(new AnEntity);
			add(new AnotherEntity(200));
			add(new ployBUTT(420,250));
		}
		
	}

}