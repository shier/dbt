{% snapshot Auct_ContactType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactType_InterView]
{% endsnapshot %}