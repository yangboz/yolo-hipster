
package com.godpaper.as3.Neo4j.impl
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jResponse.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 6:26:29 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jResponse extends Neo4jObject
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		public var extensions:Object;
		public var outgoing_relationships:String;
		public var labels:String;
		public var traverse:String;
		public var all_typed_relationships:String;
		public var self:String;
		public var property:String;
		public var outgoing_typed_relationships:String;
		public var properties:String;
		public var incoming_relationships:String;
		public var create_relationship:String;
		public var paged_traverse:String;
		public var all_relationships:String;
		public var incoming_typed_relationships:String;
		public var data:Object;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		
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
		public function Neo4jResponse()
		{
			super();
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		
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