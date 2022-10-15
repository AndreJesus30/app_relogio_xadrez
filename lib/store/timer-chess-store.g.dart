// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer-chess-store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerChess on _TimerChess, Store {
  late final _$iniciadoAtom =
      Atom(name: '_TimerChess.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutosAtom =
      Atom(name: '_TimerChess.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: '_TimerChess.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$_TimerChessActionController =
      ActionController(name: '_TimerChess', context: context);

  @override
  void iniciar() {
    final _$actionInfo =
        _$_TimerChessActionController.startAction(name: '_TimerChess.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$_TimerChessActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos}
    ''';
  }
}
