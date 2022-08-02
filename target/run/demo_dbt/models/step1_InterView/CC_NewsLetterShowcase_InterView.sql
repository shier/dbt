create view "stg"."CC_NewsLetterShowcase_InterView__dbt_tmp" as
    
Select
	[IsActive] [IsActive],
	[NewsletterIssueFK] [NewsLetterissueFK],
	[ListingFK] [ListingFK],
	[ShowcaseSequence] [ShowcaseSequence],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC]
From stg.[CC_NewsLetterShowcase_Raw]
