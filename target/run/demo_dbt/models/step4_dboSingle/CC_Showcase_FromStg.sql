
  
  if object_id ('"dbo"."CC_Showcase_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Showcase_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Showcase_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Showcase_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_Showcase_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([PaymentTypeID] as int) [PaymentTypeID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsActive] as bit) [IsActive],
	cast([SalesForceOpportunityID] as nvarchar(4000)) [SalesForceOpportunityID] 
From stg.[CC_Showcase_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Showcase_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Showcase_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Showcase_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Showcase_FromStg__dbt_tmp_temp_view"
    end


