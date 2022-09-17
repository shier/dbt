{{ config(materialized='table',schema='dbo')}}
Select
	cast([CharityID] as int) [CHARITYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Active] as int) [ACTIVE],
	cast([WebSiteURL] as nvarchar(4000)) [WEBSITEURL],
	cast([LogoURL] as nvarchar(4000)) [LOGOURL] 
From stg.[Auct_Charity_FinalView]