
package com.godpaper.as3.Neo4j.mvc.view
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.Neo4j.mvc.consts.Neo4jConstants;
	import com.godpaper.as3.Neo4j.mvc.events.Neo4jAppEvent;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	
	/**
	 * MainView.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 18, 2014 4:42:14 PM
	 * @history 12/30/13,
	 */ 
	public class MainView extends Sprite
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _textField:TextField;
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
		public function MainView()
		{
			super();
			//
			this._textField = new TextField();
			this._textField.text = "Neo4j_API_CALL";
			this._textField.selectable = false;
			this._textField.width = 200;
			this._textField.setTextFormat(new TextFormat(null,24,0x0000ff,true,true,true,null));
			this._textField.addEventListener(MouseEvent.CLICK,textFieldClickHander);
			this.addChild(this._textField);
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
		protected function textFieldClickHander(event:MouseEvent):void
		{
//			var NODES_get:Neo4jConstants = new Neo4jConstants(Neo4jConstants.NEO4J_URI.concat("db/data/node"),Neo4jConstants.GET);
//			this.dispatchEvent(new Neo4jAppEvent(Neo4jAppEvent.API_CALL,NODES_get));
			var dummyObj:Object = {"foo":"bar"};
			var NODES_post:Neo4jConstants = new Neo4jConstants(Neo4jConstants.NEO4J_URI.concat("db/data/node"),Neo4jConstants.POST,"",dummyObj);
			this.dispatchEvent(new Neo4jAppEvent(Neo4jAppEvent.API_CALL,NODES_post));
		}
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}