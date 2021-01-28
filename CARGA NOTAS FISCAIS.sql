SELECT TOP 1 IDCLIENTE FROM CLIENTE
ORDER BY
NEWID()

SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO
ORDER BY
NEWID()

SELECT TOP 1 IDVENDEDOR FROM VENDEDOR
ORDER BY
NEWID()

/* PREENCHENDO A TABELA NOTAS FISCAIS PARA O ANO DE 2015 */
DECLARE 
	@ID_CLIENTE INT, @ID_VENDEDOR INT, @ID_FORMA INT, 
	@DATA DATE

BEGIN
	SET @ID_CLIENTE = 
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR = 
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA = 
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2015-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12)) + 1) + '-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*28)) + 1))))

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)

END
GO 8000

/* PREENCHENDO A TABELA NOTAS FISCAIS PARA O ANO DE 2016 */
DECLARE 
	@ID_CLIENTE INT, @ID_VENDEDOR INT, @ID_FORMA INT, 
	@DATA DATE

BEGIN
	SET @ID_CLIENTE = 
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR = 
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA = 
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2016-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12)) + 1) + '-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*28)) + 1))))

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)

END
GO 8400

/* PREENCHENDO A TABELA NOTAS FISCAIS PARA O ANO DE 2017 */
DECLARE 
	@ID_CLIENTE INT, @ID_VENDEDOR INT, @ID_FORMA INT, 
	@DATA DATE

BEGIN
	SET @ID_CLIENTE = 
	(SELECT TOP 1 IDCLIENTE FROM CLIENTE ORDER BY NEWID())

	SET @ID_VENDEDOR = 
	(SELECT TOP 1 IDVENDEDOR FROM VENDEDOR ORDER BY NEWID())

	SET @ID_FORMA = 
	(SELECT TOP 1 IDFORMA FROM FORMA_PAGAMENTO ORDER BY NEWID())

	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15), '2017-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12)) + 1) + '-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*28)) + 1))))

	INSERT INTO NOTA_FISCAL(ID_CLIENTE, ID_VENDEDOR, ID_FORMA, DATA) VALUES
	(@ID_CLIENTE, @ID_VENDEDOR, @ID_FORMA, @DATA)

END
GO 9000

SELECT COUNT(*) FROM NOTA_FISCAL
GO