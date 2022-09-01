
  
  if object_id ('"stg"."Auct_AM_4_1_Join1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_4_1_Join1__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AM_4_1_Join1__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AM_4_1_Join1__dbt_tmp"
    end


   EXEC('create view stg.Auct_AM_4_1_Join1__dbt_tmp_temp_view as
    

SELECT 
                    addrasgmt.[CustomerAccountID],
                    addrasgmt.[CompanyID] AS [CurrentCompanyID],
                    ISNULL(addr.[AddressID], addrasgmt.[AddressID]) AS [AddressID],
                    NULLIF(CONCAT(addr.[Address1], '' '', addr.[Address2]), '''') AS [Address],
                    addr.[City],
                    addr.[StateProvince], -- (Update) addr.[StateProvince], OR  addr.[StateProvince] AS [StateProvince],
                    addr.[PostalCode],
                    addr.[Country],
                    addr.[Created],
                    addrasgmt.[AddressTypeID],
                    CASE WHEN addrasgmt.[AddDescr] IN (''BAD ADDRESS'') AND addrsts.[Name] IN (''VERIFIED'') -- (Update) CASE WHEN addrasgmt.[AddDescription] IN (''BAD ADDRESS'') AND addrsts.[AddressStatus] IN (''VERIFIED'')
                        THEN ''BAD''
                    ELSE addrsts.[Name] -- (Update) ELSE addrsts.[AddressStatus]
                    END AS [AddressStatus],
                    addrasgmt.[IsDefault] AS [IsDefaultAddress],
                    addr.[Active] AS [IsActiveAddress] -- (Update) addr.[Active] AS [IsActiveAddress], OR addr.[IsActive] AS [IsActiveAddress], 
                   
                FROM stg.[Auct_Address_FinalView] addr -- need replace [Auct_Address_FinalView] with [Auct_Address_Cleaning_stg]
                FULL OUTER JOIN stg.[Auct_AddressAssignments_FinalView] addrasgmt -- need replace [Auct_AddressAssignments_Ex] with [Auct_AddressAssignments]
                    ON addr.[AddressID]=addrasgmt.[AddressID]

                LEFT JOIN stg.[Auct_AddressStatus_FinalView] addrsts -- need replace [Auct_AddressStatus_Ex] with [Auct_AddressStatus] 
                    ON addrasgmt.[AddressStatusID]=addrsts.[AddressStatusID]
    ');

  CREATE TABLE "stg"."Auct_AM_4_1_Join1__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AM_4_1_Join1__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AM_4_1_Join1__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AM_4_1_Join1__dbt_tmp_temp_view"
    end


