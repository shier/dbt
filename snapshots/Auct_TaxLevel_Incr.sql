{% snapshot Auct_TaxLevel_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TaxLevelID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_TaxLevel_InterView]
{% endsnapshot %}