{% snapshot Auct_KeyControl_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='KeyControlID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_KeyControl_InterView]
{% endsnapshot %}