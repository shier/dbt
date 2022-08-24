
  
  if object_id ('"dbo"."Auct_TicketType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TicketType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TicketType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TicketType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TicketType__dbt_tmp_temp_view as
    
Select
	cast([TicketTypeID] as int) [TicketTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [Active] 
From stg.[Auct_TicketType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TicketType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TicketType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TicketType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TicketType__dbt_tmp_temp_view"
    end


