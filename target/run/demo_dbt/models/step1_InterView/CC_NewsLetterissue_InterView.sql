create view "stg"."CC_NewsLetterissue_InterView__dbt_tmp" as
    
Select
	[NewsletterIssuePK] [NewsLetterissuePK],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC],
	[IssueDateUTC] [IssueDateUTC],
	[IsActive] [IsActive]
From stg.[CC_NewsLetterissue_Raw]
