
Select
	cast([SaleStatusID] as int) [SALESTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME] 
From stg.[Auct_SaleStatus_FinalView]