
Select
	CHARITYID CharityID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	cast(WEBSITEURL as nvarchar(4000)) WebSiteURL,
	cast(LOGOURL as nvarchar(4000)) LogoURL
From Auct_Charity_Raw