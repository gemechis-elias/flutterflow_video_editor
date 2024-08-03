import '/flutter_flow/flutter_flow_util.dart';
import 'vedio_editor_widget.dart' show VedioEditorWidget;
import 'package:flutter/material.dart';

class VedioEditorModel extends FlutterFlowModel<VedioEditorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
