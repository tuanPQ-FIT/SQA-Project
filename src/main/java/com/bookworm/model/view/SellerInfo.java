package com.bookworm.model.view;

import lombok.Data;

@Data
public class SellerInfo {
    private Long id;
    private String name;
    private String description;
    private String phone;
    private String email;
    private String address;
}
