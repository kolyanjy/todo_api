Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/login]


+ Request authenticate and return user
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "kelley_ritchie@powlowskiconsidine.biz",
                  "password": "FrDp2uLb18Wc"
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
                "csrf": "W3YF5aZHtD8o3sXW8COGxR7FK72BE0MN91+5xBGfEvQnBPaGooWx1iBXtP28exjBw0kVDDi7FuEBOMws1cTqwQ==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY1MDAxMjUsInVzZXJfaWQiOjIwNSwidWlkIjoiOWE5OGQ3NzItOTRmOC00NjUwLWI1ODItZjAzOWNhY2ZkY2Q1IiwiZXhwIjoxNTY2NTAwMTI1fQ.-uibz1aGmcwius6gf09qnDNobI64b1LZ7hHN3lbMsDM",
                "access_expires_at": "2019-08-22T21:55:25.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY1MDAxMjUsInVpZCI6IjBiMDQ2MTA0LTE1MDktNDZkMi04NWVmLTQ3YmIzM2RjNmIwZSIsImV4cCI6MTU2NzEwMTMyNX0.t30ulJ1lmgXzsB__OCovmJ1ftgu40WvScSxUnh0AOr0",
                "refresh_expires_at": "2019-08-29T20:55:25.000+03:00"
              }
            }

+ Request return unauthorized status
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "lol@kek.ru",
                  "password": "J8BhLjOaFhL"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/vnd.api+json

### Destroy a session [DELETE /api/v1/users/login]


+ Request delete session with valid token
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request delete session with invalid token
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request create and return user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "karrie_west@barton.com",
                  "password": "Xw88Hw14L5E2C",
                  "password_confirmation": "Xw88Hw14L5E2C"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "208",
                "type": "users",
                "attributes": {
                  "email": "karrie_west@barton.com",
                  "created_at": "2019-08-22T17:55:25.141Z",
                  "updated_at": "2019-08-22T17:55:25.141Z",
                  "password": "Xw88Hw14L5E2C"
                }
              }
            }

+ Request return errors for user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "alphonse@breitenberg.biz",
                  "password": "BeT02933GdV",
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
