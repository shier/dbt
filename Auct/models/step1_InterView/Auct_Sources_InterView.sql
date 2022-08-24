{{ config(materialized='view',schema='stg')}}
Select
	[SOURCEID] [SourceID],
	[WEBACTIVE] [WebActive],
	cast([SOURCENAME] as nvarchar(4000)) [SourceName],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_Sources_Raw]
