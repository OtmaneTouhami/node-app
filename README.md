# Node.js Express App

A simple Express.js web application created for Docker containerization exercises. This application provides basic REST API endpoints and serves as a learning project for DevOps and MLOps practices.

## Features

- **Health Check**: Monitor application status and uptime
- **System Information**: Get Node.js environment and system details  
- **Time Service**: Retrieve current server timestamp
- **Welcome Page**: Simple home page endpoint

## API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/` | GET | Welcome home page |
| `/api/health` | GET | Application health status |
| `/api/info` | GET | Node.js and system information |
| `/api/time` | GET | Current server time |

## Getting Started

### Prerequisites
- Node.js (v14 or higher)
- npm

### Installation

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start the server:
   ```bash
   npm start
   ```

The application will run on port 3000 by default (or the port specified in the `PORT` environment variable).

## Docker

This project includes Docker configuration for containerized deployment. See the `Dockerfile` for container setup details.

## Project Structure

```
node-app/
├── server.js          # Main application file
├── package.json       # Dependencies and scripts
├── Dockerfile         # Docker configuration
├── .dockerignore      # Docker ignore rules
└── README.md          # This file
```