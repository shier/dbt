{% snapshot Auct_AvailableTrim_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='AvailableTrimID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_AvailableTrim_InterView]
{% endsnapshot %}