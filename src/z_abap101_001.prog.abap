*&---------------------------------------------------------------------*
*& Report Z_ABAP101_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_abap101_001.

TYPES: customer_name TYPE c LENGTH 10.

DATA: hello_world TYPE customer_name VALUE 'HelloWorld'.

WRITE hello_world.
