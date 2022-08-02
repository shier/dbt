{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Message] as nvarchar(4000)) [Message]
From stg.[AH_Contactus_Raw]
