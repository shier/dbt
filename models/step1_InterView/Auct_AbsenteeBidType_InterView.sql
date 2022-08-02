{{ config(materialized='view',schema='stg')}}
Select
	[ABSENTEEBIDTYPEID] [AbsenteeBidTypeID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AbsenteeBidType_Raw]
