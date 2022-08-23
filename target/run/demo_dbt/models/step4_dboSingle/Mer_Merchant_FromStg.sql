
  
  if object_id ('"dbo"."Mer_Merchant_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Merchant_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Merchant_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Merchant_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Merchant_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([CreatedDate] as datetime) [Created],
	cast([LastloadedDate] as datetime) [LastLoadedDate],
	cast([Token] as varchar(100)) [Token],
	cast([Description] as varchar(8000)) [Description] 
From stg.[Mer_Merchant_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Merchant_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Merchant_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Merchant_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Merchant_FromStg__dbt_tmp_temp_view"
    end


