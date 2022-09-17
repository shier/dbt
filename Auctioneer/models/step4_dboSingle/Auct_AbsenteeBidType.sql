{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([AbsenteeBidTypeID] as int) [ABSENTEEBIDTYPEID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_AbsenteeBidType_FinalView]