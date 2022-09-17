
  
  if object_id ('"dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp"
    end


   EXEC('create view dbo_stg.SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view as
    

select ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS Sequence,
            cf.name, 
            cf.id, 
            count(*) as cnt
        from stg.AH_Listingproperties_FinalView lp 
            inner join stg.AH_CustomFields_FinalView cf 
            on lp.CustomFieldID = cf.id
        group by cf.Name, cf.id
    ');

  CREATE TABLE "dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."SZ_AH_Properties_FieldIDs__dbt_tmp_temp_view"
    end


