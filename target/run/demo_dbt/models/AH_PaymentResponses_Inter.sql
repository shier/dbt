
  
  if object_id ('"stg"."AH_PaymentResponses_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentResponses_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_PaymentResponses_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_PaymentResponses_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_PaymentResponses_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	InvoiceId InvoiceID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateStamp DaTestamp,
	Amount Amount,
	Approved Approved,
	cast(ResponseStatus as nvarchar(4000)) ResponseStatus,
	cast(Provider as nvarchar(4000)) ProvIDEr,
	cast(RawResponseCode as nvarchar(4000)) RawResponseCode,
	cast(Description as nvarchar(4000)) Description,
	cast(TransactionID as nvarchar(4000)) TransactionID,
	cast(BuyerCity as nvarchar(4000)) BuyerCity,
	cast(BuyerStateRegion as nvarchar(4000)) BuyerStateregion,
	cast(BuyerZipPostal as nvarchar(4000)) BuyerzipPostal,
	cast(BuyerEmail as nvarchar(4000)) BuyerEmail,
	cast(AllFields as nvarchar(4000)) AllFields,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Method as nvarchar(4000)) Method,
	cast(AuthorizationCode as nvarchar(4000)) AuthorizationCode,
	cast(AVSResponseCode as nvarchar(4000)) AvsResponseCode,
	cast(CVV2ResponseCode as nvarchar(4000)) Cvv2ResponseCode,
	cast(CAVResponseCode as nvarchar(4000)) CavResponseCode,
	cast(BuyerStreet as nvarchar(4000)) BuyersTreet
From AH_PaymentResponses_Raw
    ');

  CREATE TABLE "stg"."AH_PaymentResponses_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_PaymentResponses_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_PaymentResponses_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PaymentResponses_Inter__dbt_tmp_temp_view"
    end


