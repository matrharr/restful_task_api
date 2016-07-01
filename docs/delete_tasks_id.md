**Title**
----


* **URL**

  v1/tasks/:id

* **Method:**

  `DELETE`

*  **URL Params**

   **Required:**

   `id=[integer]`

* **Success Response:**


  * **Code:** 204 <br />

* **Error Response:**

  * **Code:** 410 Resource already deleted<br />

  * **Code:** 404 Resource does not exist<br />

* **Sample Call:**

  curl -X DELETE -d "id=1" http://taskmeanything.herokuapp.com/v1/tasks/1

* **Notes:**
