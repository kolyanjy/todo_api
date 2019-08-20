Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/login]


+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "data": {
                "type": "user",
                "email": "charolette@upton.name",
                "password": "DiSnOxEk662aU"
              }
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "meta": {
                "csrf": "6oR852J74/1eGrzbd/XdvoBv1Ezh+FHITkGkq9kdSP5Vs82GrklqZomh9Kb4FZmnlY8D7zigia/aDDYErKDYtQ==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjYyOTc1MzMsInVzZXJfaWQiOjIwOCwidWlkIjoiMmY1NmUwM2MtMzUyYy00MDk0LTk0YmYtY2I2YjNiYzA5OWQ4IiwiZXhwIjoxNTY2Mjk3NTMzfQ.-woeBR2EcO_fQXg7xTP5o9il1MK_mTXyZHMoGkZo_LE",
                "access_expires_at": "2019-08-20T13:38:53.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjYyOTc1MzMsInVpZCI6ImJlOWUwOWIyLTg3ZTQtNDA1ZC1hZTQyLWQ0Y2ZlMTE4ZmRiMyIsImV4cCI6MTU2Njg5ODczM30.USjded1OmjHWDICmh7XLOhiPZn4rYgz7BxQE0EU6DFI",
                "refresh_expires_at": "2019-08-27T12:38:53.000+03:00"
              }
            }

+ Request when not found
**POST**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "data": {
                "type": "user",
                "email": "jan@yundt.namf",
                "password": "RiP95wB6TkPh4d2"
              }
            }

+ Response 401

    + Headers

            Content-Type: application/json

### Destroy a session [DELETE /api/v1/users/login]


+ Request when destroy a session
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when destroy a session
**DELETE**&nbsp;&nbsp;`/api/v1/users/login`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            data[email]=augustine%40westdickinson.com&data[password]=1bXnK726L9Cz&data[password_confirmation]=1bXnK726L9Cz

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "211",
                "type": "users",
                "attributes": {
                  "email": "augustine@westdickinson.com",
                  "created_at": "2019-08-20T09:38:53.085Z",
                  "updated_at": "2019-08-20T09:38:53.085Z"
                }
              }
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            data[email]=julian.wehner%40hilpertframi.name&data[password]=Au990oM2C7Q&data[password_confirmation]=lol

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": {
                "password_confirmation": [
                  "doesn't match Password"
                ]
              }
            }
