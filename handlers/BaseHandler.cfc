component extends="coldbox.system.EventHandler" {

    function preHandler( event, rc, prc, action, eventArguments ){
        prepareAssetBag( event, rc, prc );
    }

    public void function addToAssetBag( required struct prc, required string assetPath ) {
        arrayAppend( prc.assetBag, assetPath );
        return;
    }

    private any function prepareAssetBag( event, rc, prc ) {
        prc.assetBag = [];

        var module = event.getCurrentModule();

        var basePath = "";
        if ( len( module ) ) {
            basePath &= "modules_app/#module#/";
        }
        basePath &= "includes/";
        var jsBasePath = basePath & "js/";

        var pathsToCheck = [];

        // JS Path Checks
        arrayAppend( pathsToCheck,  jsBasePath & "app.js" );
        arrayAppend( pathsToCheck,  jsBasePath & "app.css" );
        
        for ( var path in pathsToCheck ) {
            if ( fileExists( expandPath( path ) ) ) {
                addToAssetBag( prc, path );
            }
        }

        return;
    }
}