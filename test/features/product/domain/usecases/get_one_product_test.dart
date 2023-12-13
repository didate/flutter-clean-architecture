import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/product/domain/entity/product.dart';
import 'package:flutter_clean_architecture/features/product/domain/repository/product_repository.dart';
import 'package:flutter_clean_architecture/features/product/domain/usecases/get_one_product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockProductRepository extends Mock implements ProductRepository {}

void main() {
  late GetOneProduct usecase;
  late MockProductRepository mockProductRepository;
  setUp(() {
    mockProductRepository = MockProductRepository();
    usecase = GetOneProduct(mockProductRepository);
  });

  const id = "3450-43";
  final product = Product(
      id: "3450-43",
      name: "Product 1",
      description: "Description 1",
      price: 2.5,
      image: "https://image.com");

  test("should get product from repository", () async {
    when(() => mockProductRepository.getProduct(id))
        .thenAnswer((_) async => DataSuccess(product));

    final result = await usecase(Params(id));

    expect(result.data, product);
    verify(() => mockProductRepository.getProduct(id)).called(1);
    verifyNoMoreInteractions(mockProductRepository);
  });
}
