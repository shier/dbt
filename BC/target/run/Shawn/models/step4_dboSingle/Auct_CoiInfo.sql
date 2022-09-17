
  
  if object_id ('"dbo"."Auct_CoiInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CoiInfo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CoiInfo__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CoiInfo__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CoiInfo__dbt_tmp_temp_view as
    
Select
	cast([CoiInfoID] as int) [COIINFOID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([GeneralLiability] as nvarchar(4000)) [GENERALLIABILITY],
	cast([Additionalinsured] as nvarchar(4000)) [ADDITIONALINSURED],
	cast([CorrectLimits] as nvarchar(4000)) [CORRECTLIMITS],
	cast([AuctionDates] as nvarchar(4000)) [AUCTIONDATES],
	cast([AutoInsurance] as nvarchar(4000)) [AUTOINSURANCE],
	cast([Waivers] as nvarchar(4000)) [WAIVERS],
	cast([Damage] as nvarchar(4000)) [DAMAGE],
	cast([WorkersComp] as nvarchar(4000)) [WORKERSCOMP],
	cast([Policy] as nvarchar(4000)) [POLICY],
	cast([InsuranceCompany] as nvarchar(4000)) [INSURANCECOMPANY],
	cast([InsuranceContact] as nvarchar(4000)) [INSURANCECONTACT],
	cast([InsurancePhone] as nvarchar(4000)) [INSURANCEPHONE],
	cast([InsuranceFax] as nvarchar(4000)) [INSURANCEFAX],
	cast([Comments] as nvarchar(4000)) [COMMENTS],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CoiInfo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CoiInfo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CoiInfo__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CoiInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CoiInfo__dbt_tmp_temp_view"
    end


