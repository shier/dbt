{{ config(materialized='table',schema='dbo')}}
Select
	cast([CoiInfoID] as int) [CoiInfoID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([GeneralLiability] as nvarchar(4000)) [GeneralLiability],
	cast([Additionalinsured] as nvarchar(4000)) [Additionalinsured],
	cast([CorrectLimits] as nvarchar(4000)) [CorrectLimits],
	cast([AuctionDates] as nvarchar(4000)) [AuctionDates],
	cast([AutoInsurance] as nvarchar(4000)) [AutoInsurance],
	cast([Waivers] as nvarchar(4000)) [Waivers],
	cast([Damage] as nvarchar(4000)) [Damage],
	cast([WorkersComp] as nvarchar(4000)) [WorkersComp],
	cast([Policy] as nvarchar(4000)) [Policy],
	cast([InsuranceCompany] as nvarchar(4000)) [InsuranceCompany],
	cast([InsuranceContact] as nvarchar(4000)) [InsuranceContact],
	cast([InsurancePhone] as nvarchar(4000)) [InsurancePhone],
	cast([InsuranceFax] as nvarchar(4000)) [InsuranceFax],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CoiInfo_FinalView]