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
                "email": "derrick.mraz@mcglynn.net",
                "password": "Q9M9A1VzYi"
              }
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "meta": {
                "csrf": "S0u3JY7C3xiRVL/f6Q9yVAoJ3r3aD+gYzQt6/d+bGWJL6+6/cRg4IiNzr/i40HdsxcAFmpXk4HYF3hqNafzylg==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjYyOTcyOTUsInVzZXJfaWQiOjIwNCwidWlkIjoiMjI0NzIyNGItMmUzMy00OTQ0LWIwMjMtYjE2YjNiMTkzYmRjIiwiZXhwIjoxNTY2Mjk3Mjk1fQ.1vcQ-mQP29P9TX61y7HbOswBHBdpgsVUlMl9aoIc-fs",
                "access_expires_at": "2019-08-20T13:34:55.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjYyOTcyOTUsInVpZCI6IjE0NGI3ZWYwLTM1M2MtNGI3MC04NzYxLWFkNDMzYzYwYzk4NSIsImV4cCI6MTU2Njg5ODQ5NX0.3Oh33o3huG1cTrzm7mrO5QDoa_r_WeoqFDlCI9OeV6o",
                "refresh_expires_at": "2019-08-27T12:34:55.000+03:00"
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
                "email": "saul.larkin@goodwinharvey.neu",
                "password": "KeEmX80lL8P"
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
