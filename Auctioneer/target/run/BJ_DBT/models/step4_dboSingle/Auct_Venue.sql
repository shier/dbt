
  
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
	cast([VenueID] as int) [VenueID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AddressID] as int) [AddressID],
	cast([ShippingName] as nvarchar(4000)) [ShippingName],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([Active] as int) [Active] 
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


