{% snapshot Auct_PreferredContactMethod_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='PreferredContactMethodID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_PreferredContactMethod_InterView]
{% endsnapshot %}