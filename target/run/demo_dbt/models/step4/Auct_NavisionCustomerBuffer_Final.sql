
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view as
    
WITH PhoneCol AS (
   	SELECT 
		[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostCode],
      	TRIM(REPLACE(TRANSLATE(UPPER(Phoneno), ''()-.,/+?_&;"@='', ''              ''), '' '', '''')) AS Phoneno,
		[Email],[HomePage],[Status],[StatusMessage],[WrotetoNavision] 
   FROM 
      [Auct_NavisionCustomerBuffer_Incr]
)
SELECT 
	[No],[Name],[Name2],[Address],[Address2],[City],[State],[CountryCode],[PostCode],

   	CASE
      WHEN Phoneno = '''' 
         THEN NULL
      WHEN Phoneno NOT LIKE ''%[^0+$]%''
         THEN NULL
      WHEN TRIM(Phoneno) IN (''NA'', ''NONE'', ''N'', ''UNKNOWN'', ''TEST'')
         THEN NULL  
      WHEN Phoneno LIKE ''%SAM%'' 
         THEN NULL
      WHEN ISNUMERIC(RIGHT(Phoneno, 1)) = 0 
         THEN SUBSTRING([Phoneno], 1 , LEN([Phoneno]) - PATINDEX(''%[0-9]%'', REVERSE([Phoneno])))               
      WHEN Phoneno LIKE ''%[0-9]EXT[0-9]%'' OR -- Standardize phone extension
           Phoneno LIKE ''%[0-9]EST[0-9]%'' OR
           Phoneno LIKE ''%[0-9]XTN[0-9]%'' OR
           Phoneno LIKE ''%[0-9]XT[0-9]%'' OR
           Phoneno LIKE ''%[0-9]EX[0-9]%'' OR
           Phoneno LIKE ''%[0-9]X[0-9]%'' OR
           Phoneno LIKE ''%[0-9]E[0-9]%''
         THEN replace(replace(replace(translate(Phoneno, ''ENSTX'', ''#####''), ''#'', ''+-''), ''-+'', ''''), ''+-'', '' EXT '')
      ELSE Phoneno
    END AS Phoneno,
	[Email],[HomePage],[Status],[StatusMessage],[WrotetoNavision] 
FROM 
    PhoneCol
    ');

  CREATE TABLE "stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Final__dbt_tmp_temp_view"
    end


