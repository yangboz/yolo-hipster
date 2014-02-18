
package com.godpaper.as3.Neo4j.mvc.service
{
	import com.adobe.net.URI;
	
	import flash.events.ErrorEvent;
	import flash.events.IEventDispatcher;
	import flash.utils.ByteArray;
	
	import org.httpclient.HttpClient;
	import org.httpclient.events.HttpDataEvent;
	import org.httpclient.events.HttpResponseEvent;
	import org.httpclient.events.HttpStatusEvent;
	
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * Neo4jService.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:47:52 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jService implements INeo4jService
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		//
		private var uri:URI;
		private var client:HttpClient;
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		private static const NEO4J_URL:String = "http://localhost:7474/db/data/";
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
		public function Neo4jService()
		{
			this.uri = new URI(NEO4J_URL);
			this.client = new HttpClient(uri);
			//
			client.listener.onStatus = function(event:HttpStatusEvent):void {
				// Notified of response (with headers but not content)
				trace("httpclient onStatus:",event.code);
			};
			
			client.listener.onData = function(event:HttpDataEvent):void {
				// For string data
				var stringData:String = event.readUTFBytes();
				
				// For data
				var data:ByteArray = event.bytes;    
				//
				trace("httpclient onData:",data.toString());
			};
			
			client.listener.onComplete = function(event:HttpResponseEvent):void {
				// Notified when complete (after status and data)
				trace("httpclient onComplete:",event.response);
			};
			
			client.listener.onError = function(event:ErrorEvent):void {
				var errorMessage:String = event.text;
				trace("httpclient onError:",event);
			}; 
		}
		
		public function callRestAPI():void
		{
			//TODO:Neo4j Restful API call!
			trace("Prompt to Neo4j Restful API!!!");
			this.client.get(this.uri);
			//dispatch event
//			eventDispatcher.dispatchEvent(
			
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