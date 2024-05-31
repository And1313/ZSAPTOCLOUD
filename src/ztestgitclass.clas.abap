class ZTESTGITCLASS definition
  public
  final
  create public .

public section.

  methods GET_DATA .
protected section.
private section.
ENDCLASS.



CLASS ZTESTGITCLASS IMPLEMENTATION.


  METHOD get_data.
    SELECT * FROM mara INTO TABLE @DATA(lt_mara).
    LOOP AT lt_mara INTO DATA(ls_mara).
      SELECT * FROM makt INTO TABLE @DATA(makt) WHERE matnr = @ls_mara-matnr.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
