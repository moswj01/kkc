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

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_CLIENT` | Database type | mysql |
| `DATABASE_HOST` | Database host | localhost |
| `DATABASE_PORT` | Database port | 3306 |
| `DATABASE_NAME` | Database name | send_dbs |
| `DATABASE_USERNAME` | Database user | root |
| `DATABASE_PASSWORD` | Database password | |

## License

Private project for SENd System.
