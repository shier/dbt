{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE],
	cast([CarModelID] as int) [CARMODELID],
	cast([Name] as nvarchar(1000)) [NAME],
	cast([CarTypeID] as int) [CARTYPEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([RowGUID] as nvarchar(512)) [ROWGUID] 
From stg.[Auct_CarModel_FinalView]