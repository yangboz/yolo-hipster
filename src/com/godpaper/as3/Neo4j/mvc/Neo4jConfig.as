
package com.godpaper.as3.Neo4j.mvc
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.Neo4j.mvc.controller.Neo4jCommand;
	import com.godpaper.as3.Neo4j.mvc.events.Neo4jAppEvent;
	import com.godpaper.as3.Neo4j.mvc.model.Neo4jModel;
	import com.godpaper.as3.Neo4j.mvc.service.INeo4jService;
	import com.godpaper.as3.Neo4j.mvc.service.Neo4jService;
	import com.godpaper.as3.Neo4j.mvc.view.MainView;
	import com.godpaper.as3.Neo4j.mvc.view.MainViewMediator;
	
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	
	/**
	 * Neo4jConfig.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 3:30:52 PM
	 * @history 12/30/13,
	 */ 
	public class Neo4jConfig implements IConfig
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:IEventCommandMap;
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
		public function Neo4jConfig()
		{
		}
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		//
		public function configure():void
		{
			this.commandMap.map(Neo4jAppEvent.API_CALL,Neo4jAppEvent).toCommand(Neo4jCommand);
			//
			this.injector.map(INeo4jService).toSingleton(Neo4jService);
			//
			this.injector.map(Neo4jModel).asSingleton();
			//
			this.mediatorMap.map(MainView).toMediator(MainViewMediator);
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