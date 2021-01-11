import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bloc.fetchAllCountries();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Popular Movies'),
      // ),
      // body: StreamBuilder(
      //   stream: bloc.allCountries,
      //   builder: (context, AsyncSnapshot<CountryModel> snapshot) {
      //     if (snapshot.hasData) {
      //       return buildList(snapshot);
      //     } else if (snapshot.hasError) {
      //       return Text(snapshot.error.toString());
      //     }
      //     return Center(child: CircularProgressIndicator());
      //   },
      // ),
      body: Center(
        child: Text('Favorite List'),
      ),
    );
  }

//   Widget buildList(AsyncSnapshot<CountryModel> snapshot) {
//     List wids = [];
//     snapshot.data.data.forEach((key, value) {
//       wids.add(ListTile(
//         leading: Text(key.toString()),
//         title: Text(value.country.toString()),
//         subtitle: Text(value.region.toString().replaceAll('Region.', '')),
//         trailing:
//             IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
//       ));
//     });
//     wids.add(RaisedButton(
//       onPressed: () {
//         bloc.fetchAllCountriesNext(startingIndex + 10);
//         startingIndex += 10;
//       },
//       child: Text('Load More'),
//     ));
//     return ListView.builder(
//         itemCount: wids.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(child: wids[index]);
//         });
//   }
}
