{% snapshot Auct_Contactcontact_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactcontactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Contactcontact_InterView]
{% endsnapshot %}