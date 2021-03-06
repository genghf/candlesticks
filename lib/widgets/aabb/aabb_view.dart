import 'package:flutter/material.dart';

import 'package:candlesticks/widgets/aabb/aabb_state.dart';
import 'package:candlesticks/widgets/aabb/aabb_context.dart';

class AABBView extends AABBState {
  AABBView() : super();


  @override
  Widget build(BuildContext context) {
    var uiCamera;
    if (widget.rangeX != null) {
      uiCamera =
          calUICamera(widget.rangeX.minX, widget.rangeX.maxX, widget.paddingY);
    }
    return AABBContext(
      getExtCandleDataIndexByX: getExtCandleDataIndexByX,
      onAABBChange: onAABBChange,
      uiCamera: uiCamera,
      durationMs: widget.durationMs,
      child: widget.child,
      extDataStream: exDataStream,
      minPoint: this.getMinPoint(),
      maxPoint: this.getMaxPoint(),
    );
  }
}
