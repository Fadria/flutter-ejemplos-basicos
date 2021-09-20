import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Cards')
      ),

      body: ListView
      (
        padding: EdgeInsets.all(10.0),
        children: <Widget>
        [
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),

    );
  }

  Widget _cardTipo1()
  {
    return Card
    (
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column
      (
        children: 
        [
          ListTile
          (
            leading: Icon
            ( 
              Icons.photo_album,
              color: Colors.blue
            ),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('Aquí estamos con la descripción de la tarjeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles.'),
          ),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>
            [
              TextButton
              (
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton
              (
                child: Text('OK'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2()
  {
    final card = Container
    (
      //clipBehavior: Clip.antiAlias,
      child: Column
      (
        children: 
        [
          FadeInImage
          (
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://klsdental.es/wp-content/uploads/2018/10/travel-landscape-01.jpg'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image
          (
            image: NetworkImage('https://klsdental.es/wp-content/uploads/2018/10/travel-landscape-01.jpg'),
          ),*/
          Container(padding: EdgeInsets.all(10.0), child: Text('Blabalabalbalsbasd'))
        ],
      ),
    );

    return Container
    (
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>
        [
          BoxShadow
          (
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect
      (
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}