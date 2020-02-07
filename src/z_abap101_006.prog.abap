*&---------------------------------------------------------------------*
*& Report Z_ABAP101_006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_abap101_006.

TYPES    customer_name             TYPE c LENGTH 10.
DATA     number_of_employees       TYPE i.
TYPES: number_of_unpaid_invoices TYPE n LENGTH 7,
       creation_date             TYPE d,
       last_changed_at           TYPE t.

TYPES: BEGIN OF customer_details,
         name              TYPE customer_name,
         n_of_employees    LIKE number_of_employees,
         n_unpaid_invoices TYPE number_of_unpaid_invoices,
         registration_date TYPE creation_date,
         time_last_updated TYPE last_changed_at,
       END OF customer_details.
