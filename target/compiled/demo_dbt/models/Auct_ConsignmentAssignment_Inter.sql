
Select
	DateCreated DateCreated,
	UserID UserID,
	PriorityID PriorityID,
	cast(AssignID as nvarchar(4000)) AssignID,
	cast(Text as nvarchar(4000)) Text
From Auct_ConsignmentAssignment_Raw