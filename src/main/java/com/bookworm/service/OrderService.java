package com.bookworm.service;

import com.bookworm.model.Buyer;
import com.bookworm.model.Order;
import com.bookworm.model.OrderItem;
import com.bookworm.model.view.OrderInfo;

import java.io.File;
import java.util.List;

public interface OrderService {
    Order getOrderById(Long id);
    Order saveOrder(Buyer buyer, Order order);
    Order updateOrder(Order order);
    void deleteOrder(Long id);
    OrderItem saveOrderItem(OrderItem orderItem);
    void completeOrder(Order order);
    void cancelOrder(Order order);
    File downloadReceipt(OrderInfo orderInfo) throws Exception;
    OrderItem getOrderItemById(Long itemId);
    List<OrderItem> getOrderItemsBySeller(Long sellerId);
    List<Order> getAll();
    List<OrderItem> getDeliveredOrderItemsByOrder(Long orderId);
}
