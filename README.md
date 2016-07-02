TaskMeAnything

**TaskMeAnything is a collaborative backend application that allows users to create and assign tasks to each other as well as easily create an account through Facebook. The following backend API endpoints follow RESTful naming conventions to make them easily consumable.**
----


Routes

GET ['/tasks'](docs/get_tasks.md)<br />
* A list of all tasks
GET ['/tasks/:id'](docs/get_tasks_id.md)<br />
* A single task specified by id
POST ['/tasks'](docs/post_tasks.md)<br />
* Create a new task
PUT ['/tasks'](docs/put_tasks_id.md)<br />
DELETE ['/tasks'](docs/delete_tasks_id.md)<br />
* Delete a task

GET ['/users'](docs/get_users.md)<br />
* A list of all users
POST ['/users'](docs/post_users.md)<br />
* Create a new user
POST ['/users/via_facebook_token'](docs/post_users_via_facebook_token.md)<br />
* Create a new user with a Facebook token

POST ['/user_tasks'](docs/post_user_tasks.md)<br />
* Assign a task to a user