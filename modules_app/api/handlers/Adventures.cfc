/**
 * The Mountains handler
 */
component {

    property name="adventureService" inject="quickService:Adventure";

	function index( event, rc, prc ){
        prc.data = adventureService
            .whereNotNull( "datePublished" )
            .orderByDesc( "datePublished" )
            .get();
        return prc.data;
	}

    function get( event, rc, prc ){
        prc.data = adventureService
            .where( "slug", rc.slug )
            .first();
        return prc.data;
	}

}
