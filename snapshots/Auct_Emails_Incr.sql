{% snapshot Auct_Emails_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EmailID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_Emails_InterView]
{% endsnapshot %}