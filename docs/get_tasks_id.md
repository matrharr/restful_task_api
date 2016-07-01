**TaskMeAnything**
----

* **URL**

  v1/tasks/:id


* **Method:**

  `GET`

*  **URL Params**

   **Required:**

   `id=[integer]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
  "id": 1,
  "title": "Mow the lawn",
  "description": "Get gasoline for the lawnmower and mow the backyard Saturday AM",
  "created_at": "2016-06-30T22:56:02.590Z",
  "updated_at": "2016-06-30T22:56:02.590Z"
}`

* **Error Response:**

  Bad request
  * **Code:** 404 <br />


* **Sample Call:**

  `curl -X GET http://taskmeanything.herokuapp.com/v1/tasks/1`
