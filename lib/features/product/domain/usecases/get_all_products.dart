// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase_contract.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';
import 'package:flutter_clean_architecture/features/product/domain/repository/product_repository.dart';

class GetAllProducts
    extends UsecaseContract<DataState<List<Product>>, NoParams> {
  final ProductRepository productRepository;
  GetAllProducts({
    required this.productRepository,
  });

  @override
  Future<DataState<List<Product>>> call(NoParams params) {
    return productRepository.getAllProducts();
  }
}
