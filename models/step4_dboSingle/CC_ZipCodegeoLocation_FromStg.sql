{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([IsActive] as bit) [IsActive],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude] 
From stg.[CC_ZipCodegeoLocation_FinalView]