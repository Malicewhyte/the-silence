package classes.GameData.Map.Data 
{
	import classes.GameData.Content.TheBlackRose;
	import classes.GameData.Map.Data.Ships.TheConstellationInterior;
	import classes.GameData.Map.Data.Ships.TheSilenceInterior;
	import classes.GameData.Map.Data.Ships.BlackRoseInterior;
	import classes.GameData.Map.Data.Systems.UnknownSystem;
	import classes.GameData.Map.Sector;
	import classes.GameData.Map.System;
	
	import classes.GameData.Map.Data.Systems.SilenceSystem;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class SilenceSector extends Sector
	{
		public function SilenceSector() 
		{
			SectorIndex = "Silence";
			SectorName = "Sector 17-3B";
			
			AddSystem(new SilenceSystem());
			AddSystem(new UnknownSystem());
			AddShip(new TheSilenceInterior());
			AddShip(new TheConstellationInterior());
			AddShip(new BlackRoseInterior());
			
			GetShip("TheSilence").ParentSystem = GetSystem("UnknownSystem");
			GetShip("TheConstellation").ParentSystem = GetSystem("UnknownSystem");
			GetShip("TheBlackRose").ParentSystem = GetSystem("UnknownSystem");
		}	
	}

}