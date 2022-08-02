
Select
	[ID],[IsActive],[Source],[CreateDate],[ModifyDate],[SentFrom],[Replyto],[IpAddress],[Template],[ContentFields],[Meta],[ReviewedBy],[ReviewerAction],[ReviewReason],[ReviewInFormation] 
From stg.[CC_EmailReview_Incr] 
Where [dbt_valid_to] is null