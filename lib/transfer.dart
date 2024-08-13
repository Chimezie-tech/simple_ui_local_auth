import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  String _selectedCurrency = 'USD';
  final List<String> _currencies = ['USD', 'EUR', 'GBP', 'NGN'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Transfer'),
            leading: Icon(Icons.arrow_back_ios)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[200]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  SizedBox(height: 20),
                  Column(children: [
                    Text('You sending exactly?'),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '100k',
                          suffixIconColor: Colors.blue,
                          suffixIcon: Container(
                            height: 55,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.emoji_flags_rounded,
                                  color: Colors.red,
                                ),
                                Spacer(),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      value: _selectedCurrency,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedCurrency = newValue!;
                                        });
                                      },
                                      items: _currencies
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList()),
                                ),
                              ],
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
                      keyboardType: TextInputType.number,
                    )
                  ])
                ]),
          ),
        ));
  }
}
