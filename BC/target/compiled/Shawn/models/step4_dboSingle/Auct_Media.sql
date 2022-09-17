
Select
	cast([MediaID] as int) [MEDIAID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([MediaTypeID] as int) [MEDIATYPEID],
	cast([Circulation] as nvarchar(4000)) [CIRCULATION],
	cast([StoryIdeas] as nvarchar(4000)) [STORYIDEAS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Media_FinalView]