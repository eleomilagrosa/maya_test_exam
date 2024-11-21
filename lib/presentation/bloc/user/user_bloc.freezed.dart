// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactionHistory,
    required TResult Function(int userId) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTransactionHistory,
    TResult? Function(int userId)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactionHistory,
    TResult Function(int userId)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchUserDetails value)? fetchUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTransactionHistoryImplCopyWith<$Res> {
  factory _$$FetchTransactionHistoryImplCopyWith(
          _$FetchTransactionHistoryImpl value,
          $Res Function(_$FetchTransactionHistoryImpl) then) =
      __$$FetchTransactionHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionHistoryImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchTransactionHistoryImpl>
    implements _$$FetchTransactionHistoryImplCopyWith<$Res> {
  __$$FetchTransactionHistoryImplCopyWithImpl(
      _$FetchTransactionHistoryImpl _value,
      $Res Function(_$FetchTransactionHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTransactionHistoryImpl implements _FetchTransactionHistory {
  const _$FetchTransactionHistoryImpl();

  @override
  String toString() {
    return 'UserEvent.fetchTransactionHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactionHistory,
    required TResult Function(int userId) fetchUserDetails,
  }) {
    return fetchTransactionHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTransactionHistory,
    TResult? Function(int userId)? fetchUserDetails,
  }) {
    return fetchTransactionHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactionHistory,
    TResult Function(int userId)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchTransactionHistory != null) {
      return fetchTransactionHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchTransactionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchTransactionHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchTransactionHistory != null) {
      return fetchTransactionHistory(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactionHistory implements UserEvent {
  const factory _FetchTransactionHistory() = _$FetchTransactionHistoryImpl;
}

/// @nodoc
abstract class _$$FetchUserDetailsImplCopyWith<$Res> {
  factory _$$FetchUserDetailsImplCopyWith(_$FetchUserDetailsImpl value,
          $Res Function(_$FetchUserDetailsImpl) then) =
      __$$FetchUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$FetchUserDetailsImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FetchUserDetailsImpl>
    implements _$$FetchUserDetailsImplCopyWith<$Res> {
  __$$FetchUserDetailsImplCopyWithImpl(_$FetchUserDetailsImpl _value,
      $Res Function(_$FetchUserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FetchUserDetailsImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchUserDetailsImpl implements _FetchUserDetails {
  const _$FetchUserDetailsImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.fetchUserDetails(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDetailsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserDetailsImplCopyWith<_$FetchUserDetailsImpl> get copyWith =>
      __$$FetchUserDetailsImplCopyWithImpl<_$FetchUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactionHistory,
    required TResult Function(int userId) fetchUserDetails,
  }) {
    return fetchUserDetails(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTransactionHistory,
    TResult? Function(int userId)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactionHistory,
    TResult Function(int userId)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchUserDetails value) fetchUserDetails,
  }) {
    return fetchUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchUserDetails value)? fetchUserDetails,
  }) {
    return fetchUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchUserDetails value)? fetchUserDetails,
    required TResult orElse(),
  }) {
    if (fetchUserDetails != null) {
      return fetchUserDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetails implements UserEvent {
  const factory _FetchUserDetails(final int userId) = _$FetchUserDetailsImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$FetchUserDetailsImplCopyWith<_$FetchUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  RequestState get userState => throw _privateConstructorUsedError;
  RequestState get transactionListState => throw _privateConstructorUsedError;
  String get errorMessageUser => throw _privateConstructorUsedError;
  String get errorMessageTransaction => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {RequestState userState,
      RequestState transactionListState,
      String errorMessageUser,
      String errorMessageTransaction,
      User? currentUser,
      List<Transaction> transactions});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userState = null,
    Object? transactionListState = null,
    Object? errorMessageUser = null,
    Object? errorMessageTransaction = null,
    Object? currentUser = freezed,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      transactionListState: null == transactionListState
          ? _value.transactionListState
          : transactionListState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessageUser: null == errorMessageUser
          ? _value.errorMessageUser
          : errorMessageUser // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessageTransaction: null == errorMessageTransaction
          ? _value.errorMessageTransaction
          : errorMessageTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState userState,
      RequestState transactionListState,
      String errorMessageUser,
      String errorMessageTransaction,
      User? currentUser,
      List<Transaction> transactions});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userState = null,
    Object? transactionListState = null,
    Object? errorMessageUser = null,
    Object? errorMessageTransaction = null,
    Object? currentUser = freezed,
    Object? transactions = null,
  }) {
    return _then(_$UserStateImpl(
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      transactionListState: null == transactionListState
          ? _value.transactionListState
          : transactionListState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessageUser: null == errorMessageUser
          ? _value.errorMessageUser
          : errorMessageUser // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessageTransaction: null == errorMessageTransaction
          ? _value.errorMessageTransaction
          : errorMessageTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.userState,
      required this.transactionListState,
      required this.errorMessageUser,
      required this.errorMessageTransaction,
      required this.currentUser,
      required final List<Transaction> transactions})
      : _transactions = transactions;

  @override
  final RequestState userState;
  @override
  final RequestState transactionListState;
  @override
  final String errorMessageUser;
  @override
  final String errorMessageTransaction;
  @override
  final User? currentUser;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'UserState(userState: $userState, transactionListState: $transactionListState, errorMessageUser: $errorMessageUser, errorMessageTransaction: $errorMessageTransaction, currentUser: $currentUser, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.transactionListState, transactionListState) ||
                other.transactionListState == transactionListState) &&
            (identical(other.errorMessageUser, errorMessageUser) ||
                other.errorMessageUser == errorMessageUser) &&
            (identical(
                    other.errorMessageTransaction, errorMessageTransaction) ||
                other.errorMessageTransaction == errorMessageTransaction) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userState,
      transactionListState,
      errorMessageUser,
      errorMessageTransaction,
      currentUser,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final RequestState userState,
      required final RequestState transactionListState,
      required final String errorMessageUser,
      required final String errorMessageTransaction,
      required final User? currentUser,
      required final List<Transaction> transactions}) = _$UserStateImpl;

  @override
  RequestState get userState;
  @override
  RequestState get transactionListState;
  @override
  String get errorMessageUser;
  @override
  String get errorMessageTransaction;
  @override
  User? get currentUser;
  @override
  List<Transaction> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
