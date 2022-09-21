

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