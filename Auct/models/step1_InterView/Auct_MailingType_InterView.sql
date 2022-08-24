{{ config(materialized='view',schema='stg')}}
Select
	[MAILINGTYPEID] [MailingTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([SUBSCRIBABLE] as nvarchar(4000)) [Subscribable],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MailingType_Raw]
