// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) sendMoneyTransaction,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? sendMoneyTransaction,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? sendMoneyTransaction,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMoneyTransaction value) sendMoneyTransaction,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionEventCopyWith<$Res> {
  factory $SendTransactionEventCopyWith(SendTransactionEvent value,
          $Res Function(SendTransactionEvent) then) =
      _$SendTransactionEventCopyWithImpl<$Res, SendTransactionEvent>;
}

/// @nodoc
class _$SendTransactionEventCopyWithImpl<$Res,
        $Val extends SendTransactionEvent>
    implements $SendTransactionEventCopyWith<$Res> {
  _$SendTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMoneyTransactionImplCopyWith<$Res> {
  factory _$$SendMoneyTransactionImplCopyWith(_$SendMoneyTransactionImpl value,
          $Res Function(_$SendMoneyTransactionImpl) then) =
      __$$SendMoneyTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$SendMoneyTransactionImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$SendMoneyTransactionImpl>
    implements _$$SendMoneyTransactionImplCopyWith<$Res> {
  __$$SendMoneyTransactionImplCopyWithImpl(_$SendMoneyTransactionImpl _value,
      $Res Function(_$SendMoneyTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$SendMoneyTransactionImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SendMoneyTransactionImpl implements _SendMoneyTransaction {
  const _$SendMoneyTransactionImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'SendTransactionEvent.sendMoneyTransaction(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMoneyTransactionImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMoneyTransactionImplCopyWith<_$SendMoneyTransactionImpl>
      get copyWith =>
          __$$SendMoneyTransactionImplCopyWithImpl<_$SendMoneyTransactionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) sendMoneyTransaction,
    required TResult Function() resetState,
  }) {
    return sendMoneyTransaction(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? sendMoneyTransaction,
    TResult? Function()? resetState,
  }) {
    return sendMoneyTransaction?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? sendMoneyTransaction,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (sendMoneyTransaction != null) {
      return sendMoneyTransaction(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMoneyTransaction value) sendMoneyTransaction,
    required TResult Function(_ResetState value) resetState,
  }) {
    return sendMoneyTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return sendMoneyTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (sendMoneyTransaction != null) {
      return sendMoneyTransaction(this);
    }
    return orElse();
  }
}

abstract class _SendMoneyTransaction implements SendTransactionEvent {
  const factory _SendMoneyTransaction(final double amount) =
      _$SendMoneyTransactionImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$SendMoneyTransactionImplCopyWith<_$SendMoneyTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'SendTransactionEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount) sendMoneyTransaction,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount)? sendMoneyTransaction,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount)? sendMoneyTransaction,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMoneyTransaction value) sendMoneyTransaction,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMoneyTransaction value)? sendMoneyTransaction,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements SendTransactionEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
mixin _$SendTransactionState {
  RequestState get state => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  SendTransactionResult? get sendTransactionResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendTransactionStateCopyWith<SendTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionStateCopyWith<$Res> {
  factory $SendTransactionStateCopyWith(SendTransactionState value,
          $Res Function(SendTransactionState) then) =
      _$SendTransactionStateCopyWithImpl<$Res, SendTransactionState>;
  @useResult
  $Res call(
      {RequestState state,
      String? errorMessage,
      SendTransactionResult? sendTransactionResult});
}

/// @nodoc
class _$SendTransactionStateCopyWithImpl<$Res,
        $Val extends SendTransactionState>
    implements $SendTransactionStateCopyWith<$Res> {
  _$SendTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? sendTransactionResult = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sendTransactionResult: freezed == sendTransactionResult
          ? _value.sendTransactionResult
          : sendTransactionResult // ignore: cast_nullable_to_non_nullable
              as SendTransactionResult?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendTransactionStateImplCopyWith<$Res>
    implements $SendTransactionStateCopyWith<$Res> {
  factory _$$SendTransactionStateImplCopyWith(_$SendTransactionStateImpl value,
          $Res Function(_$SendTransactionStateImpl) then) =
      __$$SendTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String? errorMessage,
      SendTransactionResult? sendTransactionResult});
}

/// @nodoc
class __$$SendTransactionStateImplCopyWithImpl<$Res>
    extends _$SendTransactionStateCopyWithImpl<$Res, _$SendTransactionStateImpl>
    implements _$$SendTransactionStateImplCopyWith<$Res> {
  __$$SendTransactionStateImplCopyWithImpl(_$SendTransactionStateImpl _value,
      $Res Function(_$SendTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? errorMessage = freezed,
    Object? sendTransactionResult = freezed,
  }) {
    return _then(_$SendTransactionStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sendTransactionResult: freezed == sendTransactionResult
          ? _value.sendTransactionResult
          : sendTransactionResult // ignore: cast_nullable_to_non_nullable
              as SendTransactionResult?,
    ));
  }
}

/// @nodoc

class _$SendTransactionStateImpl implements _SendTransactionState {
  const _$SendTransactionStateImpl(
      {required this.state, this.errorMessage, this.sendTransactionResult});

  @override
  final RequestState state;
  @override
  final String? errorMessage;
  @override
  final SendTransactionResult? sendTransactionResult;

  @override
  String toString() {
    return 'SendTransactionState(state: $state, errorMessage: $errorMessage, sendTransactionResult: $sendTransactionResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.sendTransactionResult, sendTransactionResult) ||
                other.sendTransactionResult == sendTransactionResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, state, errorMessage, sendTransactionResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTransactionStateImplCopyWith<_$SendTransactionStateImpl>
      get copyWith =>
          __$$SendTransactionStateImplCopyWithImpl<_$SendTransactionStateImpl>(
              this, _$identity);
}

abstract class _SendTransactionState implements SendTransactionState {
  const factory _SendTransactionState(
          {required final RequestState state,
          final String? errorMessage,
          final SendTransactionResult? sendTransactionResult}) =
      _$SendTransactionStateImpl;

  @override
  RequestState get state;
  @override
  String? get errorMessage;
  @override
  SendTransactionResult? get sendTransactionResult;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionStateImplCopyWith<_$SendTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
