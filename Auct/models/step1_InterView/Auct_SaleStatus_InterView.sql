{{ config(materialized='view',schema='stg')}}
Select
	[SALESTATUSID] [SaleStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([CLASSNAME] as nvarchar(4000)) [ClassName]
From stg.[Auct_SaleStatus_Raw]
