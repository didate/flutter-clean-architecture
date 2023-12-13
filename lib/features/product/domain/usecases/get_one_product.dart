import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase_contract.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';
import 'package:flutter_clean_architecture/features/product/domain/repository/product_repository.dart';

class GetOneProduct extends UsecaseContract<DataState<Product>, Params> {
  final ProductRepository productRepository;

  GetOneProduct(this.productRepository);

  @override
  Future<DataState<Product>> call(Params params) {
    return productRepository.getProduct(params.id);
  }
}

class Params {
  final String id;

  Params(this.id);
}
