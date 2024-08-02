# Rental Property Application

This is a Spring Boot web application for managing rental properties. It allows users to register as sellers or buyers, post properties, and view properties with pagination support.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [Usage](#usage)
- [Endpoints](#endpoints)
- [Contributing](#contributing)
- [License](#license)

## Features

- User registration and login
- Seller can post, update, and delete properties
- Buyer can view properties and express interest
- Pagination support for property listings

## Requirements

- Java 11 or higher
- Maven
- (Optional) IDE like IntelliJ IDEA or Eclipse

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/rental-property-app.git
    cd rental-property-app
    ```

2. **Build the project using Maven:**

    ```bash
    mvn clean install
    ```

## Running the Application

1. **Run the Spring Boot application:**

    ```bash
    mvn spring-boot:run
    ```

2. **Access the application in your web browser:**

    Open `http://localhost:8080` in your browser.

## Usage

### Home Page

- The home page provides links to login and register.

### User Registration

- Navigate to `/users/register` to register as a new user.

### User Login

- Navigate to `/users/login` to login as an existing user.

### Viewing Properties

- Once logged in as a buyer, navigate to `/properties` to view the list of properties with pagination controls.

### Seller Dashboard

- Once logged in as a seller, you can post new properties and manage existing ones.

## Pagination

- The property listing page supports pagination. Use the "Previous" and "Next" links to navigate through pages.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a pull request

