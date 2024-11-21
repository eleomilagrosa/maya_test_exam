import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maya_test_exam/common/enum.dart';
import 'package:maya_test_exam/common/failure.dart';
import 'package:maya_test_exam/data/model/user.dart';
import 'package:maya_test_exam/domain/repositories/user_repository.dart';
import 'package:maya_test_exam/domain/usecase/get_user_details.dart';
import 'package:maya_test_exam/presentation/bloc/user/user_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockUserRepository extends Mock implements UserRepository {}

class FakeFailure extends Failure {
  @override
  final String message;

  const FakeFailure(this.message) : super(message);
}

void main() {
  late MockUserRepository mockUserRepository;
  late GetUserDetails getUserDetails;

  setUp(() {
    mockUserRepository = MockUserRepository();
    getUserDetails = GetUserDetails(mockUserRepository);
  });

  group('UserBloc', () {
    const tUserId = 1;

    final tUser = User(
      id: 1,
      name: 'Eleojasmil Milagrosa',
      balance: 1000.0,
    );

    const tFailure = FakeFailure('Failed to fetch user details');

    test('initial state is UserState.initial()', () {
      final bloc = UserBloc(getUserDetails: getUserDetails);
      expect(bloc.state, UserState.initial());
    });

    blocTest<UserBloc, UserState>(
      'emits [loading, loaded] when fetchUserDetails succeeds',
      build: () {
        when(() => mockUserRepository.getUser(tUserId))
            .thenAnswer((_) async => Right(tUser));
        return UserBloc(getUserDetails: getUserDetails);
      },
      act: (bloc) => bloc.add(const UserEvent.fetchUserDetails(tUserId)),
      wait: const Duration(seconds: 1),
      expect: () => [
        UserState.initial().copyWith(state: RequestState.loading),
        UserState.initial().copyWith(
          state: RequestState.loaded,
          currentUser: tUser,
        ),
      ],
    );

    blocTest<UserBloc, UserState>(
      'emits [loading, error] when fetchUserDetails fails',
      build: () {
        when(() => mockUserRepository.getUser(tUserId))
            .thenAnswer((_) async => Left(tFailure));
        return UserBloc(getUserDetails: getUserDetails);
      },
      act: (bloc) => bloc.add(const UserEvent.fetchUserDetails(tUserId)),
      wait: const Duration(seconds: 1),
      expect: () => [
        UserState.initial().copyWith(state: RequestState.loading),
        UserState.initial().copyWith(
          state: RequestState.error,
          errorMessage: tFailure.message,
        ),
      ],
    );
  });
}
