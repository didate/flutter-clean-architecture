import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';
import 'package:flutter_clean_architecture/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<int> addProduct(Product product) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<int> deleteProduct(int id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<Product>>> getAllProducts() {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }

  @override
  Future<DataState<Product>> getProduct(String id) {
    // TODO: implement getProduct
    throw UnimplementedError();
  }

  @override
  Future<int> updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
