
  
  if object_id ('"dbo"."AH_PaymentResponses_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_PaymentResponses_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_PaymentResponses_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_PaymentResponses_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_PaymentResponses_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Approved] as bit) [Approved],
	cast([InvoiceID] as int) [InvoiceID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([Amount] as numeric(194)) [Amount],
	cast([AuthorizationCode] as nvarchar(4000)) [AuthorizationCode],
	cast([AvsResponseCode] as nvarchar(4000)) [AvsResponseCode],
	cast([Cvv2ResponseCode] as nvarchar(4000)) [Cvv2ResponseCode],
	cast([CavResponseCode] as nvarchar(4000)) [CavResponseCode],
	cast([BuyerStreet] as nvarchar(4000)) [BuyerStreet],
	cast([BuyerCity] as nvarchar(4000)) [BuyerCity],
	cast([ResponseStatus] as nvarchar(4000)) [ResponseStatus],
	cast([ProvIDEr] as nvarchar(4000)) [ProvIDEr],
	cast([RawResponseCode] as nvarchar(4000)) [RawResponseCode],
	cast([Description] as nvarchar(4000)) [Description],
	cast([TransactionID] as nvarchar(4000)) [TransactionID],
	cast([Method] as nvarchar(4000)) [Method],
	cast([BuyerStateregion] as nvarchar(4000)) [BuyerStateregion],
	cast([BuyerzipPostal] as nvarchar(4000)) [BuyerzipPostal],
	cast([BuyerEmail] as nvarchar(4000)) [BuyerEmail],
	cast([AllFields] as nvarchar(4000)) [AllFields],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_PaymentResponses_FinalView]
    ');

  CREATE TABLE "dbo"."AH_PaymentResponses_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_PaymentResponses_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_PaymentResponses_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_PaymentResponses_FromStg__dbt_tmp_temp_view"
    end

