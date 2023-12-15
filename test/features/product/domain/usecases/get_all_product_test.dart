import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase_contract.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';
import 'package:flutter_clean_architecture/features/product/domain/repository/product_repository.dart';
import 'package:flutter_clean_architecture/features/product/domain/usecases/get_all_products.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late final ProductRepository mockProductRepository;
  late final GetAllProducts usecase;

  setUp(() {
    mockProductRepository = MockProductRepository();
    usecase = GetAllProducts(productRepository: mockProductRepository);
  });

  List<Product> expected = [
    Product(
        id: "3450-43",
        name: "Product 1",
        description: "Description 1",
        price: 2.5,
        image: "https://image1.com"),
    Product(
        id: "3450-42",
        name: "Product 2",
        description: "Description 2",
        price: 5.5,
        image: "https://image2.com")
  ];

  test("Should get all products", () async {
    when(() => mockProductRepository.getAllProducts())
        .thenAnswer((_) async => DataSuccess(expected));

    final got = await usecase(NoParams());

    expect(expected, got.data);
    expect(got.data?.first.id, "3450-43");
    verify(() => mockProductRepository.getAllProducts()).called(1);
    verifyNoMoreInteractions(mockProductRepository);
  });
}
