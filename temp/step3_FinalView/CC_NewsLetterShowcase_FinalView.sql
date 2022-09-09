{{ config(materialized='view',schema='stg')}}
Select
	[IsActive],[NewsLetterissueFK],[ListingFK],[ShowcaseSequence],[CreateDateUTC],[ModifyDateUTC] 
From [CC_NewsLetterShowcase_Incr] 
Where [dbt_valid_to] is null