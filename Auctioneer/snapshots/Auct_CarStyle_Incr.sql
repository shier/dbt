{% snapshot Auct_CarStyle_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='CarStyleID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_CarStyle_InterView]
{% endsnapshot %}