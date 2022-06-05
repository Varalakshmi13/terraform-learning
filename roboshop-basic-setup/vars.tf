variable "COMPONENTS" {
    default = [
        "mongodb",
        "catalogue",
        "redis",
        "user",
        "cart",
        "mysql",
        "shipping",
        "payment"
    ]
}


variable "APP_VERSION" {
    default = [
        "null",
        "1.0.0"
    ]
}

variable "ALL_COMPONENTS" {
    default = {
        mongodb = "null"
        catalogue = "1.0.0"
        redis = "null"
        user = "1.0.0"
        cart = "1.0.2"
        mysql = "null"
        shipping = "1.0.0"
        rabbitmq = "null"
        payment = "1.0.0"
    }
}