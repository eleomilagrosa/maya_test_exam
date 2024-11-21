// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionHistoryState {
  RequestState get state => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionHistoryStateCopyWith<TransactionHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryStateCopyWith<$Res> {
  factory $TransactionHistoryStateCopyWith(TransactionHistoryState value,
          $Res Function(TransactionHistoryState) then) =
      _$TransactionHistoryStateCopyWithImpl<$Res, TransactionHistoryState>;
  @useResult
  $Res call(
      {RequestState state,
      String errorMessage,
      List<Transaction> transactions});
}

/// @nodoc
class _$TransactionHistoryStateCopyWithImpl<$Res,
        $Val extends TransactionHistoryState>
    implements $TransactionHistoryStateCopyWith<$Res> {
  _$TransactionHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryStateImplCopyWith<$Res>
    implements $TransactionHistoryStateCopyWith<$Res> {
  factory _$$TransactionHistoryStateImplCopyWith(
          _$TransactionHistoryStateImpl value,
          $Res Function(_$TransactionHistoryStateImpl) then) =
      __$$TransactionHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String errorMessage,
      List<Transaction> transactions});
}

/// @nodoc
class __$$TransactionHistoryStateImplCopyWithImpl<$Res>
    extends _$TransactionHistoryStateCopyWithImpl<$Res,
        _$TransactionHistoryStateImpl>
    implements _$$TransactionHistoryStateImplCopyWith<$Res> {
  __$$TransactionHistoryStateImplCopyWithImpl(
      _$TransactionHistoryStateImpl _value,
      $Res Function(_$TransactionHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = null,
    Object? transactions = null,
  }) {
    return _then(_$TransactionHistoryStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$TransactionHistoryStateImpl implements _TransactionHistoryState {
  const _$TransactionHistoryStateImpl(
      {required this.state,
      required this.errorMessage,
      required final List<Transaction> transactions})
      : _transactions = transactions;

  @override
  final RequestState state;
  @override
  final String errorMessage;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionHistoryState(state: $state, errorMessage: $errorMessage, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, errorMessage,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryStateImplCopyWith<_$TransactionHistoryStateImpl>
      get copyWith => __$$TransactionHistoryStateImplCopyWithImpl<
          _$TransactionHistoryStateImpl>(this, _$identity);
}

abstract class _TransactionHistoryState implements TransactionHistoryState {
  const factory _TransactionHistoryState(
          {required final RequestState state,
          required final String errorMessage,
          required final List<Transaction> transactions}) =
      _$TransactionHistoryStateImpl;

  @override
  RequestState get state;
  @override
  String get errorMessage;
  @override
  List<Transaction> get transactions;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryStateImplCopyWith<_$TransactionHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactionHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryEventCopyWith<$Res> {
  factory $TransactionHistoryEventCopyWith(TransactionHistoryEvent value,
          $Res Function(TransactionHistoryEvent) then) =
      _$TransactionHistoryEventCopyWithImpl<$Res, TransactionHistoryEvent>;
}

/// @nodoc
class _$TransactionHistoryEventCopyWithImpl<$Res,
        $Val extends TransactionHistoryEvent>
    implements $TransactionHistoryEventCopyWith<$Res> {
  _$TransactionHistoryEventCopyWithImpl(this._value, this._then);

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
    extends _$TransactionHistoryEventCopyWithImpl<$Res,
        _$FetchTransactionHistoryImpl>
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
    return 'TransactionHistoryEvent.fetchTransactionHistory()';
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
  }) {
    return fetchTransactionHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTransactionHistory,
  }) {
    return fetchTransactionHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactionHistory,
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
  }) {
    return fetchTransactionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
  }) {
    return fetchTransactionHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    required TResult orElse(),
  }) {
    if (fetchTransactionHistory != null) {
      return fetchTransactionHistory(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactionHistory implements TransactionHistoryEvent {
  const factory _FetchTransactionHistory() = _$FetchTransactionHistoryImpl;
}
