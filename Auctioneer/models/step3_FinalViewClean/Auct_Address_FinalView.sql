{{ config(materialized='view',schema='stg')}}
With Auct_Address_Ex as (
	Select
	[AddressID],[Address1],[Address2],[City],[StateProvince],[PostalCode],[Country],[Created],
	[UpdateEventID],[Careof],[Active],[County],[WeBaddressID] 
	From stg.[Auct_Address_Incr] 
	Where [dbt_valid_to] is null
),
state_cte AS
(
    SELECT 
    [ADDRESSID] AS AddressID,
    [ADDRESS1] AS Address1,
    [ADDRESS2] AS Address2,
    Auct_Address_Ex.CITY AS City,
    case when (STATEPROVINCE is null or STATEPROVINCE = '') 
        and PostalCode in 
            (select distinct PostalCode from Lookup_ZipUS_Ex) 
        and Auct_Address_Ex.City in 
            (select distinct city from Lookup_ZipUS_Ex) then Lookup_ZipUS_Ex.state_id else STATEPROVINCE end as State,
    [COUNTY] AS County,
    [POSTALCODE] AS PostalCode,
    [Country],
    [CREATED] AS Created,
    [UPDATEEVENTID] AS UpdateEventID,
    [CAREOF] AS CareOf,
    [ACTIVE] AS IsActive,
    case when (STATEPROVINCE is null or STATEPROVINCE = '') 
        and PostalCode in 
            (select distinct PostalCode from Lookup_ZipUS_Ex) 
        and Auct_Address_Ex.City in 
            (select distinct city from Lookup_ZipUS_Ex)  
    then 'fix state;'
    else null end as address_clean_reason,
    case when (STATEPROVINCE is null or STATEPROVINCE = '') 
        and PostalCode in 
            (select distinct PostalCode from Lookup_ZipUS_Ex) 
        and Auct_Address_Ex.City in 
            (select distinct city from Lookup_ZipUS_Ex) 
        then CURRENT_TIMESTAMP 
        else null end as address_clean_datetime
    FROM 
        [Auct_Address_Ex]
    left join Lookup_ZipUS_Ex
                on PostalCode = Lookup_ZipUS_Ex.zip
                and lower(Lookup_ZipUS_Ex.city) = lower(Auct_Address_Ex.city)
),
country_cte as
(
    SELECT 
    AddressID,
    Address1,
    Address2,
    City,
    State,
    County,
    PostalCode,
    case 
        when (Country is null or Country = '') 
        and State in 
            (select distinct State from Lookup_ZipUS_Ex) 
        and city in 
            (select distinct city from Lookup_ZipUS_Ex) then 1 
        when Country = 0
        and State in 
            (select distinct State from Lookup_ZipUS_Ex)
        and ((len(PostalCode) = 5 and ISNUMERIC(PostalCode)=1) 
            or 
            (len(PostalCode) = 10 and PostalCode like '%-%')) then 1 else Country
    end as CountryID, -- update countryid by looking up city and state name
    Created,
    UpdateEventID,
    CareOf,
    IsActive,
    case when Country is null  
        and (City is not null and PostalCode is not null and State is not null) 
        and len(State)=2 and len(PostalCode)=5 
        then concat(address_clean_reason,'backfill country using Lookup_ZipUS_Ex table;')
        else address_clean_reason end as address_clean_reason
    ,
    case when Country is null  
        and (City is not null and PostalCode is not null and State is not null) 
        and len(State)=2 and len(PostalCode)=5 then CURRENT_TIMESTAMP 
        else null end as address_clean_datetime
    FROM state_cte
        
),
city_cte as 
(
    SELECT 
    AddressID,
    Address1,
    Address2,
    case when country_cte.city is null or country_cte.city = '' 
        then Lookup_ZipUS_Ex.city 
        else country_cte.city end as city_new,
    [State],
    County,
    PostalCode,
    CountryID,
    Created,
    UpdateEventID,
    CareOf,
    IsActive,
    case when country_cte.city is null or country_cte.city = '' 
        then concat(address_clean_reason,'backfill city using zip code in Lookup_ZipUS_Ex table;')
        else address_clean_reason end as address_clean_reason
    ,
    case when country_cte.city is null or country_cte.city = ''
        then CURRENT_TIMESTAMP 
        else null end as address_clean_datetime
    FROM country_cte
    left join Lookup_ZipUS_Ex
        on PostalCode = Lookup_ZipUS_Ex.zip
),
cte_fix_null as 
(    SELECT 
    AddressID,
    case when Address1 = '' then null else Address1 end as Address1,
    case when Address2 = '' then null else Address2 end as Address2,
    case when city_new = '' then null else city_new end as new_city,
    case when State = '' then null else State end as State,
    case when County = '' then null else County end as County,
    case when PostalCode = '' then null else PostalCode end as PostalCode,
    case when CountryID = '' then null else CountryID end as CountryID,
    Created,
    UpdateEventID,
    case when CareOf = '' then null else CareOf end as CareOf,
    IsActive,
    case when Address1 = '' 
        or Address2 = ''
        or city_new = ''
        or State = ''
        or County = ''
        or PostalCode = ''
        or CountryID = ''
        or CareOf = ''
        then concat(address_clean_reason,'fix empty strings to null;')
        else address_clean_reason end as address_clean_reason
from city_cte)

select
    [AddressID],
    [Address1],
    [Address2],
    new_city as [City],
    [State]  as [StateProvince],
    [County],
    [PostalCode],
    [CountryID] as [Country],
    [Created],
    [UpdateEventID],
    [CareOf],
    [IsActive] as [Active],
    [address_clean_reason],
    case when 
        address_clean_reason is not null
        then CURRENT_TIMESTAMP
        else null
    end as address_clean_datetime
from cte_fix_null;

