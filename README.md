**TaskMeAnything**
----
**Base URL**
**https://taskmeanything.herokuapp.com**

*TaskMeAnything is a collaborative backend application that allows users to create and assign tasks to each other as well as easily create an account through Facebook. The following backend API endpoints return JSON responses and follow RESTful naming conventions to make them easily consumable. To use an endpoint, append the appropriate route to the base url. *


Routes

GET ['/tasks'](docs/get_tasks.md)<br />
* A list of all tasks<br />

GET ['/tasks/:id'](docs/get_tasks_id.md)<br />
* A single task specified by id<br />

POST ['/tasks'](docs/post_tasks.md)<br />
* Create a new task<br />

PUT ['/tasks'](docs/put_tasks_id.md)<br />
* Edit a task

DELETE ['/tasks'](docs/delete_tasks_id.md)<br />
* Delete a task<br />

GET ['/users'](docs/get_users.md)<br />
* A list of all users<br />

POST ['/users'](docs/post_users.md)<br />
* Create a new user<br />

POST ['/users/via_facebook_token'](docs/post_users_via_facebook_token.md)<br />
* Create a new user with a Facebook token<br />

POST ['/user_tasks'](docs/post_user_tasks.md)<br />
* Assign a task to a user<br />