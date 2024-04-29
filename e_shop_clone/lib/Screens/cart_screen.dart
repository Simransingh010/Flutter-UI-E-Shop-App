import 'package:e_shop_clone/Screens/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int tax = 0;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      fixedSize: MaterialStateProperty.all(
                        const Size.fromWidth(320),
                      ),
                      maximumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50))),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              'Add more',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<CartProvider>(
          builder: (context, cartProvider, _) {
            List<CartItem> items = cartProvider.cartItems;

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];

                      return CartItemWidget(
                        item: item,
                        itemCount: item.quantity,
                        onCountChanged: (int newCount) {},
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('GST(18%):'),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, _) {
                        double getAmount =
                            (cartProvider.getTotalCost() + tax) * 0.18;
                        return Text(
                          '\$ ${getAmount.toStringAsFixed(2)} ',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total:'),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, _) {
                        return Text(
                          '\$ ${(cartProvider.getTotalCost() + tax).toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Consumer<CartProvider>(
                      builder: (context, cartProvider, _) {
                        double gst = (cartProvider.getTotalCost() + tax) * 0.18;
                        double subTotal = cartProvider.getTotalCost() + tax;
                        double totalAmount = gst + subTotal;
                        return Text(
                          '\$ ${totalAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final int itemCount;
  final Function(int) onCountChanged;

  const CartItemWidget({
    Key? key,
    required this.item,
    required this.itemCount,
    required this.onCountChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: ListTile(
        title: Text(
          item.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: ${item.price}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                if (itemCount > 1) {
                  Provider.of<CartProvider>(context, listen: false)
                      .decreaseQuantity(item);
                  onCountChanged(itemCount - 1);
                } else {
                  Provider.of<CartProvider>(context, listen: false)
                      .removeFromCart(item);
                }
              },
            ),
            Text(itemCount.toString()),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false)
                    .increaseQuantity(item);
                onCountChanged(itemCount + 1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
