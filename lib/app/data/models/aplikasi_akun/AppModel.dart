// models/app_model.dart
class AppModel {
  String id;
  int urut;
  String nama;
  String? img;
  String keterangan;
  String? url;
  bool isLocal;
  bool isAkun;
  bool isMaintenance;
  bool isActive;
  String? storageFolder;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  AppModel({
    required this.id,
    required this.urut,
    required this.nama,
    this.img,
    required this.keterangan,
    this.url,
    required this.isLocal,
    required this.isAkun,
    required this.isMaintenance,
    required this.isActive,
    this.storageFolder,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'],
      urut: json['urut'],
      nama: json['nama'],
      img: json['img'],
      keterangan: json['keterangan'],
      url: json['url'],
      isLocal: json['isLocal'],
      isAkun: json['isAkun'],
      isMaintenance: json['isMaintenance'],
      isActive: json['isActive'],
      storageFolder: json['storage_folder'],
      updatedBy: json['updatedBy'],
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
      updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
      deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'urut': urut,
      'nama': nama,
      'img': img,
      'keterangan': keterangan,
      'url': url,
      'isLocal': isLocal,
      'isAkun': isAkun,
      'isMaintenance': isMaintenance,
      'isActive': isActive,
      'storage_folder': storageFolder,
      'updatedBy': updatedBy,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }
}
