
  
  if object_id ('"stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view as
    
Select
	[CUSTOMERACCOUNTICKETID] [CustomerAccounTicketID],
	[ACTIVE] [Active],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[AUCTIONID] [AuctionID],
	cast([TICKETNUMBER] as nvarchar(4000)) [TicketNumber],
	[TICKETTYPEID] [TicketTypeID],
	[CREATED] [Created],
	[CREATEDBYUSERID] [CreatedByUserID],
	[QUANTITY] [Quantity],
	cast([COMMENT] as nvarchar(4000)) [Comment]
From stg.[Auct_CustomerAccountTicket_Raw]
    ');

  CREATE TABLE "stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CustomerAccountTicket_Inter__dbt_tmp_temp_view"
    end


