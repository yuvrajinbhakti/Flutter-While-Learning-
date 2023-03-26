// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1_from_basic/models/catalog.dart';

import '../models/cart.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;
  MyStore(
    this.catalog,
    this.cart,
  ) {
    catalog=CatalogModel();
    cart=CartModel();
    cart.catalog=catalog;
  }
}
