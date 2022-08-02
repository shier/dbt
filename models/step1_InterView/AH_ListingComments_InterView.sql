{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsBid] [IsBID],
	[Approved] [Approved],
	[parentId] [ParentID],
	[ReportCount] [ReportCount],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Comment] as nvarchar(4000)) [Comment]
From stg.[AH_ListingComments_Raw]
