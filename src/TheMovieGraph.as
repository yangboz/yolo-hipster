
package
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.Neo4j.mvc.Neo4jConfig;
	import com.godpaper.as3.Neo4j.mvc.view.MainView;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	
	/**
	 * TheMovieGraph.as class. -It is a mini graph application containing actors and directors 
	 * that are related through the movies they have collaborated on.</br>
	 * The guild will show you how to:</br>
	 * 1.Create:insert movie data into the graph;</br>
	 * 2.Find:retrieve individual movies and actors;</br>
	 * 3.Query:dicover related actors and directors;</br>
	 * 4.Solve:the Bacon path;</br>
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Feb 25, 2014 9:36:22 AM
	 * @history 12/30/13,
	 */ 
	public class TheMovieGraph extends Sprite
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		private var _mainView:MainView;
		private var _context:IContext;
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
		public function TheMovieGraph()
		{
			super();
			//
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			//
			this._context = new Context()
				.install(MVCSBundle)
				.configure(Neo4jConfig,new ContextView(this));
			//
			addEventListener(Event.ADDED_TO_STAGE, _onApplication_AddedToStageHandler);
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
		private function _onApplication_AddedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, _onApplication_AddedToStageHandler);
			
			//
			this._mainView = new MainView();
			this.addChild(this._mainView);
		}
	}
	
}