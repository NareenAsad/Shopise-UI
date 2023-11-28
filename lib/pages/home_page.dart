import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/all_categories_list.dart';
import 'package:flutter_application_3/pages/categorey_page.dart';
import 'package:flutter_application_3/pages/login_page.dart';
import 'package:flutter_application_3/utils/custom_widget.dart';
import 'package:flutter_application_3/utils/data.dart';
import 'package:flutter_application_3/utils/jsondata.dart';
import 'package:flutter_application_3/utils/util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: purple),
        elevation: 5,
        title: Center(
          child: Text(
            "Shopsie",
            style: TextStyle(
              fontSize: 42,
              fontFamily: 'EduTASBeginner',
              fontWeight: FontWeight.w500,
              color: purple,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: purple,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: purple,
          ),
          IconButton(
            icon: Icon(Icons.person_outline_sharp),
            onPressed: () {},
            color: purple,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: white,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEhUSEhIVFRUWEBAQEBIVFxUQFxMSFRUXFhUWFRYYHSggGBolGxUVITEhJSkrLi4uGB8zODMtNygtLjcBCgoKDg0OGhAQGi0dHSUtKy0rKy0rKy0tLSstKy0rLSsrKy0rLS0tLS0tLSsrLS0tLS8tLS0tNy0tLTctLS03Lf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAwIEBQYHAQj/xAA/EAACAQICBgcGBQIEBwAAAAAAAQIDEQQhBQYSMUFRBxMiYXGBkTJCUqGxwRRicoLRI+EkM3OiFUNTkrLw8f/EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAHBEBAQEBAAMBAQAAAAAAAAAAAAECEQMSMSEi/9oADAMBAAIRAxEAPwDGgA0wAAAAAAAAAAAAAABTUmoptuySu2+CAqIKuNpw9qpFeLRrek9Nzqtxp3jH0bXNvh4GNjC3eyLxtWJ09Qg0travxinJLxfAuo6RovdVh6o02TyPFZjq8jeoTUldNNc1mVGm4HGSoyvHd70OEl9n3m24XERqxU4vJ/J8U+8JYlABUAAAAAAAAAAAAAAAAAAAAAAAAAAANf1lxd2qS3JKc++/sp/X0NgNJxtTaqVJc6k/RPZXyiiVYiSsekUq8Vz9GQzxLe4jS7KKWStybXlwLFybFwLyrWUfHkXurWkurqbEn2Zv0nwfmYU8btmt6zXitwK6aCHB1NqnCXOEX6omNMAAAAAAAAAAAAAAAAAAAAAAAAABhK08Tja7wuEpSlZ2qy9lful7kPHNjvCTr3SmmdnsUneXvT3qPhzZrjh3v6/U3WlqhhKT2cXj5balsThhKMqsYS4xlVcWk14LwI9NaoUruWAxdPERs26FScYV0+UMkp+Ds/Ex7SunpY05xlz9URzp80vFOxXiKjhJxlGUZLfCScGvFPNFOCwtbFVI0qMHOcnaMI/V8l3lRZSdhdnZMJ0QUfwr6ycpYrqqjjKMmqcarj2Fs8Yp+t2ccSe5pp32XHjtXs1bnfIzNS/G/Wz68z5nsd62nldbX6b528jedB9HVWps/iXOEp0+sjh6KpzrKne23U62UYQV/dzk8+RqulNFujiJYdS2+3FQnbZ2oy3Nx91rNNcGmJSxvOGjFQio+yopR45WyJCPDUVThGC3RSS47iQ6OIAAAAAAAAAAAAAAAAAAAAAAAAKFSuqihhqsqU6zUKko7NtiN25yTTzim7eILzQ+Ip06u1UvdulCnK3ZjFyl1rlL3d8PQzv8jWPrZtGUsNhowpuEpSnGVVJSltKnf2mlJNt721d5s2XR9GhUinTlKUXmk5OpG6eeU72afDgcw03pWMpU60Lr8PRpx2915UpNytzi1dX4pnRNXEnWxNtyq0lbhtdVGTfjaS9Dz77OPZn1veMf0k6uUcZQg59iSxGHh10YpzjCpNU34q81vMpqxqvh8BDYoQs37dSWc5vvf2L7T2GlVw1enD25UanVvfaoot035SUX5EujMUq1OFWO6pTp1V4TipfczbbCZkq5tY5rqxqTBaTxmJqQbhTxMnhoy9lzqRVSUs99nJpHTGRT5Ca4tz1z7TGjquH28dU2KDjUdR1Os20o7baTTV5ScXKOyt+0c70FT66dTFTTvObVLazaiuL7392bR0lYKWJxbpTr1XTpRh/T7KTnJbd0krKyaW6/eWNOCikkrJJJJZWSPRifnXl8m+/ioAHRyAAAAAAAAAAAAAAAAAAAAAAAAA0ABTUgpJxe5pxfg1Y6HqFjVUpOVu32I17Z2qwgoX8JRUZLxOd1asYq8mkubdl8yHRWu1PB1lOk5VL2jVpwjJqpDg0920r5PyOfkx7R18W/Wu6pmL0SuqnPDvdFupR76Mm3sr9DbXhslxgNJ061NVIyWzs7Tb7Ozz2r7muJzTpE18wtWk6OEnUnWi01iKT6uEYZbdp++mrqyv4nCZt/Ho1qT9dUnV4LNlCOJ6ma31cJWgqtWdTD1JRhUjJubp7TsqsW80k3mt1r8s+2WM7zxrGpqOba80HDGzfCpSo1E+dk4P8A8fmYIynS/rDRi6VCk74iEnKdRWkqVJrOnK+9yai7cLGj4HT9Rf5yUk+MUlKPluZ6vHf5eTyT+q2QGLlrBQXvSfcoS/gu8Hj6db2JXfFNOLXkzbnxcgAAAAAAAAAAAAAAAAAAAAAAAjr14wW1JpLm/tzMDjNZc2qUcre3Ln3RKtZq3ahDknN+eSNaZG8yJquIlNtybk+/P0XAyep+sH/D8VGs4KcbOE4tJt038N/eRh0iR0L72StN4141mWNrTVCVsO4xuo3j1rte9WPNbrfU1elhZ1pqNGEqk90oQW07d/w+ZjpU5RT2JPNNcL7naz/9Z9G6n06E8LRnQpxp050adRQglFLaV2u/O5z1fWN4z739cKxuia+FapYilKntJumpWe1DuabzV7NGzaY6T6rwtKhh7xqKjCFeu9+3FbMlTXFu2/vOu6a0DQxlKVGtBOLTs/ehK2U4P3ZLfc+cNYNBVMBiJ4ernKPsztZVIP2Zx5J8uDuTNmvsXUuflWUW5Nzm2223m7tvm297PdtvIoRWpW3ep1ckiSiVxk0002mtzWTRFTVs2VxlcFZjCadnHKaU1z9mX8Mz2ExUasdqDut3enyZpZlNXMS41HC2U1fwcf7F6zY2YAFZAAAAAAAAAAAAAAAADyc0k28kk233I9MPrPWtTjBP259rh2Yq78r2XmCNf0li+sm5/E+z3RW4skVYh5oroxu7mXRTONidHoAhqVOC8zsvQvpTrMK6LedGo4r9E+1G3ndHHnFcja+jTSf4bHQTdo1U6UvHfD5/Ux5J3Lp47yu/Go9I+qS0jh24JfiKSc6Mt21zg3yZtsHcqZ583l676z2cfJ0ouLaaaabUovJxayaZ7CNzq3S5qXlLSGHjnvxdOK3rjWS5rK/qcmvfsrjva4I9Wb2debU5eKoz233Lcvuy5KacFFWSKishlNXIXrN8qb8rv+xizOarw/zJfpj6Z/cJWeABpgAAAAAAAAAAAAAAAANW1lrbVZR+CKj+6T2n8tj1NpbNFxVbrKjl8UpS8uHyFXP1Z1Pa9S5pKyLeCvJ+SLsy2Api82uRUED2nUcGpR9qMlKL74u6+h4Ar6R1c0lHE0KdWLynTjNeazMujlPQ/pnapzwsn2qUnWpd9Ob7S8pfJo6nTndXPJqcvHsl7JXs4Jppq6aaaeaae9M4N0i6mPR9Z1qUf8LUlk0m1Rm/clyi+D8uR3shxeGhVhKnUipQlFxnF5ppmsb5WN46+XItPc7hs3PXvo+ngW69G88Pe7lvnR7p/FHv9TSoS4PfwfNdx6JZfjz2cUzq8jY9U3/Tn/qfY16cEzP6pZRqL86+hWdM8ADTAAAAAAAAAAAAAAAACx01X2KMub7EfGWX0uadHNvwM5rRie1GC4Lafi8kYKm8m+4lbyowyzv3suSHDLskxFqieTT8mVHklcppPgBIAAi+0FpaWDxFPERz2JduPx0nlUh5rd3pH0To3GRqRjOElKE4qcJLNOLV0z5oOk9FGsLzwVR854dvgt8ofdHLy5/Ox28O+XldfQIMPVv4k5weizimcE000mmmmnmmnvTOF9Jmpv4Koq1CL6ipJ96o1H7vdF529DuzOedM+mo0MF1Cs6ld7K/LCOcpHTFvfxz8knOuMQldfJrkzZ9W6dqTfxTk/JZI0+NZvd7y/wByyN/wVHq6cYcopPx4npjyaqYAFZAAAAAAAAAAAAAAAAaHpPEynVm2vfkuCyi9lfQs5TeatvsnnzMjrHoydKc6lm4Sbkmtybzs14nRNb9X6OE0LCLo0+ujHCRlVUUp7cpwcntb+L9TGrx1xnsc1p7kVlD4FZUrwoqR4okAFMJ3Kihw4oqBXpVSxU6Mo1abtOE4zg+9c+57ikirMEfRGrGnYY2hDEU3vVpx4wnHKUX5mxUqm1n6nzv0f60f8PxHbb/D1bRrrfsNLs1Eu7c+7wOsVukDR1CLk8RGbavGFNOcn5I82sWXkeublna27E4iNOMpzkoxjFylJuyjFK7bbPmjXXWOWkcVOt/y03Tw8c8qSeTa4OW9+nAy+vWvmI0j/Sj/AEcO8+rTvKpZ5dZJcM/ZWXiaZGEm917tJW4t5I64xz64b17fF7oDDdbXhF7oydSXhFfy0b6YDVXRkqW3OpFxlJqMU+EVm35v6GfOrhQAFQAAAAAAAAAAAAAAABLg8L11WlR/6laEXx7K7cv9sZG0dMmWAkudfDJf96/gs9QcPt4za4U6M5fum1Fedk/UuumiX+CS54nDpeTlJ/JM47v9x6fHOYtcXqvIqTueTWRTReXgdHJIAeO4R6CjafI9VwKiCs8yctWwsUVN1ubS+/2KkU8fD7lQHs/d/cvo/sXuhqe1Xpr820/JN/wWEnu/V9mZzVSlerKXwwsvGX/wFbUADTmAAAAAAAAAAAAAAAAAADeejTD9itVt7VWME/ywWfzbMX011LYalH4sVBelKq/sbXqRQ2MFS5y26j/dJ2+VjknS5rB+Kxiw9N3p0G1Jrc6zVpv9qsvFyPPJ3b1fPG09Z/Qgi7MnWRDVVmdnFMelvGpYq64CYEcG3nwJAqio8i3ZNWZCs3bzfkEUwWXzZUetngV5Ld5r6/3Nt1VpWpOXxTb8lkajVfZZvmiaWxRpr8ib8Xn9yxnS7ABWAAAAAAAAAAAAAAAAAoqytF+DKyHE4inTSlVkow24KT/LtK9lxdr5AjqOkcS8BouU4+1SwkVH9eyl9WfPK3tt3bbcm97bzfzzMxr5rlV0nWaTlDDxlalSva6T9udt7fLgYWM+ym+XzOeZx21rqps8ktpfQg9plwkaZRKiyuNNIrAAIFM3ZAQTd2eRWV+bsvBHjzyW95fyySrlZLggqMAAeTWR0WCyXgvoc6luOgYKptU4S5wg/kixjSYAFZAAAAAAAAAAAAAAAAGaLrBjeurOzvCHZp8u9+b+huGlL9TUtv6uVvQ56SrFVN5rxf0LtwurcvmWLds+TLunUt4Ebj2Cs8ycpVn3lQKAAIENZ8CWUrFo227LewqTDxu7+Ufuzyo8ya2yvBZFuAAAUN01dnfDw7rx9GaWbXqpO9JrlUfzLGdM0ACsAAAAAAAAAAAAAAAAIcb/AJc/9Of0OcI9BK1D+/0Jqe5eCPQRqJKW8nABQABEVfcRUvb/AGv7ABU1bd6fUgABAABQ2XVD2an64/QAsZ18bAACsAAAAAAAAP/Z',
                ),
              ),
              accountName: Text('Claudia Alves',
                  style: TextStyle(
                      color: black, fontFamily: 'FjallaOne', fontSize: 16)),
              accountEmail: Text('hello@reallygreatsite.com',
                  style: TextStyle(
                      color: black, fontFamily: 'FjallaOne', fontSize: 16)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FjallaOne'),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Username'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('E-mail'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Password'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            vspace,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FjallaOne'),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: fashionData["categories"].length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoryPage(
                                  category: fashionData["categories"][index])));
                        },
                        leading: Image.asset(
                          fashionData["icons"][index],
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                        title: Text(fashionData["names"][index]),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://lagence.com/cdn/shop/products/036_10463.jpg?v=1689718771&width=480',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            vspace,
            vspace,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8.0),
                primary: white,
                onPrimary: purple,
                shadowColor: black.withOpacity(0.3),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'SHOP NOW',
                style: TextStyle(
                  color: purple,
                  fontSize: 14,
                ),
              ),
            ),
            vspace,
            vspace,
            Center(
              child: ClipRRect(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            vspace,
            vspace,
            Text(
              'TRENDING NOW',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallBox('All', purple),
                  hspace,
                  SmallBox('Dresses', lgrey),
                  hspace,
                  SmallBox('Accessories', lgrey),
                  hspace,
                  SmallBox('Dresses', lgrey),
                ],
              ),
            ),
            vspace,
            vspace,
            vspace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  MyCard(
                      price: "\$1399.89",
                      image:
                          'data:image/jpeg;base64,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',
                      title: "Celine Menswear"),
                  MyCard(
                    price: "\$3579.78",
                    title: "Rinestone Sandals",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIkYtIfQFWITBUi0IKb5oIqWumZfRoYVRnh_Ue70ImvShRKajdT3gWpq3icOFnTHDF460&usqp=CAU',
                  ),
                  MyCard(
                    price: "\$8459.99",
                    title: "Celine Jeans & Jacket",
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8PrgMGxwQBsiWWjKuN8yvT5M0yroxDbgz5h5K5gurf2S7K6SvIUBGNxIUOmIuMQixiE&usqp=CAU',
                  ),
                  MyCard(
                    price: "\$2599.99",
                    title: "Women Slingback Heels",
                    image:
                        'https://www.ndure.com/cdn/shop/files/W-HL-KIT-0045.jpg?v=1697623892',
                  ),
                  MyCard(
                    price: "\$2599.99",
                    title: "Celine Homme Winter",
                    image:
                        'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F02%2Fceline-homme-winter-2023-paris-syndrome-hedi-slimane-runway-show-review-54.jpg?cbr=1&q=90',
                  ),
                  MyCard(
                    price: "\$1569.00",
                    title: "Rose Gold Shoes",
                    image:
                        'https://media.boohoo.com/i/boohoo/ayy10787_black_xl_3',
                  ),
                ],
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'ACTUAL CATEGORIES',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://hips.hearstapps.com/harpersbazaaruk.cdnds.net/16/19/2560x1280/landscape-1462799006-denim-1.jpg?resize=640:*',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'Outwear',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Raincoats, sweaters, etc',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://sc02.alicdn.com/kf/HTB1AOstcQfb_uJkSne1q6zE4XXab.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'High Heels',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Shoes, sandals, etc',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://m.media-amazon.com/images/I/51YsJrMQxBL._AC_UY350_.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 300,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'Light dresses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            vspace,
            Text(
              'Evening, casual, home',
              style: TextStyle(
                fontSize: 12,
                color: grey,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'ONLY TRUSTED BRANDS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/1.jpg",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/2.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/3.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            vspace,
            vspace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/4.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/5.png",
                  width: 50,
                  height: 50,
                ),
                hspace,
                hspace,
                Image.asset(
                  "assets/images/6.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'NEW ARRIVALS',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            Text(
              'FALL 2021',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            vspace,
            vspace,
            Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFb94ZR4hA_5WqrbE0VaWsnsyh0XdAuFvzi8bOPFipY51O6cYUhqGyPgDYlPi7lpzFGqg&usqp=CAU',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            vspace,
            vspace,
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                backgroundColor: white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            vspace,
            vspace,
            vspace,
            Text(
              'RECOMENDED LOOKS FOR YOU',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            vspace,
            vspace,
            vspace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Gender: Female'),
                        SizedBox(width: 10),
                        Text('Style: Partywear'),
                        SizedBox(width: 10),
                        Text('Price range: All'),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(12),
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network(
                        'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/9/7/974031_2_oipc236ly1tdwydw.jpg',
                        fit: BoxFit.cover,
                      ),
                      vspace,
                      vspace,
                      Column(
                        children: [
                          Text(
                            '   In This look',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/2/7/27026320_43_u6qbozfnhpuh0jzi.jpg',
                              'Patterened Suit Blazer',
                              '\$43.90'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/e/a/eangelina-0009500110026213_front_faefetqwddhslwkp.jpg',
                              'Saddle Shoulder Bag',
                              '\$12.50'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          CircularBox(
                              'https://d2z0lqci37nukm.cloudfront.net/media/catalog/product/cache/0b77c2bcfc2e98f26722a5fcfbf20ee8/s/y/syconn-0629509520022511_front_6uw0d0ggvdwyfqnw.jpg',
                              'Leather Shoes',
                              '\$99.30'),
                          vspace,
                          Text(
                              '-----------------------------------------------'),
                          vspace,
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 10),
                                backgroundColor: white,
                                elevation: 5,
                              ),
                              child: Text(
                                'Buy it Now',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: purple,
                                ),
                              ),
                            ),
                          ),
                          vspace,
                          vspace,
                        ],
                      ),
                    ],
                  ),
                ),
                vspace,
                vspace,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '<   >',
                    style: TextStyle(
                      fontSize: 20,
                      color: grey,
                    ),
                  ),
                ),
                vspace,
                vspace,
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purple[50],
                    child: Column(
                      children: [
                        vspace,
                        ImageWithTextContainer(
                            imageUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcL3RbVJoCfr3dqsgp7c116xoeG5OTEksZZT5yY_-PIma28miRHlqE7Rv4SEosyeH4BJU&usqp=CAU',
                            accompanyingText: 'GET 20% OFF',
                            accompanyingText2:
                                'Leave your email and get a discount'),
                        vspace,
                        vspace,
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  color: lgrey,
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "  Enter your email",
                                      hintStyle: TextStyle(
                                        fontSize: 9,
                                        height: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  "Subscribe",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: white,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(purple),
                                  elevation: MaterialStateProperty.all(0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        vspace,
                        vspace,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            vspace,
            vspace,
          ],
        ),
      ),
    );
  }
}
