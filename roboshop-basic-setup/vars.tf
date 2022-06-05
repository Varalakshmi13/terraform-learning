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
    default = [
        mongodb = "null"
        catalogue = "1.0.0"

    ]
}