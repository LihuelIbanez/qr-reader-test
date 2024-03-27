import 'package:equatable/equatable.dart';

class PackageInfo extends Equatable {
  final String? id;
  final String? name;
  final String? lastname;
  final String? packageState;

  const PackageInfo({
    this.id,
    this.name,
    this.lastname,
    this.packageState,
  });

  @override
  List<Object?> get props => [id, name, lastname, packageState];
}
