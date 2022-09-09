{% snapshot Auct_SMSNotificationBit_Incr %}
	{{
		config(
			target_schema='stg',
			strategy='check',
			unique_key='NotificationBitID',
			check_cols='all'
		)
	}}
	SELECT * from stg.[Auct_SMSNotificationBit_InterView]
{% endsnapshot %}