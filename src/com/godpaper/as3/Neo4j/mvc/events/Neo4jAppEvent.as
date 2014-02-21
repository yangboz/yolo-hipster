
package com.godpaper.as3.Neo4j.mvc.events
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.Neo4j.mvc.consts.Neo4jConstants;
	
	import flash.events.Event;
	
	
	/**
	 * Neo4jAppEvent.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:35:06 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jAppEvent extends Event
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _param:Neo4jConstants;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		public static const API_CALL:String = "Neo4j_API_CALL";
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		public function get param():Neo4jConstants
		{
			return _param;
		}
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function Neo4jAppEvent(type:String, param:Neo4jConstants, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			//
			this._param = param;
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function clone():Event
		{
			return new Neo4jAppEvent(type, param, bubbles, cancelable);
		}
		//--------------------------------------------------------------------------
		//
		// Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}