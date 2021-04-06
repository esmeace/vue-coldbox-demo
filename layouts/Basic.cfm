<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <title>Welcome to Coldbox With VueJS Basics!</title>
    
        <meta name="description" content="ColdBox Application Template">
        <meta name="author" content="Ortus Solutions, Corp">
    
        <!---Base URL --->
        <base href="#event.getHTMLBaseURL()#" />
    
        <!---css --->
        <link rel="stylesheet" type="text/css" href="#html.elixirPath( "css/app.css" )#" />
    
        <!--- If there are any extracted Vue styles, they will be in this file --->
        <cfscript>
            if ( getCache( "template" ).getOrSet( "vue-styles", function() {
                return fileExists( expandPath( html.elixirPath( "js/app.css" ) ) );
            } ) ) {
                writeOutput( '<link rel="stylesheet" type="text/css" href="#html.elixirPath( "js/app.css" )#" />' );
            }
            if ( structKeyExists ( prc, "assetBag") ) {
                prc.assetBag.each( 
                    function( assetPath ) {
                        if( right( assetPath, 3 ) EQ "css" ){
                            writeOutput( '<link rel="stylesheet" type="text/css" href="#assetPath#" />' );
                        }
                    }
                );
            }
        </cfscript>
    </head>
    <body>
        <!---Container And Views --->
        <div class="app-wrapper" id="app">
            <the-header></the-header>

            #renderView()#

            <the-footer></the-footer>

        </div>

        <cfif StructKeyExists(prc, "assetBag")>
            <cfloop array="#prc.assetBag#" index="assetPath">
                <cfif right( assetPath, 2 ) EQ "js">
                    <script type="application/javascript" src="#assetPath#"></script>
                </cfif>
            </cfloop>
        </cfif>

        <script src="#html.elixirPath( "js/runtime.js" )#"></script>
        <script src="#html.elixirPath( "js/vendor.js" )#"></script>
        <script src="#html.elixirPath( "js/app.js" )#"></script>
    </body>
    </html>
    </cfoutput>
    