// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Customer {
  int? get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  double get outstandingAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {int? customerId,
      String customerName,
      String address,
      String phoneNumber,
      String email,
      double outstandingAmount});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? customerName = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? outstandingAmount = null,
  }) {
    return _then(_value.copyWith(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingAmount: null == outstandingAmount
          ? _value.outstandingAmount
          : outstandingAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? customerId,
      String customerName,
      String address,
      String phoneNumber,
      String email,
      double outstandingAmount});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
    Object? customerName = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? outstandingAmount = null,
  }) {
    return _then(_$CustomerImpl(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      outstandingAmount: null == outstandingAmount
          ? _value.outstandingAmount
          : outstandingAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {this.customerId,
      required this.customerName,
      required this.address,
      required this.phoneNumber,
      required this.email,
      required this.outstandingAmount});

  @override
  final int? customerId;
  @override
  final String customerName;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final double outstandingAmount;

  @override
  String toString() {
    return 'Customer(customerId: $customerId, customerName: $customerName, address: $address, phoneNumber: $phoneNumber, email: $email, outstandingAmount: $outstandingAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.outstandingAmount, outstandingAmount) ||
                other.outstandingAmount == outstandingAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, customerName,
      address, phoneNumber, email, outstandingAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final int? customerId,
      required final String customerName,
      required final String address,
      required final String phoneNumber,
      required final String email,
      required final double outstandingAmount}) = _$CustomerImpl;

  @override
  int? get customerId;
  @override
  String get customerName;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  double get outstandingAmount;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentReceipt {
  int get receiptId => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  double get amountReceived => throw _privateConstructorUsedError;
  DateTime get receiptDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentReceiptCopyWith<PaymentReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentReceiptCopyWith<$Res> {
  factory $PaymentReceiptCopyWith(
          PaymentReceipt value, $Res Function(PaymentReceipt) then) =
      _$PaymentReceiptCopyWithImpl<$Res, PaymentReceipt>;
  @useResult
  $Res call(
      {int receiptId,
      int customerId,
      double amountReceived,
      DateTime receiptDate});
}

/// @nodoc
class _$PaymentReceiptCopyWithImpl<$Res, $Val extends PaymentReceipt>
    implements $PaymentReceiptCopyWith<$Res> {
  _$PaymentReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
    Object? customerId = null,
    Object? amountReceived = null,
    Object? receiptDate = null,
  }) {
    return _then(_value.copyWith(
      receiptId: null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      amountReceived: null == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentReceiptImplCopyWith<$Res>
    implements $PaymentReceiptCopyWith<$Res> {
  factory _$$PaymentReceiptImplCopyWith(_$PaymentReceiptImpl value,
          $Res Function(_$PaymentReceiptImpl) then) =
      __$$PaymentReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int receiptId,
      int customerId,
      double amountReceived,
      DateTime receiptDate});
}

/// @nodoc
class __$$PaymentReceiptImplCopyWithImpl<$Res>
    extends _$PaymentReceiptCopyWithImpl<$Res, _$PaymentReceiptImpl>
    implements _$$PaymentReceiptImplCopyWith<$Res> {
  __$$PaymentReceiptImplCopyWithImpl(
      _$PaymentReceiptImpl _value, $Res Function(_$PaymentReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
    Object? customerId = null,
    Object? amountReceived = null,
    Object? receiptDate = null,
  }) {
    return _then(_$PaymentReceiptImpl(
      receiptId: null == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      amountReceived: null == amountReceived
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as double,
      receiptDate: null == receiptDate
          ? _value.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PaymentReceiptImpl implements _PaymentReceipt {
  const _$PaymentReceiptImpl(
      {required this.receiptId,
      required this.customerId,
      required this.amountReceived,
      required this.receiptDate});

  @override
  final int receiptId;
  @override
  final int customerId;
  @override
  final double amountReceived;
  @override
  final DateTime receiptDate;

  @override
  String toString() {
    return 'PaymentReceipt(receiptId: $receiptId, customerId: $customerId, amountReceived: $amountReceived, receiptDate: $receiptDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentReceiptImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.amountReceived, amountReceived) ||
                other.amountReceived == amountReceived) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, receiptId, customerId, amountReceived, receiptDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentReceiptImplCopyWith<_$PaymentReceiptImpl> get copyWith =>
      __$$PaymentReceiptImplCopyWithImpl<_$PaymentReceiptImpl>(
          this, _$identity);
}

abstract class _PaymentReceipt implements PaymentReceipt {
  const factory _PaymentReceipt(
      {required final int receiptId,
      required final int customerId,
      required final double amountReceived,
      required final DateTime receiptDate}) = _$PaymentReceiptImpl;

  @override
  int get receiptId;
  @override
  int get customerId;
  @override
  double get amountReceived;
  @override
  DateTime get receiptDate;
  @override
  @JsonKey(ignore: true)
  _$$PaymentReceiptImplCopyWith<_$PaymentReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DebtReport {
  String get customerId => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double get startingDebt => throw _privateConstructorUsedError;
  double get endingDebt => throw _privateConstructorUsedError;
  double get debtChange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebtReportCopyWith<DebtReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtReportCopyWith<$Res> {
  factory $DebtReportCopyWith(
          DebtReport value, $Res Function(DebtReport) then) =
      _$DebtReportCopyWithImpl<$Res, DebtReport>;
  @useResult
  $Res call(
      {String customerId,
      int month,
      int year,
      double startingDebt,
      double endingDebt,
      double debtChange});
}

/// @nodoc
class _$DebtReportCopyWithImpl<$Res, $Val extends DebtReport>
    implements $DebtReportCopyWith<$Res> {
  _$DebtReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? month = null,
    Object? year = null,
    Object? startingDebt = null,
    Object? endingDebt = null,
    Object? debtChange = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      startingDebt: null == startingDebt
          ? _value.startingDebt
          : startingDebt // ignore: cast_nullable_to_non_nullable
              as double,
      endingDebt: null == endingDebt
          ? _value.endingDebt
          : endingDebt // ignore: cast_nullable_to_non_nullable
              as double,
      debtChange: null == debtChange
          ? _value.debtChange
          : debtChange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebtReportImplCopyWith<$Res>
    implements $DebtReportCopyWith<$Res> {
  factory _$$DebtReportImplCopyWith(
          _$DebtReportImpl value, $Res Function(_$DebtReportImpl) then) =
      __$$DebtReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerId,
      int month,
      int year,
      double startingDebt,
      double endingDebt,
      double debtChange});
}

/// @nodoc
class __$$DebtReportImplCopyWithImpl<$Res>
    extends _$DebtReportCopyWithImpl<$Res, _$DebtReportImpl>
    implements _$$DebtReportImplCopyWith<$Res> {
  __$$DebtReportImplCopyWithImpl(
      _$DebtReportImpl _value, $Res Function(_$DebtReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? month = null,
    Object? year = null,
    Object? startingDebt = null,
    Object? endingDebt = null,
    Object? debtChange = null,
  }) {
    return _then(_$DebtReportImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      startingDebt: null == startingDebt
          ? _value.startingDebt
          : startingDebt // ignore: cast_nullable_to_non_nullable
              as double,
      endingDebt: null == endingDebt
          ? _value.endingDebt
          : endingDebt // ignore: cast_nullable_to_non_nullable
              as double,
      debtChange: null == debtChange
          ? _value.debtChange
          : debtChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DebtReportImpl implements _DebtReport {
  const _$DebtReportImpl(
      {required this.customerId,
      required this.month,
      required this.year,
      required this.startingDebt,
      required this.endingDebt,
      required this.debtChange});

  @override
  final String customerId;
  @override
  final int month;
  @override
  final int year;
  @override
  final double startingDebt;
  @override
  final double endingDebt;
  @override
  final double debtChange;

  @override
  String toString() {
    return 'DebtReport(customerId: $customerId, month: $month, year: $year, startingDebt: $startingDebt, endingDebt: $endingDebt, debtChange: $debtChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebtReportImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.startingDebt, startingDebt) ||
                other.startingDebt == startingDebt) &&
            (identical(other.endingDebt, endingDebt) ||
                other.endingDebt == endingDebt) &&
            (identical(other.debtChange, debtChange) ||
                other.debtChange == debtChange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId, month, year,
      startingDebt, endingDebt, debtChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebtReportImplCopyWith<_$DebtReportImpl> get copyWith =>
      __$$DebtReportImplCopyWithImpl<_$DebtReportImpl>(this, _$identity);
}

abstract class _DebtReport implements DebtReport {
  const factory _DebtReport(
      {required final String customerId,
      required final int month,
      required final int year,
      required final double startingDebt,
      required final double endingDebt,
      required final double debtChange}) = _$DebtReportImpl;

  @override
  String get customerId;
  @override
  int get month;
  @override
  int get year;
  @override
  double get startingDebt;
  @override
  double get endingDebt;
  @override
  double get debtChange;
  @override
  @JsonKey(ignore: true)
  _$$DebtReportImplCopyWith<_$DebtReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Invoice {
  int get invoiceId => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  DateTime get invoiceDate => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  double get remainingAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {int invoiceId,
      int customerId,
      DateTime invoiceDate,
      double totalAmount,
      double paymentAmount,
      double remainingAmount});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? customerId = null,
    Object? invoiceDate = null,
    Object? totalAmount = null,
    Object? paymentAmount = null,
    Object? remainingAmount = null,
  }) {
    return _then(_value.copyWith(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int invoiceId,
      int customerId,
      DateTime invoiceDate,
      double totalAmount,
      double paymentAmount,
      double remainingAmount});
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? customerId = null,
    Object? invoiceDate = null,
    Object? totalAmount = null,
    Object? paymentAmount = null,
    Object? remainingAmount = null,
  }) {
    return _then(_$InvoiceImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remainingAmount: null == remainingAmount
          ? _value.remainingAmount
          : remainingAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {required this.invoiceId,
      required this.customerId,
      required this.invoiceDate,
      required this.totalAmount,
      required this.paymentAmount,
      required this.remainingAmount});

  @override
  final int invoiceId;
  @override
  final int customerId;
  @override
  final DateTime invoiceDate;
  @override
  final double totalAmount;
  @override
  final double paymentAmount;
  @override
  final double remainingAmount;

  @override
  String toString() {
    return 'Invoice(invoiceId: $invoiceId, customerId: $customerId, invoiceDate: $invoiceDate, totalAmount: $totalAmount, paymentAmount: $paymentAmount, remainingAmount: $remainingAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.remainingAmount, remainingAmount) ||
                other.remainingAmount == remainingAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId, customerId,
      invoiceDate, totalAmount, paymentAmount, remainingAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final int invoiceId,
      required final int customerId,
      required final DateTime invoiceDate,
      required final double totalAmount,
      required final double paymentAmount,
      required final double remainingAmount}) = _$InvoiceImpl;

  @override
  int get invoiceId;
  @override
  int get customerId;
  @override
  DateTime get invoiceDate;
  @override
  double get totalAmount;
  @override
  double get paymentAmount;
  @override
  double get remainingAmount;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoiceInfo {
  int get invoiceId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceInfoCopyWith<InvoiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceInfoCopyWith<$Res> {
  factory $InvoiceInfoCopyWith(
          InvoiceInfo value, $Res Function(InvoiceInfo) then) =
      _$InvoiceInfoCopyWithImpl<$Res, InvoiceInfo>;
  @useResult
  $Res call(
      {int invoiceId,
      int id,
      int quantity,
      double unitPrice,
      double totalPrice});
}

/// @nodoc
class _$InvoiceInfoCopyWithImpl<$Res, $Val extends InvoiceInfo>
    implements $InvoiceInfoCopyWith<$Res> {
  _$InvoiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? id = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceInfoImplCopyWith<$Res>
    implements $InvoiceInfoCopyWith<$Res> {
  factory _$$InvoiceInfoImplCopyWith(
          _$InvoiceInfoImpl value, $Res Function(_$InvoiceInfoImpl) then) =
      __$$InvoiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int invoiceId,
      int id,
      int quantity,
      double unitPrice,
      double totalPrice});
}

/// @nodoc
class __$$InvoiceInfoImplCopyWithImpl<$Res>
    extends _$InvoiceInfoCopyWithImpl<$Res, _$InvoiceInfoImpl>
    implements _$$InvoiceInfoImplCopyWith<$Res> {
  __$$InvoiceInfoImplCopyWithImpl(
      _$InvoiceInfoImpl _value, $Res Function(_$InvoiceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? id = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_$InvoiceInfoImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InvoiceInfoImpl implements _InvoiceInfo {
  const _$InvoiceInfoImpl(
      {required this.invoiceId,
      required this.id,
      required this.quantity,
      required this.unitPrice,
      required this.totalPrice});

  @override
  final int invoiceId;
  @override
  final int id;
  @override
  final int quantity;
  @override
  final double unitPrice;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'InvoiceInfo(invoiceId: $invoiceId, id: $id, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceInfoImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, invoiceId, id, quantity, unitPrice, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      __$$InvoiceInfoImplCopyWithImpl<_$InvoiceInfoImpl>(this, _$identity);
}

abstract class _InvoiceInfo implements InvoiceInfo {
  const factory _InvoiceInfo(
      {required final int invoiceId,
      required final int id,
      required final int quantity,
      required final double unitPrice,
      required final double totalPrice}) = _$InvoiceInfoImpl;

  @override
  int get invoiceId;
  @override
  int get id;
  @override
  int get quantity;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookPurchaseReceipt {
  int? get receiptId => throw _privateConstructorUsedError;
  DateTime get purchaseDate => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  List<BookPurchaseReceiptInfo> get receipts =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookPurchaseReceiptCopyWith<BookPurchaseReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookPurchaseReceiptCopyWith<$Res> {
  factory $BookPurchaseReceiptCopyWith(
          BookPurchaseReceipt value, $Res Function(BookPurchaseReceipt) then) =
      _$BookPurchaseReceiptCopyWithImpl<$Res, BookPurchaseReceipt>;
  @useResult
  $Res call(
      {int? receiptId,
      DateTime purchaseDate,
      int totalAmount,
      List<BookPurchaseReceiptInfo> receipts});
}

/// @nodoc
class _$BookPurchaseReceiptCopyWithImpl<$Res, $Val extends BookPurchaseReceipt>
    implements $BookPurchaseReceiptCopyWith<$Res> {
  _$BookPurchaseReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = freezed,
    Object? purchaseDate = null,
    Object? totalAmount = null,
    Object? receipts = null,
  }) {
    return _then(_value.copyWith(
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      receipts: null == receipts
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<BookPurchaseReceiptInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookPurchaseReceiptImplCopyWith<$Res>
    implements $BookPurchaseReceiptCopyWith<$Res> {
  factory _$$BookPurchaseReceiptImplCopyWith(_$BookPurchaseReceiptImpl value,
          $Res Function(_$BookPurchaseReceiptImpl) then) =
      __$$BookPurchaseReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? receiptId,
      DateTime purchaseDate,
      int totalAmount,
      List<BookPurchaseReceiptInfo> receipts});
}

/// @nodoc
class __$$BookPurchaseReceiptImplCopyWithImpl<$Res>
    extends _$BookPurchaseReceiptCopyWithImpl<$Res, _$BookPurchaseReceiptImpl>
    implements _$$BookPurchaseReceiptImplCopyWith<$Res> {
  __$$BookPurchaseReceiptImplCopyWithImpl(_$BookPurchaseReceiptImpl _value,
      $Res Function(_$BookPurchaseReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = freezed,
    Object? purchaseDate = null,
    Object? totalAmount = null,
    Object? receipts = null,
  }) {
    return _then(_$BookPurchaseReceiptImpl(
      receiptId: freezed == receiptId
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as int?,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<BookPurchaseReceiptInfo>,
    ));
  }
}

/// @nodoc

class _$BookPurchaseReceiptImpl implements _BookPurchaseReceipt {
  const _$BookPurchaseReceiptImpl(
      {this.receiptId,
      required this.purchaseDate,
      required this.totalAmount,
      required final List<BookPurchaseReceiptInfo> receipts})
      : _receipts = receipts;

  @override
  final int? receiptId;
  @override
  final DateTime purchaseDate;
  @override
  final int totalAmount;
  final List<BookPurchaseReceiptInfo> _receipts;
  @override
  List<BookPurchaseReceiptInfo> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString() {
    return 'BookPurchaseReceipt(receiptId: $receiptId, purchaseDate: $purchaseDate, totalAmount: $totalAmount, receipts: $receipts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookPurchaseReceiptImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiptId, purchaseDate,
      totalAmount, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookPurchaseReceiptImplCopyWith<_$BookPurchaseReceiptImpl> get copyWith =>
      __$$BookPurchaseReceiptImplCopyWithImpl<_$BookPurchaseReceiptImpl>(
          this, _$identity);
}

abstract class _BookPurchaseReceipt implements BookPurchaseReceipt {
  const factory _BookPurchaseReceipt(
          {final int? receiptId,
          required final DateTime purchaseDate,
          required final int totalAmount,
          required final List<BookPurchaseReceiptInfo> receipts}) =
      _$BookPurchaseReceiptImpl;

  @override
  int? get receiptId;
  @override
  DateTime get purchaseDate;
  @override
  int get totalAmount;
  @override
  List<BookPurchaseReceiptInfo> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$BookPurchaseReceiptImplCopyWith<_$BookPurchaseReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookPurchaseReceiptInfo {
  Book get book => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookPurchaseReceiptInfoCopyWith<BookPurchaseReceiptInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookPurchaseReceiptInfoCopyWith<$Res> {
  factory $BookPurchaseReceiptInfoCopyWith(BookPurchaseReceiptInfo value,
          $Res Function(BookPurchaseReceiptInfo) then) =
      _$BookPurchaseReceiptInfoCopyWithImpl<$Res, BookPurchaseReceiptInfo>;
  @useResult
  $Res call({Book book, int quantity, double purchasePrice});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$BookPurchaseReceiptInfoCopyWithImpl<$Res,
        $Val extends BookPurchaseReceiptInfo>
    implements $BookPurchaseReceiptInfoCopyWith<$Res> {
  _$BookPurchaseReceiptInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? quantity = null,
    Object? purchasePrice = null,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookPurchaseReceiptInfoImplCopyWith<$Res>
    implements $BookPurchaseReceiptInfoCopyWith<$Res> {
  factory _$$BookPurchaseReceiptInfoImplCopyWith(
          _$BookPurchaseReceiptInfoImpl value,
          $Res Function(_$BookPurchaseReceiptInfoImpl) then) =
      __$$BookPurchaseReceiptInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, int quantity, double purchasePrice});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$BookPurchaseReceiptInfoImplCopyWithImpl<$Res>
    extends _$BookPurchaseReceiptInfoCopyWithImpl<$Res,
        _$BookPurchaseReceiptInfoImpl>
    implements _$$BookPurchaseReceiptInfoImplCopyWith<$Res> {
  __$$BookPurchaseReceiptInfoImplCopyWithImpl(
      _$BookPurchaseReceiptInfoImpl _value,
      $Res Function(_$BookPurchaseReceiptInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? quantity = null,
    Object? purchasePrice = null,
  }) {
    return _then(_$BookPurchaseReceiptInfoImpl(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BookPurchaseReceiptInfoImpl implements _BookPurchaseReceiptInfo {
  const _$BookPurchaseReceiptInfoImpl(
      {required this.book,
      required this.quantity,
      required this.purchasePrice});

  @override
  final Book book;
  @override
  final int quantity;
  @override
  final double purchasePrice;

  @override
  String toString() {
    return 'BookPurchaseReceiptInfo(book: $book, quantity: $quantity, purchasePrice: $purchasePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookPurchaseReceiptInfoImpl &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, quantity, purchasePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookPurchaseReceiptInfoImplCopyWith<_$BookPurchaseReceiptInfoImpl>
      get copyWith => __$$BookPurchaseReceiptInfoImplCopyWithImpl<
          _$BookPurchaseReceiptInfoImpl>(this, _$identity);
}

abstract class _BookPurchaseReceiptInfo implements BookPurchaseReceiptInfo {
  const factory _BookPurchaseReceiptInfo(
      {required final Book book,
      required final int quantity,
      required final double purchasePrice}) = _$BookPurchaseReceiptInfoImpl;

  @override
  Book get book;
  @override
  int get quantity;
  @override
  double get purchasePrice;
  @override
  @JsonKey(ignore: true)
  _$$BookPurchaseReceiptInfoImplCopyWith<_$BookPurchaseReceiptInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Book {
  int? get id => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  BookTitle get title => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  int get publicationYear => throw _privateConstructorUsedError;
  int get quantityInStock => throw _privateConstructorUsedError;
  double get sellingPrice => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {int? id,
      Author author,
      BookTitle title,
      Category category,
      String publisher,
      int publicationYear,
      int quantityInStock,
      double sellingPrice,
      double purchasePrice});

  $AuthorCopyWith<$Res> get author;
  $BookTitleCopyWith<$Res> get title;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = null,
    Object? title = null,
    Object? category = null,
    Object? publisher = null,
    Object? publicationYear = null,
    Object? quantityInStock = null,
    Object? sellingPrice = null,
    Object? purchasePrice = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BookTitle,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publicationYear: null == publicationYear
          ? _value.publicationYear
          : publicationYear // ignore: cast_nullable_to_non_nullable
              as int,
      quantityInStock: null == quantityInStock
          ? _value.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as int,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookTitleCopyWith<$Res> get title {
    return $BookTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Author author,
      BookTitle title,
      Category category,
      String publisher,
      int publicationYear,
      int quantityInStock,
      double sellingPrice,
      double purchasePrice});

  @override
  $AuthorCopyWith<$Res> get author;
  @override
  $BookTitleCopyWith<$Res> get title;
  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = null,
    Object? title = null,
    Object? category = null,
    Object? publisher = null,
    Object? publicationYear = null,
    Object? quantityInStock = null,
    Object? sellingPrice = null,
    Object? purchasePrice = null,
  }) {
    return _then(_$BookImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BookTitle,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      publicationYear: null == publicationYear
          ? _value.publicationYear
          : publicationYear // ignore: cast_nullable_to_non_nullable
              as int,
      quantityInStock: null == quantityInStock
          ? _value.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as int,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BookImpl implements _Book {
  const _$BookImpl(
      {this.id,
      required this.author,
      required this.title,
      required this.category,
      required this.publisher,
      required this.publicationYear,
      required this.quantityInStock,
      required this.sellingPrice,
      required this.purchasePrice});

  @override
  final int? id;
  @override
  final Author author;
  @override
  final BookTitle title;
  @override
  final Category category;
  @override
  final String publisher;
  @override
  final int publicationYear;
  @override
  final int quantityInStock;
  @override
  final double sellingPrice;
  @override
  final double purchasePrice;

  @override
  String toString() {
    return 'Book(id: $id, author: $author, title: $title, category: $category, publisher: $publisher, publicationYear: $publicationYear, quantityInStock: $quantityInStock, sellingPrice: $sellingPrice, purchasePrice: $purchasePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publicationYear, publicationYear) ||
                other.publicationYear == publicationYear) &&
            (identical(other.quantityInStock, quantityInStock) ||
                other.quantityInStock == quantityInStock) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, author, title, category,
      publisher, publicationYear, quantityInStock, sellingPrice, purchasePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);
}

abstract class _Book implements Book {
  const factory _Book(
      {final int? id,
      required final Author author,
      required final BookTitle title,
      required final Category category,
      required final String publisher,
      required final int publicationYear,
      required final int quantityInStock,
      required final double sellingPrice,
      required final double purchasePrice}) = _$BookImpl;

  @override
  int? get id;
  @override
  Author get author;
  @override
  BookTitle get title;
  @override
  Category get category;
  @override
  String get publisher;
  @override
  int get publicationYear;
  @override
  int get quantityInStock;
  @override
  double get sellingPrice;
  @override
  double get purchasePrice;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Category {
  int? get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int? categoryId, String categoryName});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? categoryId, String categoryName});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryName = null,
  }) {
    return _then(_$CategoryImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryImpl implements _Category {
  const _$CategoryImpl({this.categoryId, required this.categoryName});

  @override
  final int? categoryId;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'Category(categoryId: $categoryId, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);
}

abstract class _Category implements Category {
  const factory _Category(
      {final int? categoryId,
      required final String categoryName}) = _$CategoryImpl;

  @override
  int? get categoryId;
  @override
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookTitle {
  int? get bookTitleId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String get bookTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookTitleCopyWith<BookTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookTitleCopyWith<$Res> {
  factory $BookTitleCopyWith(BookTitle value, $Res Function(BookTitle) then) =
      _$BookTitleCopyWithImpl<$Res, BookTitle>;
  @useResult
  $Res call({int? bookTitleId, int? categoryId, String bookTitle});
}

/// @nodoc
class _$BookTitleCopyWithImpl<$Res, $Val extends BookTitle>
    implements $BookTitleCopyWith<$Res> {
  _$BookTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookTitleId = freezed,
    Object? categoryId = freezed,
    Object? bookTitle = null,
  }) {
    return _then(_value.copyWith(
      bookTitleId: freezed == bookTitleId
          ? _value.bookTitleId
          : bookTitleId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookTitle: null == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookTitleImplCopyWith<$Res>
    implements $BookTitleCopyWith<$Res> {
  factory _$$BookTitleImplCopyWith(
          _$BookTitleImpl value, $Res Function(_$BookTitleImpl) then) =
      __$$BookTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? bookTitleId, int? categoryId, String bookTitle});
}

/// @nodoc
class __$$BookTitleImplCopyWithImpl<$Res>
    extends _$BookTitleCopyWithImpl<$Res, _$BookTitleImpl>
    implements _$$BookTitleImplCopyWith<$Res> {
  __$$BookTitleImplCopyWithImpl(
      _$BookTitleImpl _value, $Res Function(_$BookTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookTitleId = freezed,
    Object? categoryId = freezed,
    Object? bookTitle = null,
  }) {
    return _then(_$BookTitleImpl(
      bookTitleId: freezed == bookTitleId
          ? _value.bookTitleId
          : bookTitleId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      bookTitle: null == bookTitle
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookTitleImpl implements _BookTitle {
  const _$BookTitleImpl(
      {this.bookTitleId, this.categoryId, required this.bookTitle});

  @override
  final int? bookTitleId;
  @override
  final int? categoryId;
  @override
  final String bookTitle;

  @override
  String toString() {
    return 'BookTitle(bookTitleId: $bookTitleId, categoryId: $categoryId, bookTitle: $bookTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookTitleImpl &&
            (identical(other.bookTitleId, bookTitleId) ||
                other.bookTitleId == bookTitleId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookTitleId, categoryId, bookTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookTitleImplCopyWith<_$BookTitleImpl> get copyWith =>
      __$$BookTitleImplCopyWithImpl<_$BookTitleImpl>(this, _$identity);
}

abstract class _BookTitle implements BookTitle {
  const factory _BookTitle(
      {final int? bookTitleId,
      final int? categoryId,
      required final String bookTitle}) = _$BookTitleImpl;

  @override
  int? get bookTitleId;
  @override
  int? get categoryId;
  @override
  String get bookTitle;
  @override
  @JsonKey(ignore: true)
  _$$BookTitleImplCopyWith<_$BookTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Author {
  int? get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({int? authorId, String authorName});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = freezed,
    Object? authorName = null,
  }) {
    return _then(_value.copyWith(
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? authorId, String authorName});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = freezed,
    Object? authorName = null,
  }) {
    return _then(_$AuthorImpl(
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorImpl implements _Author {
  const _$AuthorImpl({this.authorId, required this.authorName});

  @override
  final int? authorId;
  @override
  final String authorName;

  @override
  String toString() {
    return 'Author(authorId: $authorId, authorName: $authorName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorId, authorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);
}

abstract class _Author implements Author {
  const factory _Author(
      {final int? authorId, required final String authorName}) = _$AuthorImpl;

  @override
  int? get authorId;
  @override
  String get authorName;
  @override
  @JsonKey(ignore: true)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InventoryReport {
  int get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get startingQuantity => throw _privateConstructorUsedError;
  int get quantityChange => throw _privateConstructorUsedError;
  int get endingQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryReportCopyWith<InventoryReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReportCopyWith<$Res> {
  factory $InventoryReportCopyWith(
          InventoryReport value, $Res Function(InventoryReport) then) =
      _$InventoryReportCopyWithImpl<$Res, InventoryReport>;
  @useResult
  $Res call(
      {int month,
      int year,
      int id,
      int startingQuantity,
      int quantityChange,
      int endingQuantity});
}

/// @nodoc
class _$InventoryReportCopyWithImpl<$Res, $Val extends InventoryReport>
    implements $InventoryReportCopyWith<$Res> {
  _$InventoryReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? id = null,
    Object? startingQuantity = null,
    Object? quantityChange = null,
    Object? endingQuantity = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startingQuantity: null == startingQuantity
          ? _value.startingQuantity
          : startingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityChange: null == quantityChange
          ? _value.quantityChange
          : quantityChange // ignore: cast_nullable_to_non_nullable
              as int,
      endingQuantity: null == endingQuantity
          ? _value.endingQuantity
          : endingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryReportImplCopyWith<$Res>
    implements $InventoryReportCopyWith<$Res> {
  factory _$$InventoryReportImplCopyWith(_$InventoryReportImpl value,
          $Res Function(_$InventoryReportImpl) then) =
      __$$InventoryReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int month,
      int year,
      int id,
      int startingQuantity,
      int quantityChange,
      int endingQuantity});
}

/// @nodoc
class __$$InventoryReportImplCopyWithImpl<$Res>
    extends _$InventoryReportCopyWithImpl<$Res, _$InventoryReportImpl>
    implements _$$InventoryReportImplCopyWith<$Res> {
  __$$InventoryReportImplCopyWithImpl(
      _$InventoryReportImpl _value, $Res Function(_$InventoryReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? id = null,
    Object? startingQuantity = null,
    Object? quantityChange = null,
    Object? endingQuantity = null,
  }) {
    return _then(_$InventoryReportImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startingQuantity: null == startingQuantity
          ? _value.startingQuantity
          : startingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityChange: null == quantityChange
          ? _value.quantityChange
          : quantityChange // ignore: cast_nullable_to_non_nullable
              as int,
      endingQuantity: null == endingQuantity
          ? _value.endingQuantity
          : endingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InventoryReportImpl implements _InventoryReport {
  const _$InventoryReportImpl(
      {required this.month,
      required this.year,
      required this.id,
      required this.startingQuantity,
      required this.quantityChange,
      required this.endingQuantity});

  @override
  final int month;
  @override
  final int year;
  @override
  final int id;
  @override
  final int startingQuantity;
  @override
  final int quantityChange;
  @override
  final int endingQuantity;

  @override
  String toString() {
    return 'InventoryReport(month: $month, year: $year, id: $id, startingQuantity: $startingQuantity, quantityChange: $quantityChange, endingQuantity: $endingQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReportImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startingQuantity, startingQuantity) ||
                other.startingQuantity == startingQuantity) &&
            (identical(other.quantityChange, quantityChange) ||
                other.quantityChange == quantityChange) &&
            (identical(other.endingQuantity, endingQuantity) ||
                other.endingQuantity == endingQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month, year, id,
      startingQuantity, quantityChange, endingQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryReportImplCopyWith<_$InventoryReportImpl> get copyWith =>
      __$$InventoryReportImplCopyWithImpl<_$InventoryReportImpl>(
          this, _$identity);
}

abstract class _InventoryReport implements InventoryReport {
  const factory _InventoryReport(
      {required final int month,
      required final int year,
      required final int id,
      required final int startingQuantity,
      required final int quantityChange,
      required final int endingQuantity}) = _$InventoryReportImpl;

  @override
  int get month;
  @override
  int get year;
  @override
  int get id;
  @override
  int get startingQuantity;
  @override
  int get quantityChange;
  @override
  int get endingQuantity;
  @override
  @JsonKey(ignore: true)
  _$$InventoryReportImplCopyWith<_$InventoryReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
