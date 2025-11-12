# Caso-FichasMedicas
Clase del 12-11

## Inserts
Comando que permite ingresar datos a la BDD.

**Comando básico:**

```SQL
INSERT INTO nombreTabla(Columnas) VALUES (valoresColumnas);
```

**Poblado Transaccionales:**


```SQL
INSERT INTO nombreTabla(atrr1,atrr2,...,atrrN)
SELECT attr1, curdate() FROM tabla2;
```

## Update

## Delete