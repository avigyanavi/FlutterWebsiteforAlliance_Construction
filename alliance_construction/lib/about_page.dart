import 'package:flutter/material.dart';
import 'my_app_bar.dart';
import 'my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: MediaQuery.of(context).size.width > 720
            ? MyAppBar()
            : AppBar(
                title: Row(
                  children: [
                    Image.asset(
                      'images/maepl.jpg',
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Alliance Construction',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
      ),
      drawer: MediaQuery.of(context).size.width > 720 ? null : MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Alliance Construction is a Kolkata based Construction firm with Arindam Mukherjee as its Sole Proprietor. He is a graduate engineer having more than 33 years of experience in Residential, Commercial, and Industrial Construction. We possess all the necessary Statutory Registrations like GST, PF, ESI etc.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                SizedBox(height: 20),
                const Text(
                  'We also have our own consultancy firm which is equipped to meet all your design and architectural needs. With a team of experienced professionals, we ensure top-notch services tailored to your requirements. Additionally, we are venturing into the world of real estate development, aiming to bring innovative and quality projects to the market.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL('https://www.maepl.in/');
                  },
                  child: const Text(
                    'Consultancy firm',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  'Address: 34, C. R. Avenue, Kolkata, West Bengal, 700012, India',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                SizedBox(height: 10),
                const Text(
                  'Phone: 9831103666',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const Text(
                  'Email: allianceconstruction3123@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                SizedBox(height: 50),
                const Text(
                  'Jobs taken up by Alliance are listed below:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                ProjectDetails(
                  projectName: 'Saakar Cooperative',
                  projectDescription:
                      'Construction of G+8 storied residential project at New Town, Rajarhat of area around 40,000 Sq.ft. CLIENT’S NAME & ADDRESS M/S Saakar Cooperative Housing Society Ltd. 11 Hungerford Street, Kol 17.',
                ),
                ProjectDetails(
                  projectName: 'Orphanage Educational Centre',
                  projectDescription:
                      'Construction of G+4 storied institutional building at 296 Santipally, Kolkata. CLIENT’S NAME & ADDRESS M/S Christ Mission Ashram. 144 Santoshpur Avenue, Kol -75.',
                ),
                ProjectDetails(
                    projectName: 'Destination',
                    projectDescription:
                        '2 G+11 storied residential buildings of total area around 1,12,000 sqft at Konnagar, Hoogly. CLIENT’S NAME & ADDRESS M/S Peerless Developers Ltd. 13A Dacres Lane, Kol – 69.'),
                ProjectDetails(
                  projectName: 'Dikbalika',
                  projectDescription:
                      'One G+ 4 storied residential building of total area 28000 sqft at Ho-Chi-Minh Sarani, Behala. CLIENT’S NAME & ADDRESS M/S Peerless Developers Ltd. 13A Dacres Lane, Kol – 69.',
                ),
                ProjectDetails(
                  projectName: 'Sarosi',
                  projectDescription:
                      'Two nos. B+G+12 storied residential buildings at 197A, B.B.Chatterjee Street, Kasba, Kolkata of area around 1,55,000 sqft. CLIENT’s NAME AND ADDRESS Max Cement Pvt. Ltd. Eternity Building, Salt Lake City, Sector V, Salt Lake, Kolkata.',
                ),
                ProjectDetails(
                  projectName: 'Signet Towers',
                  projectDescription:
                      'One B+G+15 Storied IT Building at DN2, Sector V, Kolkata. CLIENT’S NAME AND ADDRESS Signet Infrastructures Pvt. Ltd. 34 Chittaranjan Avenue, Kolkata 12.',
                ),
                ProjectDetails(
                  projectName: 'Premium Residential Building at Dover Park',
                  projectDescription:
                      ' Construction of basement, ground and first floor of a residential building consisting of 35000 sq.ft. of area. Scope of work includes Civil, Structural, Architectural & Electrical work. CLIENT’S NAME & ADDRESS: M/s. Hemant Jalan 12, Dover Park Kolkata',
                ),
                ProjectDetails(
                  projectName: 'Housing Complex at Convent Road',
                  projectDescription:
                      'Housing Complex comprising four blocks of five storied residential apartments with a total area of 90000 sq.ft. Scope of work includes civil, structural, architectural, sanitary, plumbing and electrical work. CLIENT’S NAME & ADDRESS : Devine Mercantile Pvt. Ltd. 98, Christopher Road, Kolkata – 700 046.',
                ),
                ProjectDetails(
                  projectName: 'Brindavan Gardens Housing Complex',
                  projectDescription:
                      'Four blocks of twelve storied residential buildings with a total area of 2,10,000 sq.ft. Scope of work includes Civil, Structural, Architectural & Electrical work. CLIENT’S NAME & ADDRESS: Christopher Housing Developers Pvt. Ltd. 9/12, Lalbazar Street, Kolkata – 700 001.',
                ),
                ProjectDetails(
                  projectName: 'Siddharth',
                  projectDescription:
                      'Block C of twelve storied high residential complex at 14/2 Burdwan Road, Calcutta with an area of 35,000 sq.ft. Scope of work includes Civil, structural, architectural & electrical work. CLIENT’S NAME & ADDRESS: Sree Ganga Construction Company Pvt. Ltd. 14/2 Burdwan Road, Calcutta – 700 027',
                ),
                ProjectDetails(
                  projectName: 'Peerless Maurya Manson',
                  projectDescription:
                      'Housing Complex comprising two blocks of six storied each residential apartments with a total area of 86,000 sq.ft at 2 Moore Avenue, Kolkata. Scope of work includes civil, structural, sanitary, plumbing, electrical, landscaping and all finishing works. CLIENT’S NAME & ADDRESS: M/S Peerless Developers Ltd.9/3, Ekdalia Place Kolkata.',
                ),
                ProjectDetails(
                  projectName: 'Diamond Apartments',
                  projectDescription:
                      'Construction of three G+4 storied residential buildings at 95 Buroshibtala Main Road, Kolkata of area around 60,000 sq.ft. Scope of work includes all civil and structural works. CLIENT’S NAME & ADDRESS: B.D.Properties Pvt. Ltd. 68/2 Harish Mukherjee Road, Kolkata.',
                ),
                ProjectDetails(
                  projectName: 'New Alipore Residency',
                  projectDescription:
                      'Construction of three G+4 storied residential buildings at 45 Buroshibtala Main Road, Kolkata of area around 1,25,000 sq.ft. Scope of work includes all civil and structural works. CLIENT’S NAME & ADDRESS: Ravlon Properties Ltd. 35 Chittaranjan Avenue, Kolkata.',
                ),
                ProjectDetails(
                  projectName: 'Diamond City West',
                  projectDescription:
                      ' Construction of two G+13 storied residential buildings at Biren Roy Road, West at Behala, Kolkata. Scope of work includes all civil and structural works. CLIENT’S NAME AND ADDRESS Diamond Group. 68/2 Harish Mukherjee Road, Kolkata.',
                ),
                ProjectDetails(
                  projectName: 'Club Town, Greens',
                  projectDescription:
                      'Construction of G+5 residential buildings of total area over 2 lakh sq.ft. Scope of work includes all civil and structural jobs. CLIENT’S NAME & ADDRESS: Linton Developers Ltd. 5/1A Hungerford Street, Kolkata – 17.',
                ),
                ProjectDetails(
                  projectName: 'IRCON Employees Cooperative Housing',
                  projectDescription:
                      'Construction of G+10/11 storied residential building of area around 65,000 sq.ft. Scope of work includes all civil and structural jobs. CLIENT’S NAME & ADDRESS: IRCON Employees Co-operative Housing Society Ltd. 34/A Belvedere Road, Kolkata – 27',
                ),
                ProjectDetails(
                  projectName: 'FACOR Steel Plant at Bhadrak, Orissa',
                  projectDescription:
                      'Civil Work for 33 mba ferrochrome plant for Atmastco Ltd.',
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                const Text(
                  'We are registered with all the statutory authorities, and the details are as given below:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const Text(
                  '1. VAT Registration No:- 19533233090',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const Text(
                  '2. PF Registration No:- WSCAL0054106000',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const Text(
                  '3. ESI Registration No:- 04113103447754',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const Text(
                  '4. Service Tax Registration No:- AKHPM6495NSD001',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
                const SizedBox(height: 20),
                const Text(
                  'We have sufficient technical manpower, equipment, and labor force to take up any similar housing projects anywhere in West Bengal.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
      ),
      // Use the bottomNavigationBar property
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            _launchURL('https://www.minfotec.online/');
          },
          child: Text(
            'Copyright 2009, Alliance Construction, All Rights Reserved. Developed By Mukherjee Alliances Infotech Private Limited',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ProjectDetails extends StatelessWidget {
  final String projectName;
  final String projectDescription;

  ProjectDetails({
    required this.projectName,
    required this.projectDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text(
          '$projectName',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
        const SizedBox(height: 10),
        Text(
          '$projectDescription',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ],
    );
  }
}

//  class Footer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.all(10),
//       child: Center(
//         child: GestureDetector(
//           onTap: () {
//             _launchURL('https://www.minfotec.online/');
//           },
//           child: Text(
//             'Copyright 2009, Alliance Construction, All Rights Reserved. Developed By Mukherjee Alliances Infotech Private Limited',
//             style: TextStyle(color: Colors.white),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }
