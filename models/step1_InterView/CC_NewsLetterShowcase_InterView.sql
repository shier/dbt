{{ config(materialized='view',schema='stg')}}
Select
	[IsActive] [IsActive],
	[NewsletterIssueFK] [NewsLetterissueFK],
	[ListingFK] [ListingFK],
	[ShowcaseSequence] [ShowcaseSequence],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC]
From stg.[CC_NewsLetterShowcase_Raw]
