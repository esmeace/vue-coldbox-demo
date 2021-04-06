component{

	function configure(){
		get( "/adventures/:slug", "adventures.get" );
		get( "/adventures", "adventures.index" );
		get( "/mountains", "mountains.index" );
		route( "/", "home.index" );
	}

}