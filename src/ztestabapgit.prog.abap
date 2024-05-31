*&---------------------------------------------------------------------*
*& Report ztestabapgit
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztestabapgit.
TABLES MARA.

START-OF-SELECTION.
 select * from mara into table @data(lt_mara).
 loop at lt_mara into data(ls_mara).
   select * from makt into table @data(makt) where matnr = @ls_mara-matnr.
 ENDLOOP.
end-of-SELECTION.
