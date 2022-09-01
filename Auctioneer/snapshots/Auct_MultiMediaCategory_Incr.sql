{% snapshot Auct_MultiMediaCategory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MultiMediaCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MultiMediaCategory_InterView]
{% endsnapshot %}