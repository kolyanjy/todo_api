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
                  "email": "darlene_ullrich@lubowitzkris.org",
                  "password": "FrCaFi55A"
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
                "csrf": "sBvk9wlb00LAlvum7dyRcT08VlE6s8MVa57hPXY22G00Q9+ZBrPEfarjNAl8sV1HLwDeE2qpjTvmZg2kJS9BMQ==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MjA4MjMsInVzZXJfaWQiOjExNTAsInVpZCI6ImM5YzY5ZGYzLTQ2NzYtNDg3Zi05MDg2LTk0MjA4YjUzOWNiMSIsImV4cCI6MTU2NjkyMDgyMywicnVpZCI6ImU3YmFhMjhhLTMzODgtNGI2Yy04MDE0LTY4M2E4MGUxZDFhMyJ9.jXv25pkWG1NFP9G34frzWwXndEzDydOh7t67mkRV6Vs",
                "access_expires_at": "2019-08-27T18:47:03.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NjY5MjA4MjMsInVpZCI6ImU3YmFhMjhhLTMzODgtNGI2Yy04MDE0LTY4M2E4MGUxZDFhMyIsImV4cCI6MTU2NzUyMjAyM30.TiKBH7ZGNOBQMHMx0MX1jihhDgVDVILL3gcfDHr9e6w",
                "refresh_expires_at": "2019-09-03T17:47:03.000+03:00"
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
                  "password": "FqY40eI5In7"
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

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request returns collection of projects
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
                  "id": "579",
                  "type": "projects",
                  "attributes": {
                    "name": "Jerri Cruickshank"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "1135",
                        "type": "users"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get project [GET /api/v1/projects/:id]

+ Parameters
    + id: `581` (number, required)

+ Request returns one project
**GET**&nbsp;&nbsp;`/api/v1/projects/581`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "581",
                "type": "projects",
                "attributes": {
                  "name": "Mr. Shannon Barton"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "1137",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/583`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a project [POST /api/v1/projects]


+ Request returns one project
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Ivelisse Romaguera"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "585",
                "type": "projects",
                "attributes": {
                  "name": "Ivelisse Romaguera"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "1140",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": ""
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

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Update a project [PUT /api/v1/projects/:id]

+ Parameters
    + id: `588` (number, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/588`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Donnie Lindgren IV"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "588",
                "type": "projects",
                "attributes": {
                  "name": "Donnie Lindgren IV"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "1143",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/589`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": ""
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

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/590`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `591` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/591`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/593`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

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
                  "email": "jong_dicki@shanahanschamberger.co",
                  "password": "MfXwLkQ7",
                  "password_confirmation": "MfXwLkQ7"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1149",
                "type": "users",
                "attributes": {
                  "email": "jong_dicki@shanahanschamberger.co",
                  "created_at": "2019-08-27T14:47:03.133Z",
                  "updated_at": "2019-08-27T14:47:03.133Z"
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
                  "email": "michaele.prosacco@bogisich.co",
                  "password": "0rOdOgGoHq6m1",
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
