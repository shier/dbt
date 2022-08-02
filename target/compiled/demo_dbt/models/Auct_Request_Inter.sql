
Select
	sent_date Sent_Date,
	id ID,
	cast(publication as nvarchar(4000)) Publication,
	cast(description as nvarchar(4000)) Description
From Auct_Request_Raw