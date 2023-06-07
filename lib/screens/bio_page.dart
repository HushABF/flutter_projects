import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/card_tile.dart';

class Bio extends StatelessWidget {
  // const Bio({super.key});
  const Bio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.transparent),
        title:
            const Text("Profile", style: TextStyle(color: Colors.indigoAccent)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.cyanAccent,
              Colors.blue,
              Colors.blueGrey,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://scontent.fgza4-1.fna.fbcdn.net/v/t1.6435-9/119836589_3316752611775906_3073247440784293343_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-OcMvYgnwC0AX9a_C3a&_nc_ht=scontent.fgza4-1.fna&oh=00_AfBFj29Ca6G6RrRhEk5SRoAKpjAjsZyg2cBKBBJ542ywzg&oe=64A57BC4'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Ahmed Al-Haj - Mobile Developer",
                style: GoogleFonts.rubik(
                    fontSize: 20, fontWeight: FontWeight.w600, height: 0.7)),
            Text("Al-Azhar University - Software Engineering 3rd year",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                )),
            const Divider(
              thickness: 2,
              color: Colors.yellow,
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            CardTile(
              leadingIcon: Icons.phone_android_outlined,
              title: "Mobile",
              subTitle: "0567007048",
              trailingIcon: Icons.phone,
              onPressed: () {
                _showMessage(context, message: "Call us Now !");
              },
              marginBottom: 20,
            ),
            CardTile(
              leadingIcon: Icons.email_outlined,
              title: "Email",
              subTitle: "nkbh12342@gmail.com",
              trailingIcon: Icons.email,
              onPressed: () {
                _showMessage(context, message: "Send an Email !");
              },
            ),
            const Spacer(),
            const Text("Tech Box - 2023"),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.greenAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(milliseconds: 2000),
      padding: const EdgeInsets.all(20),
    ));
  }
}
