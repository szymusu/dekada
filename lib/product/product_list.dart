import 'package:dekada/product/api.dart';
import 'package:dekada/product/product_list_element.dart';
import 'package:dekada/product.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return PruductList3();
  }
}

class PruductList2 extends StatefulWidget {
  const PruductList2({Key? key}) : super(key: key);

  @override
  _PruductList2State createState() => _PruductList2State();
}

class _PruductList2State extends State<PruductList2> {
  List<Product> products = List.empty(growable: true);

  void fetchProducts() async {
    final newProducts = await Api.getProductsRange(0, 10);
    setState(() {
      products.addAll(newProducts);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: products.map((e) => ProductListElement(product: e)).toList(),
    );
  }
}

class PruductList3 extends StatefulWidget {
  const PruductList3({Key? key}) : super(key: key);

  @override
  _PruductList3State createState() => _PruductList3State();
}

class _PruductList3State extends State<PruductList3> {
  final List<Product> products = List.empty(growable: true);
  bool _loading = false;

  void fetchMoreProducts(int amount, int offset) async {
    // final newProducts = await Future.delayed(Duration(seconds: 2), () {
    //   List<int> list = List.generate(amount, (index) => index + offset);
    //   return list;
    // });
    final newProducts = await Api.getProductsRange((offset / 10).floor(), 10);

    setState(() {
      products.addAll(newProducts);
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              var length = products.length;
              if (index >= length) {
                if (!_loading) {
                  print("Fetching from $length to ${length + 10}");
                  _loading = true;
                  fetchMoreProducts(10, length);
                }

                return Center(
                  child: LoadingBouncingGrid.square(
                    backgroundColor: Colors.purple,
                  ),
                );
              }

              return ProductListElement(product: products[index]);
              // return Center(
              //   child: Text(
              //     "${products[index]}",
              //     style: TextStyle(
              //       fontSize: 40,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // );
            },
            childCount: products.length + 2,
          ),
        )
      ],
    );
  }
}
