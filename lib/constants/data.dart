class LabelValue<T> {
  String label;
  T value;

  LabelValue({
    required this.label,
    required this.value,
  });
}

class AppData {
  AppData._();

  static List<LabelValue<int>> genders = [
    LabelValue(label: "Nam", value: 1),
    LabelValue(label: "Nữ", value: 2),
  ];

  static List<LabelValue<int>> levels = [
    LabelValue(label: "Trung ương", value: 1),
    LabelValue(label: "Tỉnh thành phố", value: 2),
    LabelValue(label: "Quận huyện", value: 3),
    LabelValue(label: "Phường xã", value: 4),
  ];

  static List<LabelValue<int>> roles = [
    LabelValue(label: "Cảnh sát", value: 1),
    LabelValue(label: "Cảnh sát trưởng", value: 2),
  ];

  static List<LabelValue<String>> userStatus = [
    LabelValue(label: "Hoạt động", value: "ACTIVE"),
    LabelValue(label: "Xóa", value: "DELETED"),
  ];

  static List<LabelValue<String>> requestStatus = [
    LabelValue(label: "Chờ duyệt", value: "WAIT"),
    LabelValue(label: "Đồng ý", value: "ACCEPT"),
    LabelValue(label: "Từ chối", value: "Reject"),
  ];

  static List<LabelValue> assignStatus = [
    LabelValue(label: "Chưa phân công", value: 0),
    LabelValue(label: "Đã phân công", value: 1),
  ];
}
