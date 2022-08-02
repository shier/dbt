{{ config(materialized='view',schema='stg')}}
Select
	[NewsletterIssuePK] [NewsLetterissuePK],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC],
	[IssueDateUTC] [IssueDateUTC],
	[IsActive] [IsActive]
From stg.[CC_NewsLetterissue_Raw]
