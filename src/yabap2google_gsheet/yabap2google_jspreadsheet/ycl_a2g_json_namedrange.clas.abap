CLASS ycl_a2g_json_namedrange DEFINITION
  PUBLIC
 INHERITING FROM ycl_a2g_jsonbase
  CREATE PUBLIC .

  PUBLIC SECTION.

    "! Build the class
    "! @parameter if_msg_manager | message managere where soter alla message triggered by the applicaition
    METHODS constructor
      IMPORTING if_msg_manager TYPE REF TO yif_a2g_msg_manager.

    TYPES: BEGIN OF ty_s_json_namedrange,
             namedrangeid TYPE string,
             name         TYPE string,
             object       TYPE ycl_a2g_json_gridrange=>ty_s_json_gridrange,
           END OF ty_s_json_namedrange.
    TYPES ty_t_json_namedrange TYPE STANDARD TABLE OF ty_s_json_namedrange WITH NON-UNIQUE DEFAULT KEY.
  PROTECTED SECTION.
    METHODS generate_rules REDEFINITION.
    METHODS rebuild_data   REDEFINITION.
    METHODS push_data      REDEFINITION.

    DATA: gs_namedrange  TYPE ty_s_json_namedrange.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_a2g_json_namedrange IMPLEMENTATION.
  METHOD push_data.
  ENDMETHOD.

  METHOD rebuild_data.
  ENDMETHOD.

  METHOD constructor.
    super->constructor( if_msg_manager ).
    me->gv_data = REF #( me->gs_namedrange  ).
  ENDMETHOD.

  METHOD generate_rules.
  ENDMETHOD.
ENDCLASS.
