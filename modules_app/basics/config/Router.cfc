component{

	function configure(){

		route( "/adventures/:slug", "adventures.entry" );
		route( "/", "home.index" );

	}

}