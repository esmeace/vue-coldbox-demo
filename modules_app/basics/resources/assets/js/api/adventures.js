import Axios from "axios";

const urlRoot = "/api/adventures";

const defaultAPI = Axios.create( {
	baseURL : urlRoot,
	headers : { "Content-Type": "application/json" }
} );

export const finalAPI = {
	apiInstance : defaultAPI,
	fetch 		: ( slug, params, token ) => defaultAPI.get( '/' + slug, { params : params || {} } ),
	list        : ( params, token ) => defaultAPI.get( "", { params: params || {}  } ),
	create 		: ( params, token ) => defaultAPI.post( '', JSON.stringify( params ) ),
};

export default finalAPI;