-- VER PASSAGEIROS CADASTRADOS NO SISTEMA DE CART�O

CREATE VIEW vw_Passageiros_cadastrados
As
SELECT * from Cart�o
GO


-- VER VIAGENS REGISTRADAS
CREATE VIEW vw_viagens
AS
SELECT * From Viagens
GO

--VER ONIBUS CADASTRADOS NO SISTEMA
CREATE VIEW vw_onibus
AS
SELECT * From Onibus
GO