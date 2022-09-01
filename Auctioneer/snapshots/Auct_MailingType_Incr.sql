{% snapshot Auct_MailingType_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='MailingTypeID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_MailingType_InterView]
{% endsnapshot %}