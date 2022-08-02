
  
  if object_id ('"stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view as
    
Select
	cast([state] as nvarchar(4000)) [State],
	cast([zipcode] as nvarchar(4000)) [ZipCode],
	cast([country] as nvarchar(4000)) [Country],
	cast([OptIn] as nvarchar(4000)) [Optin],
	cast([AuctionID] as nvarchar(4000)) [AuctionID],
	cast([Source] as nvarchar(4000)) [Source],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([email] as nvarchar(4000)) [Email],
	cast([phone] as nvarchar(4000)) [Phone],
	cast([address] as nvarchar(4000)) [Address],
	cast([address2] as nvarchar(4000)) [Address2],
	cast([city] as nvarchar(4000)) [City],
	cast([First_Name] as nvarchar(4000)) [First_Name]
From stg.[Auct_2018PurchaserList-tim_Raw]
    ');

  CREATE TABLE "stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList-tim_Inter__dbt_tmp_temp_view"
    end


