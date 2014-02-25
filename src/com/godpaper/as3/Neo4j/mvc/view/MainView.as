
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
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.TextInteractionMode;
	
	
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
		private var _textField_call:TextField;
		private var _textField_url:TextField;
		private var _textField_label:TextField;
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
			//Label
			this._textField_label = new TextField();
			this._textField_label.text = "Neo4j REST API:";
			this._textField_label.selectable = false;
			this._textField_label.x = 10;
			this._textField_label.width = 100;
			this._textField_label.setTextFormat(new TextFormat(null,12,0x0000ff,true,true,true,null));
			this.addChild(this._textField_label);
			//TextInput
			this._textField_url = new TextField();
			this._textField_url.text = "db/data/node";
			this._textField_url.border = true;
			this._textField_url.type = TextFieldType.INPUT;
			this._textField_url.x = 120;
			this._textField_url.width = 200;
			this._textField_url.height = 20;
			this._textField_url.setTextFormat(new TextFormat(null,12,0x0000ff,true,true,true,null));
			this.addChild(this._textField_url);
			//TextField Button
			this._textField_call = new TextField();
			this._textField_call.text = "CALL";
			this._textField_call.selectable = false;
			this._textField_call.border = true;
			this._textField_call.borderColor = 0xff0000;
			this._textField_call.x = 330;
			this._textField_call.width = 40;
			this._textField_call.height = 20;
			this._textField_call.setTextFormat(new TextFormat(null,12,0x0000ff,true,true,true,null));
			this._textField_call.addEventListener(MouseEvent.CLICK,textFieldClickHander);
			this.addChild(this._textField_call);
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
			var NODES_post:Neo4jConstants = new Neo4jConstants(Neo4jConstants.NEO4J_URI.concat(this._textField_url.text),Neo4jConstants.POST,"",dummyObj);
			this.dispatchEvent(new Neo4jAppEvent(Neo4jAppEvent.API_CALL,NODES_post));
		}
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}