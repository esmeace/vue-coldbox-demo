/**
 * @package models.basic
 * @description Adventure
 * @author Esmeralda Acevedo <esme@ortussolutions.com> 
 * 
 */

component extends="quick.models.BaseEntity" accessors="true" {

    property name="id";
    property name="title";
    property name="slug";
    property name="summary";
    property name="content";
    property name="dateStart";
    property name="dateEnd";
    property name="datePublished";
    property name="mainImg";
    property name="location";

    function keyType() {
        return variables._wirebox.getInstance( "UUIDKeyType@quick" );
    }

    function newCollection( array entities = [] ) {
        return variables._wirebox.getInstance(
            name = "quick.extras.QuickCollection",
            initArguments = {
                "collection" = arguments.entities
            }
        );
    }

}