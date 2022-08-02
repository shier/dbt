create view "stg"."Auct_AbsenteeBidType_FinalView__dbt_tmp" as
    
Select
	[AbsenteeBidTypeID],[Active],[Name] 
From stg.[Auct_AbsenteeBidType_Incr] 
Where [dbt_valid_to] is null
