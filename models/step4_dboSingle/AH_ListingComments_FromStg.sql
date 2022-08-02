{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [CommentID],
	cast([IsBID] as bit) [IsBid],
	cast([Approved] as bit) [IsApproved],
	cast([ParentID] as int) [ParentID],
	cast([ReportCount] as int) [ReportCount],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([UserName] as nvarchar(500)) [Name] 
From stg.[AH_ListingComments_FinalView]