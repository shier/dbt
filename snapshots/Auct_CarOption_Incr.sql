{% snapshot Auct_CarOption_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarOptionID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarOption_InterView]
{% endsnapshot %}