
package com.godpaper.as3.Neo4j.impl
{
	import com.godpaper.as3.Neo4j.core.INeo4jObject;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jCypher.as class. -This language is purpose build for working with graph data.</br>
	 * Features:</br>
	 * uses patterns to describe graph data;</br>
	 * familiar SQL-like clause;</br>
	 * declarative,describing what to find,not how to find it;</br>
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 25, 2014 9:25:09 AM
	 * @history 12/30/13,
	 */ 
	public class Neo4jCypher extends Neo4jObject
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		
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
		public function Neo4jCypher()
		{
			super();
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		/**
		 * @param clause String for example:CREATE (ee:Person { name: "Emil", from: "Sweden", klout: 99 })
		 * @return INeo4jObject
		 * 
		 */		
		public function query(clause:String):INeo4jObject
		{
			//TODO: implement function
			return new Neo4jObject();
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