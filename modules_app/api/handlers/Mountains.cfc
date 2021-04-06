/**
 * The Mountains handler
 */
component {

    property name="mountainService" inject="quickService:Mountain";

	function index( event, rc, prc ){
        prc.data = mountainService.all();
        return prc.data;
	}

}
