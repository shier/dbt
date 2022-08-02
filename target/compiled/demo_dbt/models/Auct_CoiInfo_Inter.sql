
Select
	CREATED Created,
	COIINFOID CoiInfoID,
	CUSTOMERACCOUNTID CustomerAccountID,
	AUCTIONID AuctionID,
	UPDATEEVENTID UpdateEventID,
	cast(INSURANCEPHONE as nvarchar(4000)) InsurancePhone,
	cast(INSURANCEFAX as nvarchar(4000)) InsuranceFax,
	cast(COMMENTS as nvarchar(4000)) Comments,
	cast(WAIVERS as nvarchar(4000)) Waivers,
	cast(DAMAGE as nvarchar(4000)) Damage,
	cast(WORKERSCOMP as nvarchar(4000)) WorkersComp,
	cast(POLICY as nvarchar(4000)) Policy,
	cast(INSURANCECOMPANY as nvarchar(4000)) InsuranceCompany,
	cast(INSURANCECONTACT as nvarchar(4000)) InsuranceContact,
	cast(GENERALLIABILITY as nvarchar(4000)) GeneralLiability,
	cast(ADDITIONALINSURED as nvarchar(4000)) Additionalinsured,
	cast(CORRECTLIMITS as nvarchar(4000)) CorrectLimits,
	cast(AUCTIONDATES as nvarchar(4000)) AuctionDates,
	cast(AUTOINSURANCE as nvarchar(4000)) AutoInsurance
From Auct_CoiInfo_Raw