{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[UserId] [UserID],
	[SocialProviderId] [SocialprovIDErID],
	cast([SocialProviderKey] as nvarchar(4000)) [SocialprovIDErKey],
	[IsActive] [IsActive]
From stg.[CC_LoginSocial_Raw]
