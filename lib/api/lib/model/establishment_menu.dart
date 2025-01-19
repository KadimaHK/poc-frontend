//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EstablishmentMenu {
  /// Returns a new [EstablishmentMenu] instance.
  EstablishmentMenu({
    this.id,
    this.name,
    this.description,
    this.price,
    this.establishmentId,
    this.menuCategoryId,
    this.createdAt,
    this.updatedAt,
  });

  /// Note: This is a Primary Key.<pk/>
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  /// Note: This is a Foreign Key to `establishment.id`.<fk table='establishment' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? establishmentId;

  /// Note: This is a Foreign Key to `menu_category.id`.<fk table='menu_category' column='id'/>
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? menuCategoryId;

  String? createdAt;

  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EstablishmentMenu &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.price == price &&
    other.establishmentId == establishmentId &&
    other.menuCategoryId == menuCategoryId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (establishmentId == null ? 0 : establishmentId!.hashCode) +
    (menuCategoryId == null ? 0 : menuCategoryId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EstablishmentMenu[id=$id, name=$name, description=$description, price=$price, establishmentId=$establishmentId, menuCategoryId=$menuCategoryId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null)
      json[r'id'] = this.id;
    if (this.name != null)
      json[r'name'] = this.name;
    if (this.description != null)
      json[r'description'] = this.description;
    if (this.price != null)
      json[r'price'] = this.price;
    if (this.establishmentId != null)
      json[r'establishment_id'] = this.establishmentId;
    if (this.menuCategoryId != null)
      json[r'menu_category_id'] = this.menuCategoryId;
    if (this.createdAt != null)
      json[r'created_at'] = this.createdAt;
    if (this.updatedAt != null)
      json[r'updated_at'] = this.updatedAt;
    return json;
  }

  /// Returns a new [EstablishmentMenu] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EstablishmentMenu? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return EstablishmentMenu(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        price: num.tryParse('${json[r'price']}'),
        establishmentId: mapValueOfType<int>(json, r'establishment_id'),
        menuCategoryId: mapValueOfType<int>(json, r'menu_category_id'),
        createdAt: mapValueOfType<String>(json, r'created_at') ?? 'now()',
        updatedAt: mapValueOfType<String>(json, r'updated_at') ?? 'now()',
      );
    }
    return null;
  }

  static List<EstablishmentMenu> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EstablishmentMenu>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EstablishmentMenu.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EstablishmentMenu> mapFromJson(dynamic json) {
    final map = <String, EstablishmentMenu>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EstablishmentMenu.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EstablishmentMenu-objects as value to a dart map
  static Map<String, List<EstablishmentMenu>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EstablishmentMenu>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EstablishmentMenu.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }


}

