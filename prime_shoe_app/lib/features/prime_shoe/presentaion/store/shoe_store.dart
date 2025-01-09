// ignore_for_file: avoid_print

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

import '../../data/model/brand_type_details.dart';
import '../../data/model/product_catalog.dart';
import '../../data/model/product_details.dart';

class ShoeStore {
  ShoeStore() {
    print('****InIt****');
    getShoeData();
  }

  final dio = Dio();

  final Observable<int> selectedNavBar = Observable(0);
  final Observable<bool> isWishlisted = Observable(false);
  final Observable<List<ProductDetails>> productDetailsList = Observable([]);
  final Observable<List<BrandTypeDetails>> brandTypeDetailsList =
      Observable([]);
  void init() {}

  void dispose() {}
  void wishListedOnTap() {
    if (isWishlisted.value == false) {
      runInAction(() => isWishlisted.value = true);
    } else {
      runInAction(() => isWishlisted.value = false);
    }
  }

  void selectedNavBarOnTap(int index) {
    runInAction(
      () {
        selectedNavBar.value = index;
      },
    );
  }

  Future<ProductCatalog?> getShoeData() async {
    try {
      final baseUrl = Uri.parse('http://192.168.0.102:8080/productCatalog');
      final response = await dio.get(baseUrl.toString());
      print(response);

      if (response.statusCode == 200) {
        ProductCatalog productCatalogdata =
            ProductCatalog.fromJson(response.data);

        runInAction(() {
          productDetailsList.value = productCatalogdata.shoeDetailsList;
          brandTypeDetailsList.value = productCatalogdata.brandTypeDetailsList;
        });
        return productCatalogdata;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e, stackTrace) {
      print('Exception: $e');
      print('Stack Trace: $stackTrace');
    }
    return null;
  }
}
