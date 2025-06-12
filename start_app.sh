#!/bin/bash

# Startup script for Todo App
# This script will help you run both the client and server

echo "=== Todo App Startup Helper ==="
echo "This script will help you start the Todo application"
echo

# Check environment
echo "Checking environment..."
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js is not installed. Please install it from https://nodejs.org/"
    exit 1
fi

if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python is not installed. Please install Python 3."
    exit 1
fi

# Setup client
echo "Setting up React client..."
cd "$(dirname "$0")/client"
echo "Installing client dependencies..."
npm install

# Setup server
echo "Setting up Flask server..."
cd "$(dirname "$0")/server"
echo "Installing server dependencies..."
pip3 install -r requirements.txt
# Specifically ensure PyJWT is installed
pip3 install PyJWT python-dotenv

echo
echo "=== How to Start the App ==="
echo "1. First, start the server:"
echo "   cd $(dirname "$0")/server && python app.py"
echo
echo "2. Then, in a new terminal, start the client:"
echo "   cd $(dirname "$0")/client && npm start"
echo
echo "3. Open http://localhost:3000 in your browser"
echo
echo "If you encounter any errors, check that:"
echo "- Port 5000 is available for the server"
echo "- Port 3000 is available for the client"
echo "- All dependencies are installed correctly"
