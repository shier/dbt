
Select
	CREATED Created,
	CHATID ChatID,
	TOUSERID ToUserID,
	FROMUSERSID FromUsersID,
	UPDATEEVENTID UpdateEventID,
	cast(MESSAGE as nvarchar(4000)) Message
From Auct_Chat_Raw