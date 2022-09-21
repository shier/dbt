
  
  if object_id ('"dbo"."Auct_Venue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Venue__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Venue__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Venue__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Venue__dbt_tmp_temp_view as
    
Select
	cast([VenueID] as int) [VENUEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([AddressID] as int) [ADDRESSID],
	cast([ShippingName] as nvarchar(4000)) [SHIPPINGNAME],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Venue_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Venue__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Venue__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Venue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Venue__dbt_tmp_temp_view"
    end


