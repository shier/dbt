{% snapshot Auct_CarTrim_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarTrimID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarTrim_InterView]
{% endsnapshot %}