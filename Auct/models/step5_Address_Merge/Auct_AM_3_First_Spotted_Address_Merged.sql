{{ config(materialized='view',schema='stg')}}

  SELECT 
        [AddressID],
        [Created]
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
            FROM first_spotted_Address
            UNION
            SELECT 
                [ShippingAddressID],
                [Created]
            FROM Auct_AM_2_First_Spotted_ShippingAddress
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1