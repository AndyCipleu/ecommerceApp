package com.andy.ecommerce.customer;

import com.fasterxml.jackson.annotation.JsonProperty;

public record CustomerResponse(
        String id,
        String firstname,
        String lastname,
        String email
) {
}
