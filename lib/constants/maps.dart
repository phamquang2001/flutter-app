class AppMaps {
  AppMaps._();

  static Map<int, String> gender = {
    1: "Nam",
    2: "Nữ",
  };

  static Map<int, String> level = {
    1: "Trung ương",
    2: "Tỉnh thành phố",
    3: "Quận huyện",
    4: "Phường xã",
  };

  static Map<int, String> role = {
    1: "Cảnh sát",
    2: "Cảnh sát trưởng",
  };

  static Map<String, String> userStatus = {
    "ACTIVE": "Hoạt động",
    "DELETED": "Xóa",
  };

  static Map<String, String> requestStatus = {
    "WAIT": "Chờ duyệt",
    "ACCEPT": "Đồng ý",
    "Reject": "Từ chối",
  };

  static Map<int, String> assignStatus = {
    0: "Chưa phân công",
    1: "Đã phân công",
  };
}
