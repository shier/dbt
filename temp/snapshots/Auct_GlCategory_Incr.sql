{% snapshot Auct_GlCategory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='GlCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_GlCategory_InterView]
{% endsnapshot %}