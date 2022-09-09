{% snapshot Auct_Contact_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='ContactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Contact_InterView]
{% endsnapshot %}