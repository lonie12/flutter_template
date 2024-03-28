// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_rental.viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCarsHash() => r'f4fcb95926ede66d9966b784652116ad5976f5db';

/// See also [getCars].
@ProviderFor(getCars)
final getCarsProvider =
    AutoDisposeFutureProvider<ViewModel<List<Car>?>>.internal(
  getCars,
  name: r'getCarsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCarsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCarsRef = AutoDisposeFutureProviderRef<ViewModel<List<Car>?>>;
String _$rentCarHash() => r'e84a27aea6935391755bb91ebaef29ba8778eaa0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [rentCar].
@ProviderFor(rentCar)
const rentCarProvider = RentCarFamily();

/// See also [rentCar].
class RentCarFamily extends Family<AsyncValue<ViewModel<List<Car>?>>> {
  /// See also [rentCar].
  const RentCarFamily();

  /// See also [rentCar].
  RentCarProvider call({
    required String vehicleId,
  }) {
    return RentCarProvider(
      vehicleId: vehicleId,
    );
  }

  @override
  RentCarProvider getProviderOverride(
    covariant RentCarProvider provider,
  ) {
    return call(
      vehicleId: provider.vehicleId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'rentCarProvider';
}

/// See also [rentCar].
class RentCarProvider extends AutoDisposeFutureProvider<ViewModel<List<Car>?>> {
  /// See also [rentCar].
  RentCarProvider({
    required String vehicleId,
  }) : this._internal(
          (ref) => rentCar(
            ref as RentCarRef,
            vehicleId: vehicleId,
          ),
          from: rentCarProvider,
          name: r'rentCarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rentCarHash,
          dependencies: RentCarFamily._dependencies,
          allTransitiveDependencies: RentCarFamily._allTransitiveDependencies,
          vehicleId: vehicleId,
        );

  RentCarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vehicleId,
  }) : super.internal();

  final String vehicleId;

  @override
  Override overrideWith(
    FutureOr<ViewModel<List<Car>?>> Function(RentCarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RentCarProvider._internal(
        (ref) => create(ref as RentCarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vehicleId: vehicleId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ViewModel<List<Car>?>> createElement() {
    return _RentCarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RentCarProvider && other.vehicleId == vehicleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vehicleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RentCarRef on AutoDisposeFutureProviderRef<ViewModel<List<Car>?>> {
  /// The parameter `vehicleId` of this provider.
  String get vehicleId;
}

class _RentCarProviderElement
    extends AutoDisposeFutureProviderElement<ViewModel<List<Car>?>>
    with RentCarRef {
  _RentCarProviderElement(super.provider);

  @override
  String get vehicleId => (origin as RentCarProvider).vehicleId;
}

String _$carRentaLoaderHash() => r'91ba6ddc0747aff7552c9b3e21b70a67bb2a25ca';

/// See also [CarRentaLoader].
@ProviderFor(CarRentaLoader)
final carRentaLoaderProvider =
    AutoDisposeNotifierProvider<CarRentaLoader, bool>.internal(
  CarRentaLoader.new,
  name: r'carRentaLoaderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$carRentaLoaderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CarRentaLoader = AutoDisposeNotifier<bool>;
String _$rentCarControllerHash() => r'bbbd6588e0fb96d33813d06a0ea340687c9229b3';

/// See also [RentCarController].
@ProviderFor(RentCarController)
final rentCarControllerProvider =
    AutoDisposeNotifierProvider<RentCarController, RentCarState>.internal(
  RentCarController.new,
  name: r'rentCarControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rentCarControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RentCarController = AutoDisposeNotifier<RentCarState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
