*&---------------------------------------------------------------------*
*& Report Z_ABAP101_010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_abap101_010.

*DATA: BEGIN OF flight_and_booking_info,
*        carrier_id     TYPE sflight-carrid,
*        connection_id  TYPE sflight-connid,
*        customer_id    TYPE sbook-customid,
*        booking_id     TYPE sbook-bookid,
*        flight_date    TYPE sflight-fldate,
*        price          TYPE sflight-price,
*        currency       TYPE sflight-currency,
*        plane_type     TYPE sflight-planetype,
*        seatsmax       TYPE sflight-seatsmax,
*        seats_occupied TYPE sflight-seatsocc,
*      END OF flight_and_booking_info.
*

* Alternative way of declaring a structure with multiple components, reusing existing declared types
TYPES: BEGIN OF some_components_of_sflight,
         carrid        TYPE sflight-carrid,
         connid        TYPE sflight-connid,
         fldate        TYPE sflight-fldate,
         price         TYPE  sflight-price,
         currency      TYPE sflight-currency,
         planetype     TYPE sflight-planetype,
         seatsmax      TYPE sflight-seatsmax,
         seatsoccupied TYPE sflight-seatsocc, " Different name for a component
       END OF some_components_of_sflight.

TYPES: BEGIN OF flight_booking,
         carrid     TYPE sbook-carrid,
         connid     TYPE sbook-connid,
         fldate     TYPE sbook-fldate,
         bookid     TYPE sbook-bookid,
         customerid TYPE sbook-customid,
       END OF flight_booking.

TYPES BEGIN OF sflight_sbook.
    INCLUDE TYPE some_components_of_sflight.
    INCLUDE TYPE flight_booking AS book RENAMING WITH SUFFIX _book.
TYPES END OF sflight_sbook.

start-OF-SELECTION.

data single_flight type sflight_sbook.

BREAK-POINT.
