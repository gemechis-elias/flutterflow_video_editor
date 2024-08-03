import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'vedio_editor_model.dart';
export 'vedio_editor_model.dart';

class VedioEditorWidget extends StatefulWidget {
  const VedioEditorWidget({
    super.key,
    this.file,
  });

  final FFUploadedFile? file;

  @override
  State<VedioEditorWidget> createState() => _VedioEditorWidgetState();
}

class _VedioEditorWidgetState extends State<VedioEditorWidget> {
  late VedioEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VedioEditorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          title: Text(
            'Video Editor Pro',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: custom_widgets.VideoEditor(
                width: double.infinity,
                height: double.infinity,
                file: widget.file!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
