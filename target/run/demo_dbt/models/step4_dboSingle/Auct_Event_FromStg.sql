
  
  if object_id ('"dbo"."Auct_Event_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Event_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Event_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Event_FromStg__dbt_tmp_temp_view as
    
Select
	cast([EventID] as int) [EventID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Code] as nvarchar(4000)) [Code],
	cast([ProjectCode] as nvarchar(4000)) [ProjectCode],
	cast([Year] as int) [Year],
	cast([ParentEventID] as int) [ParentEventID],
	cast([EventTypeID] as int) [EventTypeID],
	cast([StartDate] as DATETIME) [StartDate],
	cast([EndDate] as DATETIME) [EndDate],
	cast([Created] as DATETIME) [Created],
	cast([Active] as int) [Active],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([LocationAddressID] as int) [LocationAddressID],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([BillingAddressID] as int) [BillingAddressID],
	cast([ImageURL] as nvarchar(4000)) [ImageURL],
	cast([VenueID] as int) [VenueID] 
From stg.[Auct_Event_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Event_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Event_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Event_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Event_FromStg__dbt_tmp_temp_view"
    end


