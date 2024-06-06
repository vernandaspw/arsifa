enum DeviceType { Mobile, Tablet, Desktop, Laptop }

class ScreenResponsive {
  static DeviceType getDeviceType(double screenWidth) {
    if (screenWidth > 1600) {
      return DeviceType.Desktop;
    } else if (screenWidth > 1200) {
      return DeviceType.Laptop;
    } else if (screenWidth > 700) {
      return DeviceType.Tablet;
    } else {
      return DeviceType.Mobile;
    }
  }

  static double getMaxWidth(DeviceType deviceType, double screenWidth) {
    switch (deviceType) {
      case DeviceType.Desktop:
        return screenWidth * 0.3;
      case DeviceType.Laptop:
        return screenWidth * 0.4;
      case DeviceType.Tablet:
        return screenWidth * 0.6;
      case DeviceType.Mobile:
      default:
        return screenWidth;
    }
  }
}
