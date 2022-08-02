{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaPhotoPassID] as int) [MediaPhotoPassID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([PhotoPassNumber] as nvarchar(4000)) [PhotoPassNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaPhotoPass_FinalView]