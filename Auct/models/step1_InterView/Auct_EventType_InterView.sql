{{ config(materialized='view',schema='stg')}}
Select
	[EVENTTYPEID] [EventTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([IMAGEURL] as nvarchar(4000)) [ImageURL],
	[CANHAVECHILDREN] [CanHaveChildren],
	cast([CLASSNAME] as nvarchar(4000)) [ClassName],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	cast([DEACTIVEIMAGEURL] as nvarchar(4000)) [DeActiveImageURL]
From stg.[Auct_EventType_Raw]
