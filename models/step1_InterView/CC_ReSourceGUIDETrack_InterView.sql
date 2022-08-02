{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DestinationUrl] as nvarchar(4000)) [DestinationURL],
	cast([AdvertiserName] as nvarchar(4000)) [AdvertiserName],
	[IsActive] [IsActive],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_ReSourceGUIDETrack_Raw]
