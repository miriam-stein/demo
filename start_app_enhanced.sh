#!/bin/bash

# Enhanced Startup script for Todo App
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
# Specifically ensure PyJWT is installed with direct command
echo "Installing PyJWT specifically..."
pip3 install PyJWT python-dotenv

# Create a .env file for the server if it doesn't exist
if [ ! -f .env ]; then
    echo "Creating default .env file..."
    echo "JWT_SECRET=dev-secret-key" > .env
    echo "FLASK_ENV=development" >> .env
fi

echo
echo "=== How to Start the App ==="
echo "SERVER OPTIONS:"
echo " 1: Original server with JWT (likely has errors):"
echo "    cd $(dirname "$0")/server && python app.py"
echo
echo " 2: Simplified server (no security middleware):"
echo "    cd $(dirname "$0")/server && python app_simple.py"
echo
echo " 3: RECOMMENDED: Fixed server version (minimal security):"
echo "    cd $(dirname "$0")/server && python app_fixed.py"
echo
echo "CLIENT:"
echo "    cd $(dirname "$0")/client && npm start"
echo
echo "Access the app at http://localhost:3000 in your browser"
echo
echo "If you encounter any errors, check that:"
echo "- Port 5000 is available for the server"
echo "- Port 3000 is available for the client"
echo "- All dependencies are installed correctly"
echo
echo "Troubleshooting:"
echo "1. JWT errors: Use app_fixed.py instead of app.py"
echo "2. CORS errors: Make sure both client and server are running"
echo "3. API connection issues: Verify API_URL in client/src/services/api.js points to correct server port"
