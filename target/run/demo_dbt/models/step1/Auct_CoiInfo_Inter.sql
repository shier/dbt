
  
  if object_id ('"stg"."Auct_CoiInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CoiInfo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CoiInfo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CoiInfo_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CoiInfo_Inter__dbt_tmp_temp_view as
    
Select
	[COIINFOID] [CoiInfoID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[AUCTIONID] [AuctionID],
	cast([GENERALLIABILITY] as nvarchar(4000)) [GeneralLiability],
	cast([ADDITIONALINSURED] as nvarchar(4000)) [Additionalinsured],
	cast([CORRECTLIMITS] as nvarchar(4000)) [CorrectLimits],
	cast([AUCTIONDATES] as nvarchar(4000)) [AuctionDates],
	cast([AUTOINSURANCE] as nvarchar(4000)) [AutoInsurance],
	cast([WAIVERS] as nvarchar(4000)) [Waivers],
	cast([DAMAGE] as nvarchar(4000)) [Damage],
	cast([WORKERSCOMP] as nvarchar(4000)) [WorkersComp],
	cast([POLICY] as nvarchar(4000)) [Policy],
	cast([INSURANCECOMPANY] as nvarchar(4000)) [InsuranceCompany],
	cast([INSURANCECONTACT] as nvarchar(4000)) [InsuranceContact],
	cast([INSURANCEPHONE] as nvarchar(4000)) [InsurancePhone],
	cast([INSURANCEFAX] as nvarchar(4000)) [InsuranceFax],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CoiInfo_Raw]
    ');

  CREATE TABLE "stg"."Auct_CoiInfo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CoiInfo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CoiInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CoiInfo_Inter__dbt_tmp_temp_view"
    end


