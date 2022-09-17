{{ config(materialized='table',schema='dbo')}}
Select
	cast([AssignmentID] as int) [ASSIGNMENTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressStatusID] as int) [ADDRESSSTATUSID],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([IsDefault] as char(1)) [ISDEFAULT],
	cast([Adddescr] as varchar(8000)) [ADDDESCR],
	cast([CompanyID] as int) [COMPANYID],
	cast([AddressTypeID] as int) [ADDRESSTYPEID] 
From stg.[Auct_AddressAssignments_FinalView]