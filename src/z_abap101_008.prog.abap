*&---------------------------------------------------------------------*
*& Report Z_ABAP101_008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_abap101_008.

TYPES: BEGIN OF some_components_of_sflight,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE  sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsoccupied  TYPE sflight-seatsocc, " Different name for a component
       END OF some_components_of_sflight.
