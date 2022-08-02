{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaID] as int) [MediaID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AddressID] as int) [AddressID],
	cast([MediaTypeID] as int) [MediaTypeID],
	cast([Circulation] as nvarchar(4000)) [Circulation],
	cast([StoryIdeas] as nvarchar(4000)) [StoryIdeas],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Media_FinalView]