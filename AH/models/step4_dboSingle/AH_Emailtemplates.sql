{{ config(materialized='table',schema='dbo')}}
Select
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [Id],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_Emailtemplates_FinalView]