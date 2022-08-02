{% snapshot Auct_Lead_Categories_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Lead_Category_ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Lead_Categories_InterView]
{% endsnapshot %}