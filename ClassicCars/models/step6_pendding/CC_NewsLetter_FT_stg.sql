{{ config(materialized='table',schema='stg')}}
SELECT
	[ID] AS [NewsLetterID],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate],
	[IsActive],
	[Email]
FROM [stg].[CC_Newsletter_FinalView]
