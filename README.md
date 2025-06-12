# Todo App

## Overview
This is a simple Todo application that allows users to create, read, update, and delete tasks. The application is built using a client-server architecture, with a React frontend and a Flask backend.

## Features
- Create a task with a title and description.
- Read all tasks.
- Update an existing task.
- Delete a task.

## Technology Stack
- **Client**: React
- **Server**: Flask
- **Storage**: In-memory or simple file-based storage

## Project Structure
```
todo-app
├── client
│   ├── public
│   │   ├── index.html
│   │   └── favicon.ico
│   ├── src
│   │   ├── components
│   │   │   ├── App.js
│   │   │   ├── TaskForm.js
│   │   │   ├── TaskItem.js
│   │   │   └── TaskList.js
│   │   ├── services
│   │   │   └── api.js
│   │   ├── styles
│   │   │   └── index.css
│   │   └── index.js
│   ├── package.json
│   └── README.md
├── server
│   ├── app.py
│   ├── controllers
│   │   └── task_controller.py
│   ├── models
│   │   └── task.py
│   ├── services
│   │   └── task_service.py
│   ├── tests
│   │   ├── conftest.py
│   │   ├── test_app.py
│   │   └── test_task_controller.py
│   ├── requirements.txt
│   └── README.md
└── README.md
```

## Setup Instructions

### Client
1. Navigate to the `client` directory.
2. Install dependencies using npm:
   ```
   npm install
   ```
3. Start the client application:
   ```
   npm start
   ```

### Server
1. Navigate to the `server` directory.
2. Install dependencies using pip:
   ```
   pip install -r requirements.txt
   ```
3. Start the server:
   ```
   python app.py
   ```

## Testing
Unit tests for the server are written using PyTest. To run the tests, navigate to the `server` directory and execute:
```
pytest
```

## License
This project is licensed under the MIT License.