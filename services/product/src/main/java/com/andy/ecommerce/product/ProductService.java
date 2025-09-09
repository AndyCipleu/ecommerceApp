package com.andy.ecommerce.product;

import com.andy.ecommerce.exception.ProductPurchaseException;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRespository repository;
    private final ProductMapper mapper;
    public Integer createProduct(ProductRequest request) {
        var product = repository.save(mapper.toProduct(request));
        return product.getId();
    }

    public List<ProductPurchaseResponse> purchaseProducts(List<ProductPurchaseRequest> request) {
        var productIds = request
            .stream()
            .map(ProductPurchaseRequest::productId)
            .toList();

        var storedProducts = repository.findAllByIdInOrderById(productIds);

        if (productIds.size() != storedProducts.size()) {
            throw new ProductPurchaseException("One or more products does not exits");
        }

        var storesRequest = request
            .stream()
            .sorted(Comparator.comparing(ProductPurchaseRequest::productId))
            .toList();

        var purchasedProducts = new ArrayList<ProductPurchaseResponse>();

        for (int i = 0; i < storedProducts.size(); i++) {
            var products = storedProducts.get(i);
            var productsRequest = storesRequest.get(i);

            if (products.getAvailableQuantity() < productsRequest.quantity()) {
                throw new ProductPurchaseException("Insufficient stock quantity for product with ID::" + productsRequest.productId());

            }

            var newAvailableQuantity = products.getAvailableQuantity() - productsRequest.quantity();
            products.setAvailableQuantity(newAvailableQuantity);
            repository.save(products);
            purchasedProducts.add(mapper.toProductPurchaseResponse(products, productsRequest.quantity()));
        }

            return purchasedProducts;
    }

    public ProductResponse findById(Integer productId) {
        return repository.findById(productId)
                .map(mapper::toProductResponse)
                .orElseThrow(() -> new EntityNotFoundException("Product not found with the ID:: " + productId));
    }

    public List<ProductResponse> findAll() {
        return repository.findAll()
                .stream()
                .map(mapper::toProductResponse)
                .collect(Collectors.toList());
    }
}
