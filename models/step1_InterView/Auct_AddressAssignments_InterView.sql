{{ config(materialized='view',schema='stg')}}
Select
	[ASSIGNMENTID] [AssignmentID],
	[ADDRESSID] [AddressID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ADDRESSSTATUSID] [AddressStatusID],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ISDEFAULT] as nvarchar(4000)) [IsDefault],
	cast([ADDDESCR] as nvarchar(4000)) [Adddescr],
	[COMPANYID] [CompanyID],
	[ADDRESSTYPEID] [AddressTypeID]
From stg.[Auct_AddressAssignments_Raw]
