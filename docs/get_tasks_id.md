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

* **Sample Call:**

  `curl -X GET http://localhost:3000/v1/tasks/1`
