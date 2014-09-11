package classes.GameData.Map 
{
	import flash.geom.Point;
	import classes.GLOBAL;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class BaseLocation 
	{
		public var Rooms:Object = { };
		
		public var LocationIndex:String;
		public var LocationName:String;
		
		public var ParentSystem:System;
		
		public var FastTravelRooms:Array = [];
		
		public var IsNavigable:Boolean = true;
		
		public var Position:Point = new Point(0, 0);
		
		public function BaseLocation() 
		{
			
		}
		
		public function AddRoom(room:Room):void
		{
			if (room.ParentLocation != null)
			{
				trace("Room has already been added to another location");
			}
			
			if (room.HasFlag(GLOBAL.FAST_TRAVEL))
			{
				FastTravelRooms.push(room);
			}
		}
		
		public function GetRoom(name:String):Room
		{
			return Rooms[name];
		}
		
	}

}