# SENd Backend (Strapi)

Strapi backend API for the SENd automatic laundry system.

## Features

- **Content Types**: Store, Machine management
- **MySQL Database**: Configured for production use
- **API Documentation**: Auto-generated with Swagger
- **User Authentication**: Built-in user management
- **File Upload**: Support for image and file uploads

## Getting Started

### Prerequisites

- Node.js (v18 or later)
- MySQL database
- npm or yarn

### Installation

1. Clone the repository
2. Install dependencies:

```bash
npm install
```

3. Configure environment variables:

```bash
cp .env.example .env
```

4. Update the `.env` file with your database credentials and other settings.

5. Create the database:

```sql
CREATE DATABASE send_dbs;
```

### Development

Start the development server:

```bash
npm run develop
```

The admin panel will be available at `http://localhost:1337/admin`

### Production

Build and start the production server:

```bash
npm run build
npm run start
```

## API Documentation

Once the server is running, you can access the API documentation at:
`http://localhost:1337/documentation`

## Deployment

### EasyPanel Deployment

This application is configured for easy deployment on EasyPanel using Docker.

#### Prerequisites

- EasyPanel account
- Docker support enabled

#### Deployment Steps

1. **Push to Repository**: Ensure your code is pushed to the `backend-only` branch

2. **Environment Variables**: In EasyPanel, set the following environment variables:

```bash
# Database Configuration
DATABASE_PASSWORD=your_secure_database_password
MYSQL_ROOT_PASSWORD=your_secure_root_password

# Strapi Secrets (Generate secure values)
APP_KEYS=your_secure_app_keys
API_TOKEN_SALT=your_secure_api_token_salt
ADMIN_JWT_SECRET=your_secure_admin_jwt_secret
TRANSFER_TOKEN_SALT=your_secure_transfer_token_salt
JWT_SECRET=your_secure_jwt_secret
ENCRYPTION_KEY=your_secure_encryption_key
```

3. **Deploy**: Use the provided `docker-compose.yml` file for deployment

4. **Access**: Your application will be available at your EasyPanel domain

#### Generate Secure Keys

You can generate secure keys using Node.js:

```bash
node -e "console.log(require('crypto').randomBytes(32).toString('base64'))"
```

#### Post-Deployment

1. Access the admin panel at `https://your-domain.com/admin`
2. Create your first admin user
3. Configure your content types and API permissions

### Manual Docker Deployment

If deploying manually with Docker:

```bash
# Build the image
docker build -t send-backend .

# Run with docker-compose
docker-compose up -d
```

## Database Schema

### Store (Buder)

- Store information for automatic laundry shops
- Location data, contact info, services offered
- Operating hours and pricing

### Machine

- Washing machine information
- Status tracking (available, in-use, maintenance)
- Usage statistics

## Environment Variables

| Variable            | Description       | Default   |
| ------------------- | ----------------- | --------- |
| `DATABASE_CLIENT`   | Database type     | mysql     |
| `DATABASE_HOST`     | Database host     | localhost |
| `DATABASE_PORT`     | Database port     | 3306      |
| `DATABASE_NAME`     | Database name     | send_dbs  |
| `DATABASE_USERNAME` | Database user     | root      |
| `DATABASE_PASSWORD` | Database password |           |

## License

Private project for SENd System.
