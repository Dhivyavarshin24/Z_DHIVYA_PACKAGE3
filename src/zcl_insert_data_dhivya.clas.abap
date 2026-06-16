CLASS zcl_insert_data_dhivya DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_dhivya IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA: it_dept TYPE TABLE OF zdept_dhivya,
          it_emp  TYPE TABLE OF zemp_dhivya.

    it_dept = VALUE #(
      ( mandt = sy-mandt dept_id = 'D001' dept_name = 'IT' location = 'Chennai' )
      ( mandt = sy-mandt dept_id = 'D002' dept_name = 'HR' location = 'Bangalore' )
    ).

    INSERT zdept_dhivya FROM TABLE @it_dept.

    it_emp = VALUE #(
      ( mandt = sy-mandt emp_id = 'E001' first_name = 'Ravi'  last_name = 'Kumar' dept_id = 'D001' )
      ( mandt = sy-mandt emp_id = 'E002' first_name = 'Priya' last_name = 'Raj'   dept_id = 'D001' )
      ( mandt = sy-mandt emp_id = 'E003' first_name = 'John'  last_name = 'Peter' dept_id = 'D002' )
    ).

    INSERT zemp_dhivya FROM TABLE @it_emp.

    out->write( 'Data inserted successfully' ).


  ENDMETHOD.
ENDCLASS.
