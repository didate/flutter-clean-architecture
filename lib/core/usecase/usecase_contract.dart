abstract class UsecaseContract<Type, Params> {
  Future<Type> call(Params params);
}

class NoParams {}
