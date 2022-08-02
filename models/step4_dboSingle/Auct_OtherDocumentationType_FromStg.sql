{{ config(materialized='table',schema='dbo')}}
Select
	cast([OtherDocumentationTypeID] as int) [OtherDocumentationTypeID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_OtherDocumentationType_FinalView]