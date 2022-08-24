create view "dbo_stg"."Auct_Carrier_InterView__dbt_tmp" as
    
Select
	[CARRIERID] [CarrierID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Carrier_Raw]
