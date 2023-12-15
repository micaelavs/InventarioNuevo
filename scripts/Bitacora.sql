go
create table Bitacora(
IdBitacora int not null primary key identity(1,1),
UsuarioCodigo int, 
Accion varchar(32),
Mensaje varchar(1000),
TipoLog varchar(32)
)
go
create procedure sp_altaBitacora
	@Usuario_Codigo int = NULL,
	@TipoLog varchar(32),
	@Accion varchar(32),
	@Mensaje nvarchar(1000)
AS
BEGIN
	INSERT INTO Bitacora(Accion, Mensaje, TipoLog, UsuarioCodigo) 
	values (@Accion, @Mensaje, @TipoLog, @Usuario_Codigo)
END
go
create procedure sp_BitacoraListar
as
begin
	select IdBitacora, UsuarioCodigo, Accion, TipoLog, Mensaje from Bitacora
end