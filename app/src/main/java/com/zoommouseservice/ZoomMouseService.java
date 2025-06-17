package com.zoommouseservice;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.graphics.Path;
import android.view.accessibility.AccessibilityEvent;

public class ZoomMouseService extends AccessibilityService {

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (event.getEventType() == AccessibilityEvent.TYPE_VIEW_SCROLLED) {
            int scrollValue = event.getScrollY();

            if (scrollValue > 0) {
                performPinchOut();
            } else {
                performPinchIn();
            }
        }
    }

    private void performPinchOut() {
        Path p1 = new Path();
        Path p2 = new Path();

        p1.moveTo(500, 800);
        p1.lineTo(400, 700);

        p2.moveTo(600, 800);
        p2.lineTo(700, 900);

        GestureDescription.Builder gestureBuilder = new GestureDescription.Builder();
        gestureBuilder.addStroke(new GestureDescription.StrokeDescription(p1, 0, 200));
        gestureBuilder.addStroke(new GestureDescription.StrokeDescription(p2, 0, 200));

        dispatchGesture(gestureBuilder.build(), null, null);
    }

    private void performPinchIn() {
        Path p1 = new Path();
        Path p2 = new Path();

        p1.moveTo(400, 700);
        p1.lineTo(500, 800);

        p2.moveTo(700, 900);
        p2.lineTo(600, 800);

        GestureDescription.Builder gestureBuilder = new GestureDescription.Builder();
        gestureBuilder.addStroke(new GestureDescription.StrokeDescription(p1, 0, 200));
        gestureBuilder.addStroke(new GestureDescription.StrokeDescription(p2, 0, 200));

        dispatchGesture(gestureBuilder.build(), null, null);
    }

    @Override
    public void onInterrupt() { }
}
