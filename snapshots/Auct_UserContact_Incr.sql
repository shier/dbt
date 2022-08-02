{% snapshot Auct_UserContact_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='UserContactID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_UserContact_InterView]
{% endsnapshot %}