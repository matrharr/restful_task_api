**TaskMeAnything**
----

* **URL**

  v1/users

* **Method:**

  `POST`

*  **URL Params**

   **Required:**

   `name=[string]`
   `email=[string]`

* **Data Params**

  `{name='mynamestring', email='avalidemailaddress@gmail.com'}`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
  "id": 3,
  "facebook_id": null,
  "name": "Jim",
  "email": "jim@gmail.com",
  "created_at": "2016-07-01T00:05:31.138Z",
  "updated_at": "2016-07-01T00:05:31.138Z"
}`

* **Error Response:**

  * **Code:** 422 UNAUTHORIZED <br />
    **Content:** `{
  "errors": {
    "name": [
      "can't be blank",
      "is too short (minimum is 2 characters)"
    ]
  }
}`

* **Sample Call:**

  `curl -X POST -d "name=Matt&email=matrharr@gmail.com" http://localhost:3000/v1/users`

* **Notes:**

