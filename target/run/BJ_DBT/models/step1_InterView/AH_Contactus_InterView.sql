create view "stg"."AH_Contactus_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Email] as nvarchar(4000)) [Email],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Message] as nvarchar(4000)) [Message]
From stg.[AH_Contactus_Raw]
