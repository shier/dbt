{{ config(materialized='table',schema='dbo')}}
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Message] as nvarchar(4000)) [Message],
	cast([ID] as int) [Id] 
From stg.[AH_Contactus_FinalView]