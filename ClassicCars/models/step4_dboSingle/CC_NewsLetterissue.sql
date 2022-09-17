{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC],
	cast([IssueDateUTC] as datetime) [IssueDateUTC],
	cast([NewsLetterissuePK] as int) [NewsletterIssuePK],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_NewsLetterissue_FinalView]