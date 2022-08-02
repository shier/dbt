
Select
	EVENTTYPEID EventTypeID,
	CANHAVECHILDREN CanHaveChildren,
	cast(NAME as nvarchar(4000)) Name,
	cast(IMAGEURL as nvarchar(4000)) ImageURL,
	cast(CLASSNAME as nvarchar(4000)) ClassName,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(DEACTIVEIMAGEURL as nvarchar(4000)) DeActiveImageURL
From Auct_EventType_Raw