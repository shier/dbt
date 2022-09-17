
Select
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([ID] as int) [ID],
	cast([MediaID] as int) [MediaID],
	cast([EventID] as int) [EventID] 
From stg.[AH_AuctionEventMedias_FinalView]