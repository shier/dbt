{{ config(materialized='view',schema='stg')}}
Select
	[CHARITYID] [CharityID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[ACTIVE] [Active],
	cast([WEBSITEURL] as nvarchar(4000)) [WebSiteURL],
	cast([LOGOURL] as nvarchar(4000)) [LogoURL]
From stg.[Auct_Charity_Raw]
