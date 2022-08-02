{{ config(materialized='table',schema='dbo')}}
Select
	cast([NewsLetterissuePK] as int) [NewsLetterissuePK],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC],
	cast([IssueDateUTC] as datetime) [IssueDateUTC],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_NewsLetterissue_FinalView]