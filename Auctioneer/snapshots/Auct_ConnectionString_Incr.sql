{% snapshot Auct_ConnectionString_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='TypeName',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_ConnectionString_InterView]
{% endsnapshot %}