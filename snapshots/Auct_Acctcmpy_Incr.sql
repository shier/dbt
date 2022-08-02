{% snapshot Auct_Acctcmpy_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Acctcmpy_InterView]
{% endsnapshot %}