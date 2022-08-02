{% snapshot Auct_ContactHistory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactHistoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactHistory_InterView]
{% endsnapshot %}