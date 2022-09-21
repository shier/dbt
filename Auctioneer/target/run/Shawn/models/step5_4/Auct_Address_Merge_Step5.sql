
  
  if object_id ('"stg"."Auct_Address_Merge_Step5__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step5__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Merge_Step5__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Address_Merge_Step5__dbt_tmp"
    end


   EXEC('create view stg.Auct_Address_Merge_Step5__dbt_tmp_temp_view as
    

  SELECT 
        [AddressID],
        [Created],
        [RowNumber]
    FROM (
        SELECT 
            [AddressID],
            [Created],
            ROW_NUMBER() OVER(
                PARTITION BY [AddressID]
                ORDER BY [Created]
            ) AS [RowNumber]
        FROM (
            SELECT 
                [AddressID],
                [Created]
            FROM Auct_Address_Merge_Step3
            UNION
            SELECT 
                [ShippingAddressID],
                [Created]
            FROM Auct_Address_Merge_Step4
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1
    ');

  CREATE TABLE "stg"."Auct_Address_Merge_Step5__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Merge_Step5__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Merge_Step5__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Merge_Step5__dbt_tmp_temp_view"
    end


