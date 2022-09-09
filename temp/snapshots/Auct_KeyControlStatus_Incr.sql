{% snapshot Auct_KeyControlStatus_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='KeyControlStatusID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_KeyControlStatus_InterView]
{% endsnapshot %}