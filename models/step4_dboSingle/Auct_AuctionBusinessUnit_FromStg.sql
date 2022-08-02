{{ config(materialized='table',schema='dbo')}}
Select
	cast([BusinessUnitID] as int) [BusinessUnitID],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([County] as nvarchar(4000)) [County],
	cast([BusinessUnitDisplay] as nvarchar(4000)) [BusinessUnitDisplay],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_AuctionBusinessUnit_FinalView]