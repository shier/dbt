{% snapshot Auct_ContactRequest_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactRequestID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactRequest_InterView]
{% endsnapshot %}