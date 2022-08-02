
Select
	tabid TaBID,
	typeid TypeID,
	cast(startlsn as nvarchar(4000)) Startlsn,
	cast(endlsn as nvarchar(4000)) Endlsn
From Auct_SysTranschEMAs_Raw