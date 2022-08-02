
Select
	[CoiInfoID],[Created],[CustomerAccountID],[AuctionID],[UpdateEventID],[InsurancePhone],[InsuranceFax],[Comments],[Waivers],[Damage],[WorkersComp],[Policy],[InsuranceCompany],[InsuranceContact],[GeneralLiability],[Additionalinsured],[CorrectLimits],[AuctionDates],[AutoInsurance] 
From stg.[Auct_CoiInfo_Incr] 
Where [dbt_valid_to] is null