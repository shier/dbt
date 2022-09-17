
  
  if object_id ('"dbo_dbo"."AH_Buyers_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Buyers_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_dbo"."AH_Buyers_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo_dbo"."AH_Buyers_DM__dbt_tmp"
    end


   EXEC('create view dbo_dbo.AH_Buyers_DM__dbt_tmp_temp_view as
    

with UserProperties_temp as (
    select 
        t1.UserID,
        max(case Name when ''FirstName'' then StringNativeValue else NULL end) as FirstName,
        max(case Name when ''LastName'' then StringNativeValue else NULL end) as LastName,
        max(case Name when ''UserPhone'' then StringNativeValue else NULL end) as Phone,
        max(case Name when ''IsInternational'' then cast(EnumNativeValue as varchar(200)) else NULL end) as IsInternational,
        max(case Name when ''Reg_Reference'' then cast(EnumNativeValue as varchar(200)) else NULL end) as Reg_Reference,
        max(case Name when ''Reg_Referral'' then cast(EnumNativeValue as varchar(200)) else NULL end) as Reg_Referral
    from
        (SELECT
            up.*,
            cf.Name
        FROM [stg].[AH_UserProperties_FinalView] AS up
        left JOIN [stg].[AH_CustomFields_FinalView] as cf
            ON cf.[Id] = up.[CustomFieldId]
        where CustomFieldID=''5''
            or CustomFieldID=''6''
            or CustomFieldID=''161098''
            or CustomFieldID=''2407692''
            or CustomFieldID=''2694978''
            or CustomFieldID=''2708864''
        ) t1
    group by UserID
), part1 as (
    SELECT
        HASHBYTES(''SHA2_256'', COALESCE(CAST(u.[ID] AS VARCHAR(200)), '''')) AS [Buyer_SKey],
        u.[ID] AS [UserID],
        u.[UserName],
        u.[Email],
        u.[Comment],
        upt.[FirstName],
        upt.[LastName],
        u.[PhoneNumber] AS [Phone],
        upt.[Phone] AS [UserPhone],
        upt.[IsInternational],
        upt.[Reg_Reference],
        upt.[Reg_Referral],
        u.[BillingAddressID],
        badd.[Street1] + '' '' + badd.[Street2] AS [BillingAddress],
        badd.[City] AS [BillingCity],
        badd.[StateRegion] AS [BillingState],
        badd.[ZipPostal] AS [BillingPostalCode],
        bc.[Name] AS [BillingCountry],
        u.[PrimaryAddressID],
        padd.[Street1] + '' '' + padd.[Street2] AS [PrimaryAddress],
        padd.[City] AS [PrimaryCity],
        padd.[StateRegion] AS [PrimaryState],
        padd.[ZipPostal] AS [PrimaryPostalCode],
        pc.[Name] AS [PrimaryCountry],
        u.[BillingCreditCardID],
        c.[ExpirationMonth] AS [CreditCardExpirationMonth],
        c.[ExpirationYear] AS [CreditCardExpirationYear],
        c.[LastFourDigits] AS [CreditCardLastFourDigits],
        c.[AddressID] AS [CreditCardAddressID],
        cadd.[Street1] + '' '' + cadd.[Street2] AS [CreditCardAddress],
        cadd.[City] AS [CreditCardCity],
        cadd.[StateRegion] AS [CreditCardState],
        cadd.[ZipPostal] AS [CreditCardPostalCode],
        cc.[Name] AS [CreditCardCountry],
        u.[Culture],
        u.[IsApproved],
        u.[IsLockedOut],
        u.[Newsletter],
        u.[IsVerified],
        u.[IsActive],
        u.[EmailConfirmed],
        u.[LastLoginDate],
        u.[LastActivityDate],
        u.[CreatedOn] AS [CreatedDate],
        u.[UpdatedOn] AS [UpdatedDate],
        u.[DeletedOn] AS [DeletedDate]
    from [stg].[AH_Users_FinalView] u
    left join UserProperties_temp upt on u.ID=upt.UserID
    left join [stg].[AH_CreditCards_FinalView] c on u.BillingCreditCardID=c.ID
    left join [stg].[AH_Addresses_FinalView] badd on badd.ID=u.BillingAddressID
    left join [stg].[AH_Addresses_FinalView] padd on padd.ID=u.PrimaryAddressID
    left join [stg].[AH_Addresses_FinalView] cadd on cadd.ID=c.AddressID
    left join [stg].[AH_Countries_FinalView] bc on  badd.CountryID=bc.ID
    left join [stg].[AH_Countries_FinalView] pc on  padd.CountryID=pc.ID
    left join [stg].[AH_Countries_FinalView] cc on  cadd.CountryID=cc.ID
    where u.ID not in(
        select distinct(OwnerID) from [stg].[AH_Listings_FinalView]
    )
),
part2 as (
    SELECT
        HASHBYTES(''SHA2_256'', COALESCE(CAST(u.[ID] AS VARCHAR(200)), '''')) AS [Buyer_SKey],
        u.[ID] AS [UserID],
        u.[UserName],
        u.[Email],
        u.[Comment],
        upt.[FirstName],
        upt.[LastName],
        u.[PhoneNumber] AS [Phone],
        upt.[Phone] AS [UserPhone],
        upt.[IsInternational],
        upt.[Reg_Reference],
        upt.[Reg_Referral],
        u.[BillingAddressID],
        badd.[Street1] + '' '' + badd.[Street2] AS [BillingAddress],
        badd.[City] AS [BillingCity],
        badd.[StateRegion] AS [BillingState],
        badd.[ZipPostal] AS [BillingPostalCode],
        bc.[Name] AS [BillingCountry],
        u.[PrimaryAddressID],
        padd.[Street1] + '' '' + padd.[Street2] AS [PrimaryAddress],
        padd.[City] AS [PrimaryCity],
        padd.[StateRegion] AS [PrimaryState],
        padd.[ZipPostal] AS [PrimaryPostalCode],
        pc.[Name] AS [PrimaryCountry],
        u.[BillingCreditCardID],
        c.[ExpirationMonth] AS [CreditCardExpirationMonth],
        c.[ExpirationYear] AS [CreditCardExpirationYear],
        c.[LastFourDigits] AS [CreditCardLastFourDigits],
        c.[AddressID] AS [CreditCardAddressID],
        cadd.[Street1] + '' '' + cadd.[Street2] AS [CreditCardAddress],
        cadd.[City] AS [CreditCardCity],
        cadd.[StateRegion] AS [CreditCardState],
        cadd.[ZipPostal] AS [CreditCardPostalCode],
        cc.[Name] AS [CreditCardCountry],
        u.[Culture],
        u.[IsApproved],
        u.[IsLockedOut],
        u.[Newsletter],
        u.[IsVerified],
        u.[IsActive],
        u.[EmailConfirmed],
        u.[LastLoginDate],
        u.[LastActivityDate],
        u.[CreatedOn] AS [CreatedDate],
        u.[UpdatedOn] AS [UpdatedDate],
        u.[DeletedOn] AS [DeletedDate]
    from [stg].[AH_Users_FinalView] u
    left join UserProperties_temp upt on u.ID=upt.UserID
    left join [stg].[AH_CreditCards_FinalView] c on u.BillingCreditCardID=c.ID
    left join [stg].[AH_Addresses_FinalView] badd on badd.ID=u.BillingAddressID
    left join [stg].[AH_Addresses_FinalView] padd on padd.ID=u.PrimaryAddressID
    left join [stg].[AH_Addresses_FinalView] cadd on cadd.ID=c.AddressID
    left join [stg].[AH_Countries_FinalView] bc on  badd.CountryID=bc.ID
    left join [stg].[AH_Countries_FinalView] pc on  padd.CountryID=pc.ID
    left join [stg].[AH_Countries_FinalView] cc on  cadd.CountryID=cc.ID
    where u.ID in(
        select distinct(UserID) from [stg].[AH_ListingActions_FinalView]
        union
        select distinct(UserID) from [stg].[AH_Watches_FinalView]
        union
        select distinct(UserID) from [stg].[AH_ListingComments_FinalView]
    )
)

select
	[Buyer_SKey],
	[UserID],
	[UserName],
	[Email],
	[Comment],
	[FirstName],
	[LastName],
	[Phone],
	[UserPhone],
	[IsInternational],
	[Reg_Reference],
	[Reg_Referral],
	[BillingAddressID],
	[BillingAddress],
	[BillingCity],
	[BillingState],
	[BillingPostalCode],
	[BillingCountry],
	[PrimaryAddressID],
	[PrimaryAddress],
	[PrimaryCity],
	[PrimaryState],
	[PrimaryPostalCode],
	[PrimaryCountry],
	[BillingCreditCardID],
	[CreditCardExpirationMonth],
	[CreditCardExpirationYear],
	[CreditCardLastFourDigits],
	[CreditCardAddressID],
	[CreditCardAddress],
	[CreditCardCity],
	[CreditCardState],
	[CreditCardPostalCode],
	[CreditCardCountry],
	[Culture],
	[IsApproved],
	[IsLockedOut],
	[Newsletter],
	[IsVerified],
	[IsActive],
	[EmailConfirmed],
	[LastLoginDate],
	[LastActivityDate],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from part1 
union all 
select 
	[Buyer_SKey],
	[UserID],
	[UserName],
	[Email],
	[Comment],
	[FirstName],
	[LastName],
	[Phone],
	[UserPhone],
	[IsInternational],
	[Reg_Reference],
	[Reg_Referral],
	[BillingAddressID],
	[BillingAddress],
	[BillingCity],
	[BillingState],
	[BillingPostalCode],
	[BillingCountry],
	[PrimaryAddressID],
	[PrimaryAddress],
	[PrimaryCity],
	[PrimaryState],
	[PrimaryPostalCode],
	[PrimaryCountry],
	[BillingCreditCardID],
	[CreditCardExpirationMonth],
	[CreditCardExpirationYear],
	[CreditCardLastFourDigits],
	[CreditCardAddressID],
	[CreditCardAddress],
	[CreditCardCity],
	[CreditCardState],
	[CreditCardPostalCode],
	[CreditCardCountry],
	[Culture],
	[IsApproved],
	[IsLockedOut],
	[Newsletter],
	[IsVerified],
	[IsActive],
	[EmailConfirmed],
	[LastLoginDate],
	[LastActivityDate],
	[CreatedDate],
	[UpdatedDate],
	[DeletedDate]
from part2
    ');

  CREATE TABLE "dbo_dbo"."AH_Buyers_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_dbo.AH_Buyers_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_dbo"."AH_Buyers_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_dbo"."AH_Buyers_DM__dbt_tmp_temp_view"
    end


