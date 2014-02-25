
package com.godpaper.as3.Neo4j.impl
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.adobe.serialization.json.JSONDecoder;
	import com.adobe.serialization.json.JSONEncoder;
	import com.godpaper.as3.Neo4j.core.INeo4jObject;
	
	import mx.utils.ObjectUtil;
	
	/**
	 * Neo4jObject.as class. -abstracted prototype for Neo4j.
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 21, 2014 3:25:46 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jObject implements INeo4jObject
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
		public function Neo4jObject()
		{
			//TODO: implement function
		}
		/**
		 * 
		 * @return AS3 String
		 * 
		 */		
		public function toString():String
		{
			return ObjectUtil.toString(this);
		}
		/**
		 * 
		 * @return JSON Object
		 * 
		 */		
		public function toJsonObject():INeo4jObject
		{
			var coder:JSONDecoder = new JSONDecoder(this.toString(),false);
			return coder.getValue();
		}
		/**
		 * 
		 * @return JSON String
		 * 
		 */		
		public function toJsonString():String
		{
			var coder:JSONEncoder = new JSONEncoder(this.toString());
			return coder.getString();
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