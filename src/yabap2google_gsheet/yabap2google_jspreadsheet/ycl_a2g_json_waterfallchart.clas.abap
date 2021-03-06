CLASS ycl_a2g_json_waterfallchart DEFINITION
  PUBLIC
 INHERITING FROM ycl_a2g_jsonbase
  CREATE PUBLIC .

  PUBLIC SECTION.

    "! Build the class
    "! @parameter if_msg_manager | message managere where soter alla message triggered by the applicaition
    METHODS constructor
      IMPORTING if_msg_manager TYPE REF TO yif_a2g_msg_manager.

    TYPES: BEGIN OF ty_s_json_waterfallchart,
             domain TYPE ycl_a2g_json_WfallChartDomain=>ty_s_json_WfallChartDomain,
             series TYPE ycl_a2g_json_WfallChartSerie=>ty_s_json_WfallChartSerie,
             stackedType type string,
             firstValueIsTotal type string,
             hideConnectorLines type string,
             connectorLineStyle type ycl_a2g_json_linestyle=>ty_s_json_linestyle,
           END OF ty_s_json_waterfallchart.
    TYPES ty_t_json_waterfallchart TYPE STANDARD TABLE OF ty_s_json_waterfallchart WITH NON-UNIQUE DEFAULT KEY.

  PROTECTED SECTION.
    METHODS generate_rules REDEFINITION.
    METHODS rebuild_data   REDEFINITION.
    METHODS push_data      REDEFINITION.

    DATA: gs_waterfallchart  TYPE ty_s_json_waterfallchart.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_a2g_json_waterfallchart IMPLEMENTATION.
  METHOD push_data.
  ENDMETHOD.

  METHOD rebuild_data.
  ENDMETHOD.

  METHOD constructor.
    super->constructor( if_msg_manager ).
    me->gv_data = REF #( me->gs_waterfallchart  ).
  ENDMETHOD.

  METHOD generate_rules.
  ENDMETHOD.
ENDCLASS.
