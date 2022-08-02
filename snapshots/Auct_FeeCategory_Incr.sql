{% snapshot Auct_FeeCategory_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='FeeCategoryID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_FeeCategory_InterView]
{% endsnapshot %}