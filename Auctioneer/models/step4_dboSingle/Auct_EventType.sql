{{ config(materialized='table',schema='dbo')}}
Select
	cast([EventTypeID] as int) [EVENTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ImageURL] as nvarchar(4000)) [IMAGEURL],
	cast([CanHaveChildren] as int) [CANHAVECHILDREN],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([DeActiveImageURL] as nvarchar(4000)) [DEACTIVEIMAGEURL] 
From stg.[Auct_EventType_FinalView]