package com.bookworm.service;


import com.bookworm.model.CartItem;

import java.util.List;

public interface CartItemService {
    public CartItem saveCartItem(CartItem cartItem);

    public List<CartItem> getCartItems();

    public CartItem getCartItemById(Long id);
}
