
  
  if object_id ('"stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	SPONSORGALATICKETSID SponsorgalaTicketsID,
	GALATICKETTYPEID GalaTicketTypeID,
	SPONSORAUCTIONID SponsorAuctionID,
	SPONSORGALATICKETSNUMBER SponsorgalaTicketsNumber,
	UPDATEEVENTID UpdateEventID
From Auct_SponsorgalaTickets_Raw
    ');

  CREATE TABLE "stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SponsorgalaTickets_Inter__dbt_tmp_temp_view"
    end


