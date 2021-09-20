import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center
      (
        child: ElevatedButton
        (
          child: Text('Mostar Alerta'),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom
          (
            primary: Colors.blue,
            onPrimary: Colors.black,
            shape: StadiumBorder()
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: ()
        {
          Navigator.pop(context);
        },
      ),
    );
  }
  
  void _mostrarAlerta(BuildContext context)
  {
    showDialog
    (
      context: context, 
      barrierDismissible: true,
      builder: (context)
      {
        return AlertDialog
        (
          title: Text('Título'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          content: Column
          (
            mainAxisSize: MainAxisSize.min,
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Este es el contenido de la caja de la alerta',),
              ),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>
          [
              TextButton
              (
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton
              (
                child: Text('OK'),
                onPressed: () => {Navigator.of(context).pop()},
              )
          ],
        );
      }
    );
  }
}