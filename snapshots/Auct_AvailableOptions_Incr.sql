{% snapshot Auct_AvailableOptions_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableOptionsID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableOptions_InterView]
{% endsnapshot %}