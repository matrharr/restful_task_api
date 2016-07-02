**TaskMeAnything**
----

*This route will create a new user and return a JSON of the newly created user. Simply make a POST request and specify the required fields to create the user.*


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

  * **Code:** 400 Bad Request <br />
    **Content:** `{
  "errors": {
    "name": [
      "can't be blank",
      "is too short (minimum is 2 characters)"
    ]
  }
}`

* **Sample Call:**

  `curl -X POST -d "user[name]=Matt&user[email]=matrharr@gmail.com" http://taskmeanything.herokuapp.com/v1/users`

* **Notes:**

