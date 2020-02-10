*&---------------------------------------------------------------------*
*& Report Z_ABAP101_009
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_abap101_009.

TYPES: BEGIN OF flight_booking,
         carrid     TYPE sbook-carrid,
         connid     TYPE sbook-connid,
         fldate     TYPE sbook-fldate,
         bookid     TYPE sbook-bookid,
         customerid TYPE sbook-customid,
       END OF flight_booking.
