
Select
	cast([IsActive] as bit) [IsActive],
	cast([NewsLetterissueFK] as int) [NewsletterIssueFK],
	cast([ListingFK] as int) [ListingFK],
	cast([ShowcaseSequence] as int) [ShowcaseSequence],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC] 
From stg.[CC_NewsLetterShowcase_FinalView]