{{ config(materialized='table',schema='dbo')}}
Select
	cast([MetaDataID] as int) [MetaDataID],
	cast([MetaDataTypeID] as int) [MetaDataTypeID],
	cast([Value] as nvarchar(4000)) [Value],
	cast([Active] as int) [Active],
	cast([DateCreated] as datetime) [DateCreated] 
From stg.[Auct_MetaData_FinalView]