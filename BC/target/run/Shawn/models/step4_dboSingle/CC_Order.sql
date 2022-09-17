
  
  if object_id ('"dbo"."CC_Order__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Order__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Order__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Order__dbt_tmp"
    end


   EXEC('create view dbo.CC_Order__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([PaymentID] as int) [PaymentId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_Order_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Order__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Order__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Order__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Order__dbt_tmp_temp_view"
    end


