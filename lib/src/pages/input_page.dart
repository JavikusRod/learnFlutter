import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _inputDateController = TextEditingController();

  late String _stuff = '';
  late String _email = '';
  late String _password = '';
  late String _date = '';
  late String _selectedOption = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            _createInput(),
            Divider(),
            _createMail(),
            Divider(),
            _createPassword(),
            Divider(),
            _createBirthDatePicker(context),
            Divider(),
            _createDropdown(),
            Divider(),
            ListTile(
              title: Text('Stuff written: $_stuff'),
              subtitle: Text('Email: $_email $_password'),
            ),
          ],
        ));
  }

  TextField _createInput() => TextField(
      onChanged: (value) => setState(() {
            _stuff = value;
          }),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          label: Text('Stuff'),
          hintText: 'Write stuff',
          counter: Text('qty of letters ${_stuff.length}'),
          icon: Icon(Icons.import_contacts_sharp),
          suffixIcon: Icon(Icons.title),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));

  TextField _createMail() => TextField(
      onChanged: (value) => setState(() {
            _email = value;
          }),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          label: Text('E-Mail'),
          hintText: 'E-Mail',
          icon: Icon(Icons.mail),
          suffixIcon: Icon(Icons.alternate_email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));

  TextField _createPassword() => TextField(
      onChanged: (value) => setState(() {
            _password = value;
          }),
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          label: Text('Password'),
          hintText: 'Password',
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.lock_open),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));

  TextField _createBirthDatePicker(BuildContext context) => TextField(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      controller: _inputDateController,
      decoration: InputDecoration(
          label: Text('Birth date'),
          hintText: 'Birth date',
          icon: Icon(Icons.calendar_today),
          suffixIcon: Icon(Icons.perm_contact_calendar),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        locale: Locale('es', 'ES'),
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2019),
        lastDate: new DateTime(2022));
    if (picked != null) {
      setState(() {
        _date = picked.toUtc().toString();
        _inputDateController.text = _date.substring(0, 10);
      });
    }
  }

  _createDropdown() => Row(children: [
        Icon(Icons.select_all),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: DropdownButton(
            isExpanded: true,
            items: const [
              DropdownMenuItem<String>(
                value: 'Dog',
                child: Text('Dog'),
              ),
              DropdownMenuItem<String>(
                value: 'Cats',
                child: Text('Cats'),
              ),
              DropdownMenuItem<String>(
                value: 'Stuff to select',
                child: Text('Stuff to select'),
              ),
            ],
            value: _selectedOption,
            onChanged: (opt) {
              setState(() {
                _selectedOption = opt.toString();
              });
            },
          ),
        ),
        SizedBox(
          width: 29,
        ),
      ]);
}
