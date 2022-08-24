{{ config(materialized='view',schema='stg')}}
Select
	[CARRIERID] [CarrierID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Carrier_Raw]
