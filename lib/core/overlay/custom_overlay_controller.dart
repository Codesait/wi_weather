import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class CustomOverlayController {

  // Private constructor to prevent external instantiation.
  CustomOverlayController._();
  OverlayEntry? _overlayEntry;

  // The one and only instance.
  static final CustomOverlayController instance =
  CustomOverlayController._();

  /// Creates the overlay entry with the provided widget builder.
  OverlayEntry _createOverlayEntry(BuildContext context, Widget overlayContent) {
    return OverlayEntry(
      builder: (context) => Positioned(
        // Adjust positioning as needed; this example centers the overlay.
        // top: fullHeight *.14,
        // left: fullWidth * 0.04,
        // right: fullWidth * 0.04,
        height: fullHeight,
        width: fullWidth,
        child: Material(
          elevation: 4,
          color: AppColors.black.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
          child: overlayContent,
        ),
      ),
    );
  }

  /// Opens the overlay if not already open.
  void showOverlay(BuildContext context, Widget overlayContent) {
    // Prevent duplicate overlays.
    if (_overlayEntry != null) return;
    _overlayEntry = _createOverlayEntry(context, overlayContent);
    Overlay.of(context).insert(_overlayEntry!);
  }

  /// Closes and disposes of the overlay.
  void closeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  /// Toggle overlay visibility: show if hidden, close if visible.
  void toggleOverlay(BuildContext context, Widget overlayContent) {
    if (_overlayEntry == null) {
      showOverlay(context, overlayContent);
    } else {
      closeOverlay();
    }
  }
}
