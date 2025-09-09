package com.andy.ecommerce.product;

import com.andy.ecommerce.category.Category;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class ProductMapper {
    public Product toProduct(ProductRequest request) {
        return Product.builder()
                .id(request.id())
                .name(request.name())
                .description(request.description())
                .price(request.price())
                .availableQuantity(request.availableQuantity())
                .category(
                        Category.builder()
                            .id(request.categoryId())
                            .build()
                )
                .build();
    }

    public ProductResponse toProductResponse(Product product) {
        return new ProductResponse(
                product.getId(),
                product.getName(),
                product.getDescription(),
                product.getAvailableQuantity(),
                product.getPrice(),
                product.getCategory().getId(),
                product.getCategory().getName(),
                product.getCategory().getDescription()
        );
    }


    public ProductPurchaseResponse toProductPurchaseResponse(Product products, double quantity) {
        return new ProductPurchaseResponse(
                products.getId(),
                products.getName(),
                products.getDescription(),
                products.getPrice(),
                quantity
        );
    }
}
