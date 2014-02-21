
package com.godpaper.as3.Neo4j.mvc.service
{
	import com.adobe.net.URI;
	import com.godpaper.as3.Neo4j.impl.Neo4jResponse;
	import com.godpaper.as3.Neo4j.mixin.Neo4jResponseMixin;
	import com.godpaper.as3.Neo4j.mvc.consts.Neo4jConstants;
	import com.godpaper.as3.Neo4j.mvc.utils.Neo4jUtil;
	import com.godpaper.as3.utils.LogUtil;
	
	import flash.events.ErrorEvent;
	import flash.events.IEventDispatcher;
	import flash.utils.ByteArray;
	
	import mx.logging.ILogger;
	
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
		private static const LOG:ILogger = LogUtil.getLogger(Neo4jService);
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
		}
		
		public function callAPI(param:Neo4jConstants):void
		{
			this.uri = new URI(param.URL);
			this.client = new HttpClient(uri);
			//
			client.listener.onStatus = function(event:HttpStatusEvent):void {
				// Notified of response (with headers but not content)
				LOG.info("httpclient onStatus:{0}",event.code);
			};
			
			client.listener.onData = function(event:HttpDataEvent):void {
				// For string data
				var stringData:String = event.readUTFBytes();
				
				// For data
				var data:ByteArray = event.bytes;    
				//
				LOG.info("httpclient onData:{0}",data.toString());
				//JSON object mapper testing here.
				Neo4jUtil.objectMapper.registerMixin(Neo4jResponse,Neo4jResponseMixin);
				var response:Neo4jResponse = Neo4jUtil.objectMapper.readObject(Neo4jResponse,data.toString()) as Neo4jResponse;
				LOG.info("httpclient onData->response:{0}",response.toString());
			};
			
			client.listener.onComplete = function(event:HttpResponseEvent):void {
				// Notified when complete (after status and data)
				LOG.info("httpclient onComplete:{0}",event.response);
			};
			
			client.listener.onError = function(event:ErrorEvent):void {
				var errorMessage:String = event.text;
				LOG.info("httpclient onError:{0}",event);
			}; 
			LOG.debug("Prompt to Neo4j Restful API!!!");
			//RESTful handler here.
			switch(param.RESTFUL)
			{
				case Neo4jConstants.GET:
					this.client.get(this.uri);
					break;
				case Neo4jConstants.POST:
					if(null == param.PARAMS){
						throw new Error("Cannot POSTing without parameters to Neo4j REST API.");
					}
					this.client.post(this.uri,param.PARAMS,param.CONTENT_TYPE);
					break;
				case Neo4jConstants.PUT:
					this.client.put(this.uri,param.CONTENT_TYPE);
					break;
				case Neo4jConstants.DELETE:
					this.client.del(this.uri);
					break;
				default:
					break;
			}
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