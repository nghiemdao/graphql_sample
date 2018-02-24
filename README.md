1. Clone project
    ```sh
    git clone git@github.com:nghiemdao/graphql_sample.git
    ```
2. Install gems
    ```sh
    bundle install
    ```
3. Create db and initialize data
    ```sh
    rails db:create
    rails db:migrate
    rails db:seed
    ```
4. Start server
    ```
    rails s
    ```
5. Sample query
    ```
    {
        allMovies {
            id
            title
        }
    }
    ```
        or
    ```
    {
        movie(id: 2) {
            id
            title
            reviews {
                id
                content
            }
        }
    }
