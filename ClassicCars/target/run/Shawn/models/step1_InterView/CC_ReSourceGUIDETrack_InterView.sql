create view "stg"."CC_ReSourceGUIDETrack_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DestinationUrl] as nvarchar(4000)) [DestinationURL],
	cast([AdvertiserName] as nvarchar(4000)) [AdvertiserName],
	[IsActive] [IsActive],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_ReSourceGUIDETrack_Raw]
