import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';

abstract class ProductRepository {
  Future<DataState<List<Product>>> getAllProducts();
  Future<DataState<Product>> getProduct(String id);
  Future<int> addProduct(
    Product product,
  );
  Future<int> updateProduct(
    Product product,
  );
  Future<int> deleteProduct(
    int id,
  );
}
