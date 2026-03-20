import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class Toasts extends InheritedWidget {
  Toasts({required Widget child, super.key}) : super(child: ToastificationWrapper(child: child));

  static ToastsState? _instance;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => oldWidget != this;

  static ToastsState of(BuildContext context) => ToastsState._(context: context);

  static ToastsState get instance {
    _instance ??= const ToastsState._();
    return _instance!;
  }
}

@immutable
class ToastData {
  const ToastData({required this.title, this.message, this.icon});

  final String title;
  final String? message;
  final IconData? icon;

  @override
  String toString() => 'ToastData(title: $title, message: $message, icon: $icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ToastData &&
        other.title == title &&
        other.message == message &&
        other.icon == icon;
  }

  @override
  int get hashCode => title.hashCode ^ message.hashCode ^ icon.hashCode;
}

class ToastsState {
  const ToastsState._({this.context});

  final BuildContext? context;

  Future<void> showError(ToastData data) async {
    toastification.show(
      context: context,
      showIcon: true,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(data.title),
      type: ToastificationType.error,
      icon: data.icon != null ? Icon(data.icon) : null,
      description: data.message != null ? Text(data.message!) : null,
      style: ToastificationStyle.flat,
    );
  }

  Future<void> showSuccess(ToastData data) async {
    toastification.show(
      context: context,
      showIcon: true,
      autoCloseDuration: const Duration(seconds: 3),
      title: Text(data.title),
      type: ToastificationType.success,
      icon: data.icon != null ? Icon(data.icon) : null,
      description: data.message != null ? Text(data.message!) : null,
      style: ToastificationStyle.flat,
    );
  }
}
