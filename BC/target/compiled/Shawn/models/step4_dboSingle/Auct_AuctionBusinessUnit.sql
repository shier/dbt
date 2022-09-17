
Select
	cast([BusinessUnitID] as int) [BUSINESSUNITID],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([BusinessUnitDisplay] as nvarchar(4000)) [BUSINESSUNITDISPLAY],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_AuctionBusinessUnit_FinalView]