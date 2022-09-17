
  
  if object_id ('"dbo"."CC_Maxmindscore__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Maxmindscore__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Maxmindscore__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Maxmindscore__dbt_tmp"
    end


   EXEC('create view dbo.CC_Maxmindscore__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([Minfraudscore] as float) [Minfraudscore],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [ID],
	cast([PaymentID] as int) [PaymentID] 
From stg.[CC_Maxmindscore_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Maxmindscore__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Maxmindscore__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Maxmindscore__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Maxmindscore__dbt_tmp_temp_view"
    end


