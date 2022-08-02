{% snapshot Auct_AvailableStyle_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableStyleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableStyle_InterView]
{% endsnapshot %}