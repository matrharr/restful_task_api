**Title**
----

* **URL**

  v1/tasks/:id

* **Method:**

  `PUT`

*  **URL Params**

   **Required:**

   `title=[string]`
   `description=[string]`

* **Data Params**

  `{title:'Learn React', description:'Sit down and start learning!'}`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
  "id": 1,
  "title": "Learn React",
  "description": "Sit down and start learning react!",
  "created_at": "2016-06-30T22:56:02.590Z",
  "updated_at": "2016-07-01T00:16:38.687Z"
}`

* **Error Response:**

  * **Code:** 400 Bad Request <br />
    **Content:** `{
  "errors": {
    "user_id": [
      "can't be blank"
    ]
  }
}`

* **Sample Call:**

  `curl -X PUT -d "title=Learn React&description=Sit down and start learning react!" http://taskmeanything.herokuapp.com/v1/tasks


