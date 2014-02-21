
package com.godpaper.as3.Neo4j.mvc.consts
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.utils.Enum;
	
	
	/**
	 * Neo4jConstants.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 19, 2014 5:32:31 PM
	 * @history 12/30/13,
	 */ 
	final public class Neo4jConstants extends Enum
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
//		//CRUD operation.
//		public var GET:String;
//		public var POST:String;
//		public var PUT:String;
//		public var DELETE:String;
		public var URL:String;
		public var QUERY:String;
		public var PARAMS:Object;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const NEO4J_URI:String = "http://localhost:7474/";
		//Neo4j RESTful API resource list
//		public static const STATUS_CODE:String = NEO4J_URI.concat("");
//		public static const SERVICE_ROOT:String = NEO4J_URI.concat("");
//		public static const PROPERTY_VALUES:String = NEO4J_URI.concat("");
//		public static const NODES:String = NEO4J_URI.concat("");
		public static const NODES:Neo4jConstants = new Neo4jConstants(NEO4J_URI.concat("db/data/node"));
//		public static const RELATIONSHIPS:String = NEO4J_URI.concat("");
//		public static const RELATIONSHIP_TYPES:String = NEO4J_URI.concat("");
//		public static const NODE_PROPERTIES:String = NEO4J_URI.concat("");
//		public static const RELATIONSHIP_PROPERTIES:String = NEO4J_URI.concat("");
//		public static const INDEXING:String = NEO4J_URI.concat("");
//		public static const CONSTRAINTS:String = NEO4J_URI.concat("");
//		public static const TRAVERSALS:String = NEO4J_URI.concat("");
//		public static const GRAPH_ALGORITHMS:String = NEO4J_URI.concat("");
//		public static const BATCH_OPERATIONS:String = NEO4J_URI.concat("");
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
		public function Neo4jConstants(url:String,query:String="",params:Object=null)
		{
			super();
			//
			this.URL = url;
			this.QUERY = query;
			this.PARAMS = params;
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