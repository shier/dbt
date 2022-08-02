
  
  if object_id ('"stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	BUSINESSUNITID BusinessUnitID,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTY as nvarchar(4000)) County,
	cast(BUSINESSUNITDISPLAY as nvarchar(4000)) BusinessUnitDisplay
From Auct_AuctionBusinessUnit_Raw
    ');

  CREATE TABLE "stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBusinessUnit_Inter__dbt_tmp_temp_view"
    end


