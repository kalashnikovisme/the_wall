# The Wall

The sample Rails application for MRSK deploy.

It includes

* PostgreSQL
* Sidekiq - for background tasks
* AnyCable - for Turbo Rails

# Deploy

Provide all these secrets to the ENV file (but not .env)

| Secret | Description | Source |
| ------------- | ------------- |
|  |  |


# Run locally

## Install

We use [dip](https://github.com/bibendi/dip)

```
dip provision
```

## Run

```
dip up web anycable sidekiq
```
