## Library ERD
![LIBRARY](/Koda7.png)

```mermaid
erDiagram
    BOOK {
        int Id
        string Book_title
        string Author
        string Publisher
        string Book_category
        int rack_number
    }

    BOOK ||--|{ CATEGORY : Lots

    CATEGORY {
        int Id
        string Category_name
    }

    BOOKSHELF {
        int Id
        int Rack_number
    }
    BOOKSHELF ||--|{ BOOK : keep

    LIBRARIAN {
        int Id
        string librarian_name
    }

    LIBRARIAN ||--|{ BOOK_LENDING : handle
    BOOK ||--o{ BOOK_LENDING : "lend via"

    BOOK_LENDING {
        int id 
        string book_title
        string Borrower_name
        timestamp Borrowing_date
        timestamp Return_date
        string librarian_name
    }


```

![E-commerse](/E-Commerce.png)

## E-Commerce

```mermaid
erDiagram
    PRODUCT {
        int product_id
        string product_title
        string product_category
        int price
        int stock
    }


    USER {
        int user_id
        string username
        string fullname
        string phone
    }


    ORDER {
        int order_id
        int user_id
        int product_id
        int order_stock
        int product_price
        int total_price
        string delivery_method
        string payment_method
        string indelivery
    }


    PAYMENT {
        int payment_id
        int order_id
        int user_id
        int user_pin
        int delivery_price
        int total_payment
    }


    DELIVERY {
        int delivery_id
        int order_id
        string delivery_method
        int service_price
    }

    USER ||--o{ ORDER : make
    PRODUCT ||--o{ ORDER : "ordered in"
    ORDER ||--|| DELIVERY : "sent via"
    ORDER ||--|| PAYMENT : "paid via"
    USER ||--o{ PAYMENT : do




```