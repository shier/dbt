{{ config(materialized='view',schema='stg')}}

WITH PhoneCol AS (
    SELECT 
      	[AbsenteeBidID],[LotNumber],[MaxBID],[AuctionBidderID],[ConsignmentID],[AuctionID],
      	TRIM(REPLACE(TRANSLATE(UPPER(CONTACTPHONE1), '()-.,/+?_&;"@=', '              '), ' ', '')) AS CONTACTPHONE1, -- Remove Special characters
      	TRIM(REPLACE(TRANSLATE(UPPER(CONTACTPHONE2), '()-.,/+?_&;"@=', '              '), ' ', '')) AS CONTACTPHONE2,  -- Remove Special characters
      	[Note],[AbsenteeTypeIDBit] 
    From stg.[Auct_AbsenteeBID_Incr] 
	Where [dbt_valid_to] is null
)

SELECT
    [AbsenteeBidID],[LotNumber],[MaxBID],[AuctionBidderID],[ConsignmentID],[AuctionID],
    CASE
        WHEN CONTACTPHONE1 = ''  -- Remove empty string
            THEN NULL
        WHEN CONTACTPHONE1 NOT LIKE '%[^0+$]%' -- Remove Phone number that is all 0(s)
            THEN NULL
        WHEN CONTACTPHONE1 LIKE '%SAM%' -- Remove SAM like strings
            THEN NULL
        WHEN ISNUMERIC(RIGHT(CONTACTPHONE1, 1)) = 0  -- Remove name after phone number
            THEN SUBSTRING([CONTACTPHONE1], 1 , LEN([CONTACTPHONE1]) - PATINDEX('%[0-9]%', REVERSE([CONTACTPHONE1]))) 
        WHEN CONTACTPHONE1 LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           CONTACTPHONE1 LIKE '%[0-9]EST[0-9]%' OR
           CONTACTPHONE1 LIKE '%[0-9]XTN[0-9]%' OR
           CONTACTPHONE1 LIKE '%[0-9]XT[0-9]%' OR
           CONTACTPHONE1 LIKE '%[0-9]EX[0-9]%' OR
           CONTACTPHONE1 LIKE '%[0-9]X[0-9]%' OR
           CONTACTPHONE1 LIKE '%[0-9]E[0-9]%'
         THEN replace(replace(replace(translate(CONTACTPHONE1, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')      
        ELSE CONTACTPHONE1
    END AS CONTACTPHONE1,
    CASE
        WHEN CONTACTPHONE2 = ''  -- Remove empty string
            THEN NULL
        WHEN CONTACTPHONE2 NOT LIKE '%[^0+$]%' -- Remove Phone number that is all 0(s)
            THEN NULL
        WHEN CONTACTPHONE2 LIKE '%SAM%' -- Remove SAM like strings
            THEN NULL
        WHEN ISNUMERIC(RIGHT(CONTACTPHONE2, 1)) = 0  -- Remove name after phone number
            THEN SUBSTRING([CONTACTPHONE2], 1 , LEN([CONTACTPHONE2]) - PATINDEX('%[0-9]%', REVERSE([CONTACTPHONE2]))) 
        WHEN CONTACTPHONE2 LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           CONTACTPHONE2 LIKE '%[0-9]EST[0-9]%' OR
           CONTACTPHONE2 LIKE '%[0-9]XTN[0-9]%' OR
           CONTACTPHONE2 LIKE '%[0-9]XT[0-9]%' OR
           CONTACTPHONE2 LIKE '%[0-9]EX[0-9]%' OR
           CONTACTPHONE2 LIKE '%[0-9]X[0-9]%' OR
           CONTACTPHONE2 LIKE '%[0-9]E[0-9]%'
         THEN replace(replace(replace(translate(CONTACTPHONE2, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')     
        ELSE CONTACTPHONE2
    END AS CONTACTPHONE2,
    [Note],[AbsenteeTypeIDBit] 
FROM 
    PhoneCol