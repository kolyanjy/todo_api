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
                  "email": "lorina@upton.org",
                  "password": "Q0yFqMjWxE2wQ4"
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
                "csrf": "qdsCWKexwj4MYHRmrJ6aEvg0+ILdKtlSoV3fzseBO9cA5Asme89R3R8TOUYhJNXZid83+XVp2mvaQjfPfHGE4g==",
                "access": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1Njc1Mzg4MzYsInVzZXJfaWQiOjQ1MTMsInVpZCI6IjdhMGZlMDgzLTExNzktNDQyYi1iMzI1LTEyY2JkZDZjNGMzZiIsImV4cCI6MTU2NzUzODgzNiwicnVpZCI6IjI1Nzk3ZmYwLTM3M2EtNDI1ZC1hNmNiLTFjZGE3YjIxM2M1YyJ9.tVC-lYMUkGyVvIVMXSrlzGbW_YCI4qnFcp1c1RlAZzw",
                "access_expires_at": "2019-09-03T22:27:16.000+03:00",
                "refresh": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1Njc1Mzg4MzYsInVpZCI6IjI1Nzk3ZmYwLTM3M2EtNDI1ZC1hNmNiLTFjZGE3YjIxM2M1YyIsImV4cCI6MTU2ODE0MDAzNn0.TZ1yXZU_3FJHIPz6VS_kK6OCH6TsNHdjH58oDuZ-ao4",
                "refresh_expires_at": "2019-09-10T21:27:16.000+03:00"
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
                  "password": "HhAhAwXqOe"
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


+ Request returns collection of user`s projects
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
                  "id": "4318",
                  "type": "projects",
                  "attributes": {
                    "name": "Norbert Rohan DDS"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "4424",
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
    + id: `4322` (number, required)

+ Request returns one project
**GET**&nbsp;&nbsp;`/api/v1/projects/4322`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4322",
                "type": "projects",
                "attributes": {
                  "name": "Dr. Luciana Wisoky"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "4428",
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

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/4327`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/4328`

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
                  "name": "Willie Gottlieb"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4332",
                "type": "projects",
                "attributes": {
                  "name": "Willie Gottlieb"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "4436",
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
    + id: `4337` (number, required)

+ Request returns one updated project
**PATCH**&nbsp;&nbsp;`/api/v1/projects/4337`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "Maren Smitham"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4337",
                "type": "projects",
                "attributes": {
                  "name": "Maren Smitham"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "4442",
                      "type": "users"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/projects/4339`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/4341`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/projects/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/projects/4346`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `4347` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/projects/4347`

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
**GET**&nbsp;&nbsp;`/api/v1/projects/4351`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/4354`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "project",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

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
                  "email": "mickey.langosh@rowe.net",
                  "password": "Z0iIqMxG",
                  "password_confirmation": "Z0iIqMxG"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4512",
                "type": "users",
                "attributes": {
                  "email": "mickey.langosh@rowe.net",
                  "created_at": "2019-09-03T18:27:16.249Z",
                  "updated_at": "2019-09-03T18:27:16.249Z"
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
                  "email": "demetrice.pagac@keeling.info",
                  "password": "L54fZw9PgNcO",
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

# Group Tasks


## Tasks [/tasks]


### Get tasks [GET /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `4355` (number, required)

+ Request returns collection of project's tasks
**GET**&nbsp;&nbsp;`/api/v1/projects/4355/tasks`

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
                  "id": "3366",
                  "type": "tasks",
                  "attributes": {
                    "name": "Sulema Klein IV",
                    "deadline": "2019-09-10T00:00:00.000Z",
                    "complete": false,
                    "position": 2
                  },
                  "relationships": {
                    "project": {
                      "data": {
                        "id": "4355",
                        "type": "projects"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/projects/4357/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get task [GET /api/v1/tasks/:id]

+ Parameters
    + id: `3370` (number, required)

+ Request returns one task
**GET**&nbsp;&nbsp;`/api/v1/tasks/3370`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3370",
                "type": "tasks",
                "attributes": {
                  "name": "Myong Franecki IV",
                  "deadline": "2019-09-10T00:00:00.000Z",
                  "complete": false,
                  "position": 2
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "4359",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/3375`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/tasks/3376`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a task [POST /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `4367` (number, required)

+ Request returns one task
**POST**&nbsp;&nbsp;`/api/v1/projects/4367/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "Carrie Kirlin",
                  "deadline": "2019-09-10"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3380",
                "type": "tasks",
                "attributes": {
                  "name": "Carrie Kirlin",
                  "deadline": "2019-09-10T00:00:00.000Z",
                  "complete": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "4367",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/projects/4369/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
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
**POST**&nbsp;&nbsp;`/api/v1/projects/4371/tasks`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Update a task [PUT /api/v1/tasks/:id]

+ Parameters
    + id: `3385` (number, required)

+ Request returns one updated task
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3385`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "lolkek"
                }
              }
            }

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3385",
                "type": "tasks",
                "attributes": {
                  "name": "lolkek",
                  "deadline": "2019-09-10T00:00:00.000Z",
                  "complete": false,
                  "position": 2
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "4373",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3387`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
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
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3389`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3394`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Delete a task [DELETE /api/v1/tasks/:id]

+ Parameters
    + id: `3395` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/3395`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/3399`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/3402`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "task",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

### Change up position of task [PATCH /api/v1/tasks/:id/position_up]

+ Parameters
    + id: `3403` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3403/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3403",
                "type": "tasks",
                "attributes": {
                  "name": "Deane Bruen I",
                  "deadline": "2019-09-10T00:00:00.000Z",
                  "complete": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "4391",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3410/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3412/position_up`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Change down position of task [PATCH /api/v1/tasks/:id/position_down]

+ Parameters
    + id: `3415` (number, required)

+ Request returns task with changed position
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3415/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3415",
                "type": "tasks",
                "attributes": {
                  "name": "Dr. Cher Emard",
                  "deadline": "2019-09-10T00:00:00.000Z",
                  "complete": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "4399",
                      "type": "projects"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/0/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3422/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**PATCH**&nbsp;&nbsp;`/api/v1/tasks/3424/position_down`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

# Group Uploaders


## uploader [/api/v1/image/upload]


### Upload a image [POST /api/v1/image/upload]


+ Request returns image metadata
**POST**&nbsp;&nbsp;`/api/v1/images/upload/`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: multipart/form-data; boundary=----------XnJLe9ZIbbGUYtzPQJ16u1

    + Body

            {"file":{"tempfile":"#\u003cFile:0x00005620fcd74f60\u003e","original_filename":"1.png","content_type":"image/png","headers":"Content-Disposition: form-data; name=\"file\"; filename=\"1.png\"\r\nContent-Type: image/png\r\nContent-Length: 26544\r\n"}}

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": "735a0107fe027b8d0e8d2bdb4ccebd9d.png",
              "storage": "cache",
              "metadata": {
                "filename": "1.png",
                "size": 26544,
                "mime_type": "image/png"
              }
            }

# Group comments


## comments [/comments]


### Get comments [GET /api/v1/projects/:project_id/comments]

+ Parameters
    + task_id: `3340` (number, required)

+ Request returns collection of task's comments
**GET**&nbsp;&nbsp;`/api/v1/tasks/3340/comments`

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
                  "id": "1098",
                  "type": "comment",
                  "attributes": {
                    "name": "Mellie Rowe Jr.",
                    "image_url": null
                  },
                  "relationships": {
                    "task": {
                      "data": {
                        "id": "3340",
                        "type": "tasks"
                      }
                    }
                  }
                }
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/tasks/3342/comments`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Get comment [GET /api/v1/comments/:id]

+ Parameters
    + id: `1102` (number, required)

+ Request returns one comment
**GET**&nbsp;&nbsp;`/api/v1/comments/1102`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 200

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1102",
                "type": "comment",
                "attributes": {
                  "name": "Ms. Neil Kshlerin",
                  "image_url": null
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "3344",
                      "type": "tasks"
                    }
                  }
                }
              }
            }

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/comments/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns status not found
**GET**&nbsp;&nbsp;`/api/v1/comments/1107`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/api/v1/comments/1108`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Create a comment [POST /api/v1/projects/:project_id/comments]

+ Parameters
    + task_id: `3352` (number, required)

+ Request returns one comment
**POST**&nbsp;&nbsp;`/api/v1/tasks/3352/comments`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "comment",
                  "name": "Eric Abbott"
                }
              }
            }

+ Response 201

    + Headers

            Content-Type: application/vnd.api+json; charset=utf-8

    + Body

            {
              "data": {
                "id": "1112",
                "type": "comment",
                "attributes": {
                  "name": "Eric Abbott",
                  "image_url": null
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "3352",
                      "type": "tasks"
                    }
                  }
                }
              }
            }

+ Request returns errors for unprocessable entity
**POST**&nbsp;&nbsp;`/api/v1/tasks/3354/comments`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "comment",
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
**POST**&nbsp;&nbsp;`/api/v1/tasks/3356/comments`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

### Delete a comment [DELETE /api/v1/comments/:id]

+ Parameters
    + id: `1117` (number, required)

+ Request returns no content status
**DELETE**&nbsp;&nbsp;`/api/v1/comments/1117`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 204

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/comments/0`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 404

    + Headers

            Content-Type: text/html

+ Request returns unauthorized status
**DELETE**&nbsp;&nbsp;`/api/v1/comments/1121`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

+ Response 401

    + Headers

            Content-Type: text/html

+ Request returns status not found
**DELETE**&nbsp;&nbsp;`/api/v1/comments/1124`

    + Headers

            Accept: application/vnd.api+json
            Content-Type: application/vnd.api+json

    + Body

            {
              "data": {
                "attributes": {
                  "type": "comment",
                  "name": "asdasdasd"
                }
              }
            }

+ Response 404

    + Headers

            Content-Type: application/vnd.api+json
