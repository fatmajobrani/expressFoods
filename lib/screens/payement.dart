import 'package:flutter/material.dart';
import 'package:rapido/screens/PaymentSuccess.dart';

class Payement extends StatelessWidget {
  const Payement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Order Summary",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                _buildOrderDetailRow("Order", "\4.5dt"),
                _buildOrderDetailRow("Taxes", "\0.5dt"),
                _buildOrderDetailRow("Delivery fees", "3.5dt"),
                Divider(),
                _buildOrderDetailRow(
                  "Total",
                  "\8.5dt",
                  isBold: true,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Estimated delivery time : 15 min",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          //Image.asset(
                          //  'assets/images/logoD17.png', // Remplacez par votre logo UPI
                          //  height: 50,
                          //  errorBuilder: (context, error, stackTrace) {
                          //    return Icon(Icons.error, color: Colors.red);
                          //  },
                          //),
                          const SizedBox(height: 10),
                          const Text(
                            "Scan the QR code using your UPI app to complete the payment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/img_QR.png', // Remplacez par votre QR code
                            height: 100,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.error, color: Colors.red);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildPaymentMethod(
                            "D17",
                            "Debit Card",
                            "533********112",
                            'assets/images/logoD17.png', // Remplacez par l'icône PayPal
                          ),
                          _buildPaymentMethod(
                            "Paymee",
                            "Debit Card",
                            "533********112",
                            'assets/images/paymee.png', // Remplacez par l'icône MasterCard
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Action du bouton
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF7DAA4F),
                            ),
                            child: const Text(
                              "\8.5dt",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PaymentSuccess()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF7DAA4F),
                            ),
                            child: const Text(
                              "Pay Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Méthode pour les moyens de paiement
  Widget _buildPaymentMethod(
      String method, String type, String cardNumber, String logoPath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
          logoPath,
          height: 40,
          width: 40,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error, color: Colors.red);
          },
        ),
        title: Text(
          method,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("$type\n$cardNumber"),
      ),
    );
  }

  Widget _buildOrderDetailRow(String title, String value,
      {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
