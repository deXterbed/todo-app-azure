# Todo App

A modern Todo application built with Ruby on Rails 8, using Docker for containerization and Nginx as a reverse proxy.

## Features

- Create and manage tasks
- Modern UI with Hotwire
- Docker containerization
- Nginx reverse proxy
- PostgreSQL database
- Production-ready configuration

## Prerequisites

- Docker
- Docker Compose
- Git

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/deXterbed/todo-app-azure
cd todo-app
```

### 2. Environment Setup

1. Copy the example environment file:

   ```bash
   cp .env.example .env
   ```

2. Update the `.env` file with your Rails master key:
   ```bash
   # Get your master key from config/master.key
   RAILS_MASTER_KEY=your_master_key_here
   ```

### 3. Build and Start the Application

```bash
# Build and start all services
docker-compose up --build

# Or run in detached mode
docker-compose up -d --build
```

The application will be available at `http://localhost`

### 4. Database Setup

The database will be automatically created and migrated when the containers start. If you need to run migrations manually:

```bash
docker-compose exec web rails db:migrate
```

### 5. Accessing the Application

```bash
# Open the application in your browser
open http://localhost
```

### Viewing Logs

```bash
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f web
docker-compose logs -f nginx
```

### Stopping the Application

```bash
docker-compose down
```

## Production Deployment

This application is configured for production use with:

- Nginx as a reverse proxy
- PostgreSQL database
- Asset precompilation
- Production-ready security settings

### Environment Variables

Required environment variables:

- `RAILS_MASTER_KEY`: Your Rails master key for decrypting credentials

### Security Considerations

- Never commit the `.env` file or `config/master.key`
- Keep your production credentials secure
- Use strong passwords for the database
- Regularly update dependencies

## Architecture

The application uses a multi-container setup:

- `web`: Rails application server
- `db`: PostgreSQL database
- `nginx`: Reverse proxy and static file server

## Azure Setup

- Resource Group: todoAppResourceGroup
- ACR: todoappacr
- AKS Cluster: todoAppCluster

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
