{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([ZipCode] as int) [ZipCode],
	cast([ASenthusiast] as bit) [ASenthusiast],
	cast([AsBidder] as bit) [AsBidder],
	cast([AsConsignor] as bit) [AsConsignor] 
From stg.[AH_DailyhuntEmailSubscribers_FinalView]