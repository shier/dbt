{{ config(materialized='table',schema='dbo')}}
Select
	cast([PreferredContactMethodID] as int) [PreferredContactMethodID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_PreferredContactMethod_FinalView]