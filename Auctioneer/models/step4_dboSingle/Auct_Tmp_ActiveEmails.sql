{{ config(materialized='table',schema='dbo')}}
Select
	cast([Email] as nvarchar(4000)) [email],
	cast([First_Name] as nvarchar(4000)) [first_name],
	cast([Last_Name] as nvarchar(4000)) [last_name],
	cast([Ongage_Status] as nvarchar(4000)) [ongage_status] 
From stg.[Auct_Tmp_ActiveEmails_FinalView]