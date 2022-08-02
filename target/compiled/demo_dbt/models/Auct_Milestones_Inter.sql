
Select
	cast(MILESTONECOMMENTS as nvarchar(4000)) MilestoneComments,
	MILESTONEID MilestoneID,
	CONSIGNMENTID ConsignmentID,
	UPDATEEVENTID UpdateEventID,
	MILESTONETIME MilestoneTime,
	CREATED Created
From Auct_Milestones_Raw