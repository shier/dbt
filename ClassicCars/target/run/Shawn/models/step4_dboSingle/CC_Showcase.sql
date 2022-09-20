
  
  if object_id ('"dbo"."CC_Showcase__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Showcase__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Showcase__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Showcase__dbt_tmp"
    end


   EXEC('create view dbo.CC_Showcase__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([PaymentTypeID] as int) [PaymentTypeId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsActive] as bit) [isActive],
	cast([SalesForceOpportunityID] as nvarchar(4000)) [SalesforceOpportunityId] 
From stg.[CC_Showcase_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Showcase__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Showcase__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Showcase__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Showcase__dbt_tmp_temp_view"
    end


