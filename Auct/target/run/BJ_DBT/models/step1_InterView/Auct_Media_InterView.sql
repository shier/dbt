create view "stg"."Auct_Media_InterView__dbt_tmp" as
    
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
