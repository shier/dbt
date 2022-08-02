{% snapshot Auct_AvailableModel_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableModelID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableModel_InterView]
{% endsnapshot %}