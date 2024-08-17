import 'package:flutter/material.dart';
import 'package:myportfolio/business_card/Widget/business_card_holder.dart';
import 'package:myportfolio/business_card/Widget/personal_card.dart';
import 'package:myportfolio/business_card/second_page.dart';


class Edit_Contant extends StatefulWidget {
  const Edit_Contant({Key? key}) : super(key: key);

  @override
  State<Edit_Contant> createState() => _Edit_ContantState();
}

class _Edit_ContantState extends State<Edit_Contant> {
  TextEditingController _username = TextEditingController();
  TextEditingController _image = TextEditingController();
  TextEditingController _company = TextEditingController();
  TextEditingController _position = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _location = TextEditingController();
  TextEditingController _linkdin = TextEditingController();
  TextEditingController _instagram = TextEditingController();
  TextEditingController _Twitter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Containt Add'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              child: Text(
                'User Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              alignment: Alignment.centerLeft,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                prefixIcon: const Icon(Icons.person),
                hintText: 'User Name',
                labelText: 'User Name',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _image,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                prefixIcon: const Icon(Icons.camera),
                hintText: 'put image',
                labelText: 'put image',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _company,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.shopping_bag_sharp),
                hintText: 'Company',
                labelText: 'Company',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _position,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.paid_sharp),
                hintText: 'position',
                labelText: 'position',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            Align(
              child: Text(
                'Contact Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              alignment: Alignment.centerLeft,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _contact,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.phone),
                hintText: 'Contact number',
                labelText: 'Contact number',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.email_sharp),
                hintText: 'email',
                labelText: 'email',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _location,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.location_on_sharp),
                hintText: 'location',
                labelText: 'location',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            Align(
              child: Text('Social Media Link',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              alignment: Alignment.centerLeft,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _linkdin,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.phonelink_setup_sharp),
                hintText: ' linkedin link',
                labelText: 'linkedin link',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _Twitter,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.facebook_sharp),
                hintText: 'facebook link',
                labelText: 'facebook link',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4)),
            TextField(
              controller: _instagram,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: (20)),
                prefixIcon: const Icon(Icons.integration_instructions_sharp),
                hintText: 'instagram link',
                labelText: 'instagram link',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType: TextInputType.name,
            ),
            Padding(padding: EdgeInsets.all(4),),
            ElevatedButton(
                onPressed: () {
                  businessCardHolderList.add(BusinessCardHolder(
                      name: _username.text,
                      position: _position.text,
                      company: _company.text,
                      icon: Icons.person_add,
                      page: Personal_Card(
                        name: _username.text,
                        position: _position.text,
                        twitter: _Twitter.text,
                        contact: _contact.text,
                        email: _email.text,
                        linkdin: _linkdin.text,
                        instagram: _instagram.text,
                        image: _image.text,
                        location: _location.text,
                        company: _company.text,
                      )));
                  setState((){});
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => second_page()));
                },
                child: Text('Submit',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 24),
                ),)
          ],
        ),
      ),
    );
  }
}

