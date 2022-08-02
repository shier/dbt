{{ config(materialized='table',schema='dbo')}}
Select
	cast([CharityID] as int) [CharityID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Active] as int) [Active],
	cast([WebSiteURL] as nvarchar(4000)) [WebSiteURL],
	cast([LogoURL] as nvarchar(4000)) [LogoURL] 
From stg.[Auct_Charity_FinalView]