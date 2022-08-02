{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	[ZipCode] [ZipCode],
	[AsEnthusiast] [ASenthusiast],
	[AsBidder] [AsBidder],
	[AsConsignor] [AsConsignor]
From stg.[AH_DailyhuntEmailSubscribers_Raw]
