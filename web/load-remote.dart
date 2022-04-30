// （https://dart.dev/tutorials/web/fetch-data#using-getString-function）

import 'dart:async';
import 'dart:convert';
import 'dart:html';

final UListElement wordList = querySelector('#word-list') as UListElement;

void main() {
  querySelector('#getWords')!.onClick.listen(makeRequest);
}

Future<void> makeRequest(Event _) async {
  const path = 'portmanteaux.json';
  try {
    //Make the GET request t
    final jsonString = await HttpRequest.getString(path);
  } catch (e) {
    //The GET request failed. Handle the error.
    print("Could't open $path");
    wordList.children.add(LIElement()..text = 'Request failed');
  }
}
