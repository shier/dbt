{{ config(materialized='view',schema='stg')}}
Select
	[CoiInfoID],[CustomerAccountID],[AuctionID],[GeneralLiability],[Additionalinsured],[CorrectLimits],[AuctionDates],[AutoInsurance],[Waivers],[Damage],[WorkersComp],[Policy],[InsuranceCompany],[InsuranceContact],[InsurancePhone],[InsuranceFax],[Comments],[Created],[UpdateEventID] 
From stg.[Auct_CoiInfo_Incr] 
Where [dbt_valid_to] is null