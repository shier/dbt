{{ config(materialized='table',schema='dbo')}}
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([ID] as int) [Id],
	cast([ZipCode] as int) [ZipCode],
	cast([ASenthusiast] as bit) [AsEnthusiast],
	cast([AsBidder] as bit) [AsBidder],
	cast([AsConsignor] as bit) [AsConsignor] 
From stg.[AH_DailyhuntEmailSubscribers_FinalView]