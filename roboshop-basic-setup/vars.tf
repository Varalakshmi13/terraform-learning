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

VA==variable "ALL_COMPONENTS" {
    default = [
        {
            COMPONENT = "mongodb",
            APP_VERSION = "1.0.0"
        },
        {
            COMPONENT = "catalogue",
            APP_VERSION = "1.0.0"
        }
    ]
}