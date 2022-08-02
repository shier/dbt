{% snapshot Auct_Phone_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PhoneID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Phone_InterView]
{% endsnapshot %}