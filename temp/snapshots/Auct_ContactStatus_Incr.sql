{% snapshot Auct_ContactStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactStatus_InterView]
{% endsnapshot %}