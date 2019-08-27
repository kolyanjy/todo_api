Api todo list for RubyGarage course

# Group Login


## Login [/login]


### Create a session [POST /api/v1/users/session]


+ Request authenticate and return user
**POST**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "user",
                  "email": "hilde@herzog.org",
                  "password": "7j2cCiU973I0K"
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
                "csrf": "PDQu2lUCanOM+XU7lG9WAKkw98PGqe2yaR1hx7tNuh4JbvTFyeui0TgeLIzP13qHmj9IaJmqm82ypVUAH3qhig==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MDM2NTIsInVzZXJfaWQiOjc1NywidWlkIjoiYzBiZWM2ZjMtY2RkZi00NmNhLWIxZTctOGE5ZDExZTQ2OTI3IiwiZXhwIjoxNTY2OTAzNjUyLCJydWlkIjoiODBkMWJiNzUtMTk5MS00NzkxLTg1NDAtYzdkOGViOGUyNmIxIn0.o4qttmIfM-p1nClAahOBG5u3IV81nyD8SiOc_n05AB4",
                "access_expires_at": "2019-08-27T14:00:52.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MDM2NTIsInVpZCI6IjgwZDFiYjc1LTE5OTEtNDc5MS04NTQwLWM3ZDhlYjhlMjZiMSIsImV4cCI6MTU2NzUwNDg1Mn0.594s6prMArvUWwNNAS_Y3_7N8c71UK6hju8x8r2JICU",
                "refresh_expires_at": "2019-09-03T13:00:52.000+03:00"
              }
            }

+ Request return unauthorized status
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
                  "password": "I95x39Pt8b"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/vnd.api+json

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
                  "email": "olen_keler@king.co",
                  "password": "RaHf2o9j4c8"
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
                "csrf": "ee4tFmGH7jtrEmhJ2D/Yh3iEnQQdeXZZ2K1MvgCSEVPow6qAiuwcOFtz1Px5PTLR/ob7o6M8e2FeliiUGLO/kQ==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MDM2NTIsInVzZXJfaWQiOjc2MSwidWlkIjoiZTdiZjVmZjktNzY3My00ZjUyLTk1NzQtZGMyMWE5MzlkZDJmIiwiZXhwIjoxNTY2OTAzNjUyLCJydWlkIjoiMGViNWZhY2QtYTM4YS00MDE1LWE5OTItM2NjZDQ1ZjBhMThiIn0.oNZZWN0hqdaNFSzWKZSzGA5igGBKbV22P1n-HTEuhxU",
                "access_expires_at": "2019-08-27T14:00:52.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MDM2NTIsInVpZCI6IjBlYjVmYWNkLWEzOGEtNDAxNS1hOTkyLTNjY2Q0NWYwYTE4YiIsImV4cCI6MTU2NzUwNDg1Mn0.hLKCoL8yYvakYWhp5PhDdkNTHZnEZgAaJ8R2krSw7jM",
                "refresh_expires_at": "2019-09-03T13:00:52.000+03:00"
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
                  "password": "4t5uF675Rh"
                }
              }
            }

+ Response 401

    + Headers

            Content-Type: application/vnd.api+json

### Destroy a session [DELETE /api/v1/users/session]


+ Request delete session with valid token
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request return unauthorized status
**DELETE**&nbsp;&nbsp;`/api/v1/users/session`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

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

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request return collection of projects
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "271",
                  "type": "project",
                  "attributes": {
                    "name": "Carisa Auer II"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "748",
                        "type": "user"
                      }
                    }
                  }
                }
              ]
            }

### Get project [GET /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request return one project
**GET**&nbsp;&nbsp;`/api/v1/projects/272`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "272",
                "type": "project",
                "attributes": {
                  "name": "Teodoro Franecki"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "749",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request return status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/100`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]

+ Parameters
    + name: `New_project_name` (string, required)

+ Request return one project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "lolkek",
                  "user_id": 751
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "275",
                "type": "project",
                "attributes": {
                  "name": "lolkek"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "751",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request return status not found
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "",
                  "user_id": 752
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
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name can't be blank",
                  "code": "blank"
                },
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name is too short (minimum is 5 characters)",
                  "code": "too_short"
                }
              ]
            }

### Update a project [PUT /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)
    + name: `New+project+name` (string, required)

+ Request return one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/277`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "lolkek",
                  "user_id": 753
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "277",
                "type": "project",
                "attributes": {
                  "name": "lolkek"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "753",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request return errors for entitie
**PATCH**&nbsp;&nbsp;`/api/v1/projects/278`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "",
                  "user_id": 754
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
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name can't be blank",
                  "code": "blank"
                },
                {
                  "status": "422",
                  "source": {
                    "pointer": "/data/attributes/name"
                  },
                  "title": "Unprocessable Entity",
                  "detail": "Name is too short (minimum is 5 characters)",
                  "code": "too_short"
                }
              ]
            }

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request return status success
**DELETE**&nbsp;&nbsp;`/api/v1/projects/279`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request return status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/100`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

# Group Registration


## Registration [/Registration]


### Create user [POST /api/v1/users/registration]


+ Request creates and returns user
**POST**&nbsp;&nbsp;`/api/v1/users/registration`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "email": "omer@oharastiedemann.name",
                  "password": "D02sRr09S6U38sHp",
                  "password_confirmation": "D02sRr09S6U38sHp"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "760",
                "type": "users",
                "attributes": {
                  "email": "omer@oharastiedemann.name",
                  "created_at": "2019-08-27T10:00:52.807Z",
                  "updated_at": "2019-08-27T10:00:52.807Z"
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
                  "email": "akiko.hermann@gutmann.io",
                  "password": "ZvP115L1Yc0h",
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
