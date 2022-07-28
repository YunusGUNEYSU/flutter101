import 'package:flutter/material.dart';
import 'package:flutter101/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
   late final SharedManager _manager;
  @override
  void initState() {
    super.initState();
    _manager=SharedManager();
    _initialze();
    
  }
Future<void> _initialze() async {
_changeLoading();
 await _manager.init();
 _changeLoading();

 getDefaultValues();
}

Future<void> getDefaultValues() async {
  // final prefs = await SharedPreferences.getInstance();

  //   final int? counter = prefs.getInt('counter');
    _onChangedValue(_manager.getString(SharedKeys.counter)??'');
}

  void _onChangedValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton()
        ],
      ),
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions:  [
    isLoading ?      Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColorDark,)
          
          ):const SizedBox.shrink()
        
        ],
        
      ),
      body: TextField(
        onChanged: (value) {
          _onChangedValue(value);
          
        },
      ),
    );
  }

  FloatingActionButton _saveValueButton()  {
    return FloatingActionButton(
        onPressed: () async {
          _changeLoading();
        await _manager.saveString(SharedKeys.counter,_currentValue.toString());
           _changeLoading();
        },
        child: const Icon(Icons.save_alt_outlined));
  }
  FloatingActionButton _removeValueButton()  {
    return FloatingActionButton(
        onPressed: () async {
          _changeLoading();
          await _manager.removeItem(SharedKeys.counter);

           _changeLoading();
        },
        child: const Icon(Icons.remove_circle_outlined));
  }

}

//Generic
abstract class LoadingStatefull<T extends StatefulWidget>extends State<T>{
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
