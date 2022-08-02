{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	[IsActive] [IsActive],
	[Latitude] [Latitude],
	[Longitude] [Longitude]
From stg.[CC_ZipCodegeoLocation_Raw]
