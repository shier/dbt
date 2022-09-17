{{ config(materialized='table',schema='dbo')}}
Select
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([ID] as int) [Id],
	cast([MediaID] as int) [MediaId],
	cast([EventID] as int) [EventId] 
From stg.[AH_AuctionEventMedias_FinalView]