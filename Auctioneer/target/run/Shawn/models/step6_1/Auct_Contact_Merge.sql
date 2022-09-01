
  
  if object_id ('"stg"."Auct_Contact_Merge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Merge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Contact_Merge__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Contact_Merge__dbt_tmp"
    end


   EXEC('create view stg.Auct_Contact_Merge__dbt_tmp_temp_view as
    

With Auct_Contact_Ex AS (
	 select * from stg.[Auct_Contact_FinalView]
),
Auct_CustomerAccount_Ex AS (
	 select * from stg.[Auct_CustomerAccount_FinalView]
),
Auct_Invoice_Ex AS (
	 select * from stg.[Auct_Invoice_FinalView]
),
Contact_merged AS (
    SELECT 
        DISTINCT cxacct.[CustomerAccountID], 
        con.[ContactID],
        ISNULL(con.[Name], LEFT(inv.[InvoiceName], PATINDEX(''%[0-9]%'', inv.[InvoiceName])-1)) AS [Name]
    FROM [Auct_Contact_Ex] con -- need replace [Auct_Contact_Ex] with [Auct_Contact_Cleaning_stg]
    LEFT JOIN [Auct_CustomerAccount_Ex] cxacct -- need replace [Auct_CustomerAccount_Ex] with [Auct_CustomerAccount]
        ON con.[ContactID]=cxacct.[ContactID]
    LEFT JOIN [Auct_Invoice_Ex] inv -- need replace [Auct_Invoice_Ex] with [Auct_Invoice]
        ON cxacct.[ContactID]=inv.[ContactID]
    WHERE ISNULL(con.[Name], LEFT(inv.[InvoiceName], PATINDEX(''%[0-9]%'', inv.[InvoiceName])-1)) IS NOT NULL
    UNION
    SELECT 
        DISTINCT cxacct.[CustomerAccountID], 
        cxacct.[ContactID],
        ISNULL(con.[Name], LEFT(inv.[InvoiceName], PATINDEX(''%[0-9]%'', inv.[InvoiceName])-1)) AS [Name]
    FROM [Auct_CustomerAccount_Ex] cxacct -- need replace [Auct_CustomerAccount_Ex] with [Auct_CustomerAccount]
    LEFT JOIN [Auct_Invoice_Ex] inv -- need replace [Auct_Invoice_Ex] with [Auct_Invoice]
        ON cxacct.[ContactID]=inv.[ContactID]
    LEFT JOIN [Auct_Contact_Ex] con -- need replace [Auct_Contact] with [Auct_Contact_Cleaning_stg]
        ON cxacct.[ContactID]=con.[ContactID]
    WHERE (ISNULL(con.[Name], LEFT(inv.[InvoiceName], PATINDEX(''%[0-9]%'', inv.[InvoiceName])-1))) IS NOT NULL
)

SELECT 
    [CustomerAccountID],
    [ContactID],
    [Name]
FROM Contact_merged
    ');

  CREATE TABLE "stg"."Auct_Contact_Merge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Contact_Merge__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Contact_Merge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Merge__dbt_tmp_temp_view"
    end


