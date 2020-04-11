package com.example.sweater2.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    ADMIN,USER,MODER;

    @Override
    public String getAuthority() {
        return name();
    }
}
