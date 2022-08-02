{% snapshot Auct_ContactConreqAuction_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ContactConreqAuction_InterView]
{% endsnapshot %}