/**
 * The main module handler
 */
component extends="cbapp.handlers.BaseHandler"{

	/**
	 * Module EntryPoint
	 */
	function index( event, rc, prc ){
		event.setView( "adventures/index" );
	}
	function entry( event, rc, prc ){
		event.setView( "adventures/entry" );
	}

}