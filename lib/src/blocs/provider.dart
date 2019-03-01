import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
  final bloc = Bloc();
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  Provider({Key key , Widget child}) :super(key: key , child: child);
  static Bloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc ;
  }
}