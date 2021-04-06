/**
 * @package models.basic
 * @description Mountain
 * @author Esmeralda Acevedo <esme@ortussolutions.com> 
 * 
 */

component extends="quick.models.BaseEntity" accessors="true" {

    property name="id";
    property name="name";
    property name="elevation";
    property name="elevationGain";
    property name="location";
    property name="route";
    property name="mileage";
    property name="isSuccess";

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