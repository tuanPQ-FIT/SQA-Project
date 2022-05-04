package com.bookworm.model.view;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserInfo {
    private String email;
    private String fullName;
    private String joinedDate;
    private String avatarUrl;
}
