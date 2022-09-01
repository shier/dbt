{% snapshot Auct_EmailNotifications_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='EmailNotificationID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_EmailNotifications_InterView]
{% endsnapshot %}