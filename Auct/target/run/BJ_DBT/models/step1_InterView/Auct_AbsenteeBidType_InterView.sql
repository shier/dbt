create view "stg"."Auct_AbsenteeBidType_InterView__dbt_tmp" as
    
Select
	[ABSENTEEBIDTYPEID] [AbsenteeBidTypeID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_AbsenteeBidType_Raw]
