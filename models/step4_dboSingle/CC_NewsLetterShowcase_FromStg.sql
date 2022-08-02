{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsActive] as bit) [IsActive],
	cast([NewsLetterissueFK] as int) [NewsLetterissueFK],
	cast([ListingFK] as int) [ListingFK],
	cast([ShowcaseSequence] as int) [ShowcaseSequence],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC] 
From stg.[CC_NewsLetterShowcase_FinalView]