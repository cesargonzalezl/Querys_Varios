-- ACTIVAR CM DIARIO
UPDATE INVENTARIOS_PRODUCTOS SET ESTADO = '1' WHERE GRUPO_ID = 'MD' AND CODIGO_PRODUCTO LIKE '%CM%';
UPDATE EXISTENCIAS_BODEGAS_LOTE_FV SET ESTADO = '0' WHERE EMPRESA_ID NOT IN ('21','22','23','16','18','27') AND CODIGO_PRODUCTO LIKE '%CM%';
UPDATE EXISTENCIAS_BODEGAS_LOTE_FV SET ESTADO = '1' WHERE EMPRESA_ID IN ('21','22','23','16','18','27') AND CODIGO_PRODUCTO LIKE '%CM%';
UPDATE EXISTENCIAS_BODEGAS SET ESTADO = '0' WHERE EMPRESA_ID NOT IN ('21','22','23','16','18','27') AND CODIGO_PRODUCTO LIKE '%CM%';
UPDATE EXISTENCIAS_BODEGAS SET ESTADO = '1' WHERE EMPRESA_ID IN ('21','22','23','16','18','27') AND CODIGO_PRODUCTO LIKE '%CM%';