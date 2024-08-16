# What

This is a proof-of-concept for authentication using Passwordless gem only that allows user-choice between:
• Email
• SMS

Step 1
![passwordless-example1](https://github.com/user-attachments/assets/0f953a2f-5295-48f3-a53d-d6048aedf0be)


Step 2

![PasswordlessExample 2024-08-16 15-42-05](https://github.com/user-attachments/assets/2a07ff24-ed72-4160-920b-56718fb32678)


As well, it modifies the passwordless sessions_controller to make users on the fly, if they don't exist.


# About

Node + Ruby versions are in `.node-version` and `.ruby-version`, respectively.

# Setup

`bin/setup`

# Start Rails

`bin/dev`

# Run Specs

run with `bin/rake`


# Your `.env.local` file must contain
* credentials not included *
```
TWILIO_ACCOUNT_SID=
TWILIO_AUTH_TOKEN=
TWILIO_SENDER_NUMBER=
SENDGRID_SMTP_ADDRESS=smtp.sendgrid.net
SENDGRID_SMTP_PORT=587
SENDGRID_SMTP_PASSWORD=
DEFAULT_FROM_ADDRESS=support@domain.com
```

`SENDGRID_SMTP_PASSWORD` is also known as the API key which you get from the Sendgrid interface.
`TWILIO_SENDER_NUMBER` should begin with `+1` and be a valid and approved sender number on your associated Twilio account. 
