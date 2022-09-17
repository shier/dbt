
Select
	cast([MetaDataID] as int) [METADATAID],
	cast([MetaDataTypeID] as int) [METADATATYPEID],
	cast([Value] as nvarchar(4000)) [VALUE],
	cast([Active] as int) [ACTIVE],
	cast([DateCreated] as datetime) [DATECREATED] 
From stg.[Auct_MetaData_FinalView]