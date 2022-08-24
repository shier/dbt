{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAID] [MediaID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ADDRESSID] [AddressID],
	[MEDIATYPEID] [MediaTypeID],
	cast([CIRCULATION] as nvarchar(4000)) [Circulation],
	cast([STORYIDEAS] as nvarchar(4000)) [StoryIdeas],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Media_Raw]
