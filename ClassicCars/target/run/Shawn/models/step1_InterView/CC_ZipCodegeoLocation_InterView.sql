create view "stg"."CC_ZipCodegeoLocation_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	[IsActive] [IsActive],
	[Latitude] [Latitude],
	[Longitude] [Longitude]
From stg.[CC_ZipCodegeoLocation_Raw]
