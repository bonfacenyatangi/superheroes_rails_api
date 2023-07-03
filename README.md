# Superheroes Rails API

This is a Rails API backend for managing superheroes and their powers.

Author: Bonface Mabeche

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository:

   ```shell
   git clone https://github.com/bonfacenyatangi/superheroes_rails_api.git
   ```

2. Install the dependencies:

   ```shell
   bundle install
   ```

3. Set up the database:

   ```shell
   rails db:migrate
   ```

   (Optional) If you want to populate the database with seed data:

   ```shell
   rails db:seed
   ```

4. Start the server:

   ```shell
   rails server
   ```

5. Test the API endpoints using a tool like `curl`, `Postman`, or `Insomnia`. Refer to the API documentation below for available endpoints and their expected responses.

## API Documentation

### Heroes

- `GET /heroes`

  Returns a list of all heroes in the following format:

  ```json
  [
    { "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },
    { "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },
    { "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }
  ]
  ```

- `GET /heroes/:id`

  Returns the details of a specific hero in the following format:

  ```json
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel",
    "powers": [
      {
        "id": 1,
        "name": "super strength",
        "description": "gives the wielder super-human strengths"
      },
      {
        "id": 2,
        "name": "flight",
        "description": "gives the wielder the ability to fly through the skies at supersonic speed"
      }
    ]
  }
  ```

  If the hero does not exist, returns the following JSON data, along with the appropriate HTTP status code:

  ```json
  { "error": "Hero not found" }
  ```

### Powers

- `GET /powers`

  Returns a list of all powers in the following format:

  ```json
  [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
  ```

- `GET /powers/:id`

  Returns the details of a specific power in the following format:

  ```json
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  }
  ```

  If the power does not exist, returns the following JSON data, along with the appropriate HTTP status code:

  ```json
  { "error": "Power not found" }
  ```

- `PATCH /powers/:id`

  Updates the description of an existing power. Accepts an object with the following properties in the body of the request:

  ```json
  {
    "description": "Updated description"
  }
  ```

  If

the power exists and is updated successfully (passes validations), returns the updated power in the following format:

```json
{ "id": 1, "name": "super strength", "description": "Updated description" }
```

If the power does not exist, returns the following JSON data, along with the appropriate HTTP status code:

```json
{ "error": "Power not found" }
```

If the power is not updated successfully (does not pass validations), returns the following JSON data, along with the appropriate HTTP status code:

```json
{ "errors": ["validation errors"] }
```

### HeroPowers

- `POST /hero_powers`

  Creates a new HeroPower that is associated with an existing Power and Hero. Accepts an object with the following properties in the body of the request:

  ```json
  {
    "strength": "Average",
    "power_id": 1,
    "hero_id": 3
  }
  ```

  If the HeroPower is created successfully, returns the data related to the Hero:

  ```json
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel",
    "powers": [
      {
        "id": 1,
        "name": "super strength",
        "description": "gives the wielder super-human strengths"
      },
      {
        "id": 2,
        "name": "flight",
        "description": "gives the wielder the ability to fly through the skies at supersonic speed"
      }
    ]
  }
  ```

  If the HeroPower is not created successfully, returns the following JSON data, along with the appropriate HTTP status code:

  ```json
  { "errors": ["validation errors"] }
  ```

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature-name`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature-name`).
5. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
