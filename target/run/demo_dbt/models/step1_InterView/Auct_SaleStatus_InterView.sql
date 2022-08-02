create view "stg"."Auct_SaleStatus_InterView__dbt_tmp" as
    
Select
	[SALESTATUSID] [SaleStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([CLASSNAME] as nvarchar(4000)) [ClassName]
From stg.[Auct_SaleStatus_Raw]
