
  
  if object_id ('"stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view as
    
Select
	cast([AssignID] as nvarchar(4000)) [AssignID],
	[UserID] [UserID],
	cast([Text] as nvarchar(4000)) [Text],
	[PriorityID] [PriorityID],
	[DateCreated] [DateCreated]
From stg.[Auct_ConsignmentAssignment_Raw]
    ');

  CREATE TABLE "stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentAssignment_Inter__dbt_tmp_temp_view"
    end


