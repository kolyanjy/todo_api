Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/session]


+ Request returns user
**POST**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "wilton@vonrueden.info",
                  "password": "KoXdKh9jVoJ2"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": null,
              "meta": {
                "csrf": "c7XO+Ja34xS+Ys4g1Dc1DqrnVyP9i1+Ynwiz/MxZTNwlR5slWSQootWurA4F54rwaEO0jNxwhQOUvEdYj5X7cA==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY1ODUxMzQsInVzZXJfaWQiOjYwNywidWlkIjoiZmY3OTQ0ZjctMWFhMC00MTg2LTgxNDEtOTE5YTdhMjEwMGI5IiwiZXhwIjoxNTY2NTg1MTM0LCJydWlkIjoiOWMzMmE5NmEtYTU3YS00YjRhLWFjMGUtYmZlNmVhNjQxOGY4In0.UY6181LHkUxdlGuznxfzgpdyPHHUz2Y012pRS6wma2I",
                "access_expires_at": "2019-08-23T21:32:14.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY1ODUxMzQsInVpZCI6IjljMzJhOTZhLWE1N2EtNGI0YS1hYzBlLWJmZTZlYTY0MThmOCIsImV4cCI6MTU2NzE4NjMzNH0.o-QT6Vo31eAb_hQoRd1C2sH3UOBEdHdyX2ksMzITE9Q",
                "refresh_expires_at": "2019-08-30T20:32:14.000+03:00"
              }
            }

+ Request returns unauthorized status
**POST**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "lol@kek.ru",
                  "password": "KnT3C3R8Ym3t95J"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/vnd.api+json

### Destroy a session [DELETE /api/v1/users/session]


+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns unauthorized status
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request creates and return user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "carlyn@williamson.name",
                  "password": "PpMaZ12uGmH9OrRs",
                  "password_confirmation": "PpMaZ12uGmH9OrRs"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "606",
                "type": "users",
                "attributes": {
                  "email": "carlyn@williamson.name",
                  "created_at": "2019-08-23T17:32:14.201Z",
                  "updated_at": "2019-08-23T17:32:14.201Z"
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "josue.schmitt@bode.org",
                  "password": "N0197g3636K2Kz4",
                  "password_confirmation": "lol"
                }
              }
            }

+ Response 422

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "status": "422",
                  "source": {
                    "pointer": ""
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Password confirmation doesn't match Password",
                  "code": "confirmation"
                }
              ]
            }
