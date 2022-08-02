create view "stg"."CC_NewsLetterShowcase_FinalView__dbt_tmp" as
    
Select
	[IsActive],[NewsLetterissueFK],[ListingFK],[ShowcaseSequence],[CreateDateUTC],[ModifyDateUTC] 
From [CC_NewsLetterShowcase_Incr]
