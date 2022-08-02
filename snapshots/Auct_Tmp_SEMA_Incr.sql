{% snapshot Auct_Tmp_SEMA_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='Email',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Tmp_SEMA_InterView]
{% endsnapshot %}