
Select
	MEDIATYPEID MediaTypeID,
	UPDATEEVENTID UpdateEventID,
	MEDIAID MediaID,
	CUSTOMERACCOUNTID CustomerAccountID,
	ADDRESSID AddressID,
	CREATED Created,
	cast(CIRCULATION as nvarchar(4000)) Circulation,
	cast(STORYIDEAS as nvarchar(4000)) StoryIdeas
From Auct_Media_Raw