/**
 * The main module handler
 */
component{

	/**
	 * Module EntryPoint
	 */
	function index( event, rc, prc ){
		var mountains = getInstance( "Mountain" ).all();
		event.setView( "home/index" );
	}

}
