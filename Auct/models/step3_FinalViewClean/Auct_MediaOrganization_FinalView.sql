{{ config(materialized='view',schema='stg')}}

WITH PhoneCol AS (
    SELECT 
        [MediaOrganizationID],[MediaOrganizationGUID],[PrimaryMediaAttendeeID],[AuctionID],[Name],[IsAttending],
        TRIM(REPLACE(TRANSLATE(UPPER(Phone), '()-.,/+?_&;"@=', '              '), ' ', '')) AS Phone,
        TRIM(REPLACE(TRANSLATE(UPPER(Fax), '()-.,/+?_&;"@=', '              '), ' ', '')) AS Fax,
        [WebSite],[Address1],[Address2],[City],[State],[PostalCode],[PhotosPublished],[PriorCoverage],[MediaTypeID],[DistributionTypeID],[Circulation],[AudienceTypeID],[Import],[CountryID],[Created],[Active] 
    From stg.[Auct_MediaOrganization_Incr] 
	Where [dbt_valid_to] is null
)
SELECT
    [MediaOrganizationID],[MediaOrganizationGUID],[PrimaryMediaAttendeeID],[AuctionID],[Name],[IsAttending],

   	CASE      
      WHEN Phone = '' 
         THEN NULL
      WHEN Phone NOT LIKE '%[^0+$]%'
         THEN NULL
      WHEN TRIM(Phone) IN ('NA', 'NONE', 'N', 'UNKNOWN', 'TEST')
         THEN NULL       
      WHEN Phone LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           Phone LIKE '%[0-9]EST[0-9]%' OR
           Phone LIKE '%[0-9]XTN[0-9]%' OR
           Phone LIKE '%[0-9]XT[0-9]%' OR
           Phone LIKE '%[0-9]EX[0-9]%' OR
           Phone LIKE '%[0-9]X[0-9]%' OR
           Phone LIKE '%[0-9]E[0-9]%'
         THEN replace(replace(replace(translate(Phone, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')
      WHEN Phone LIKE '%SAM%' 
         THEN NULL
      WHEN Phone = 'CELL:4802036866'
         THEN '4802036866'
      WHEN Phone LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(Phone, 1)) = 0 
         THEN SUBSTRING([Phone], 1 , LEN([Phone]) - PATINDEX('%[0-9]%', REVERSE([Phone])))  
      ELSE Phone
   	END AS Phone,
   	CASE      
      WHEN Fax = '' 
         THEN NULL
      WHEN Fax NOT LIKE '%[^0+$]%'
         THEN NULL
      WHEN TRIM(Fax) IN ('NA', 'NONE', 'N', 'UNKNOWN', 'TEST', 'FAX')
         THEN NULL             
      WHEN Fax LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           Fax LIKE '%[0-9]EST[0-9]%' OR
           Fax LIKE '%[0-9]XTN[0-9]%' OR
           Fax LIKE '%[0-9]XT[0-9]%' OR
           Fax LIKE '%[0-9]EX[0-9]%' OR
           Fax LIKE '%[0-9]X[0-9]%' OR
           Fax LIKE '%[0-9]E[0-9]%'
         THEN replace(replace(replace(translate(Fax, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')
      WHEN Fax LIKE '%SAM%' 
         THEN NULL
      WHEN Fax LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(Fax, 1)) = 0 
         THEN SUBSTRING([Fax], 1 , LEN([Fax]) - PATINDEX('%[0-9]%', REVERSE([Fax])))  
      WHEN Fax LIKE '%[a-z]%'
         THEN NULL
      ELSE Fax
   	END AS Fax,
    [WebSite],[Address1],[Address2],[City],[State],[PostalCode],[PhotosPublished],[PriorCoverage],[MediaTypeID],[DistributionTypeID],[Circulation],[AudienceTypeID],[Import],[CountryID],[Created],[Active] 
FROM 
    PhoneCol