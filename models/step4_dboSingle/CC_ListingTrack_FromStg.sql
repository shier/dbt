{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([UserID] as int) [UserID],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate],
	cast([IsActive] as bit) [IsActive],
	cast([ReferringPage] as nvarchar(500)) [ReferringPage],
	cast([DataToken] as uniqueidentifier) [DataToken],
	cast([UserAgent] as nvarchar(500)) [UserAgent] 
From stg.[CC_ListingTrack_FinalView]