class Company_model {
  final int id;
  final String name;
  final String position;
  final String image;
  final String introduction;
  final String description;
  final String contact;
  final String profile;

  Company_model(
      {required this.id,
      required this.name,
      required this.position,
      required this.image,
        required this.introduction,
      required this.description,
      required this.contact,
      required this.profile});

  static List<Company_model> CompanyModels() => [
        Company_model(
            id: 0,
            name: 'Owais Ahmed Khan',
            position: 'CEO',
            image: 'assests/team/owais.jpg',
            introduction: "Chief Executive Officer of Zai Systems",
            description:
                "A chief executive officer (CEO) is the highest-ranking executive of a firm. CEOs act as the company's public face and make major corporate decisions.",
            contact: "+923346906960",
            profile:
                "https://www.facebook.com/zaisystems?paipv=0&eav=AfY8FerIphTkdF6U1gcw5SpXWpEET_yups6EeIAuM8C_BP-U5HU003uWYUWbtICGvcY"),
        Company_model(
          id: 1,
          name: 'Abdul Rafay Khan',
          position: 'COO',
          image: 'assests/team pictures/abdulrafay.jpg',
          introduction: "Chief Operating Officer of Zai Systems",
          description: "Our Expert",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 2,
          name: 'Huzaifa Ali',
          position: 'CTO',
          image: 'assests/team pictures/huzaifa.jpeg',
          introduction: "React developer at Zai Systems",
          description: "React Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 3,
          name: 'Mishal Riasat',
          position: 'Developer',
          image: 'assests/team/mishalriasat.jpeg',
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 4,
          name: 'Muhammad Saeed',
          position: 'Developer',
          image: 'assests/team/saeed.jpeg',
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 5,
          name: 'Fatima alvi',
          position: 'Developer',
          image: 'assests/team/fatima.jpg',
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 6,
          name: 'Sami Ahmad',
          position: 'Developer',
          image: 'assests/team/samiahmed.png',
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 7,
          name: 'M Furqan Latif',
          position: 'Web Developer',
          image: 'assests/team/mfurqan.jpg',
          introduction: "Web developer at Zai Systems",
          description: "Web Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 8,
          name: 'Aiman Atif',
          position: 'Developer',
          image: "assests/team/aimandev.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 9,
          name: 'Sameen Fatime',
          position: 'Developer',
          image: "assests/team/sameen.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 10,
          name: 'Soha Fatime',
          position: 'Developer',
          image: "assests/team/soha.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 11,
          name: 'Muhammad Nadeem',
          position: 'Developer',
          image: "assests/team/nadeem.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 12,
          name: 'Rashid Fareed',
          position: 'Developer',
          image: "assests/team/rashid.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 13,
          name: 'Muhammad Saad',
          position: 'Developer',
          image: "assests/team/saad.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 14,
          name: 'Waqas Mughal',
          position: 'Developer',
          image: "assests/team/waqasmughal.jpg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 15,
          name: 'Abdullah Asif',
          position: 'Developer',
          image: "assests/team/abdullahdeveloper.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 16,
          name: 'Talha Nasir',
          position: 'Developer',
          image: "assests/team/talha.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 17,
          name: 'Kumail Raza',
          position: 'Developer',
          image: "assests/team/kumailraza.jpg",
          introduction: "I am a developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 18,
          name: 'Ubaid Shah Nawaz',
          position: 'Developer',
          image: "assests/team/ubaidshah.jpg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 19,
          name: 'Usman Sohaib',
          position: 'Graphic Designer',
          image: "assests/team/usmansohaib.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Graphic Designer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 20,
          name: 'Tehseen Ullah',
          position: 'Developer',
          image: "assests/team/tehseenullah.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 21,
          name: 'Asad',
          position: 'Developer',
          image: "assests/team/asaddev.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 22,
          name: 'Hussnain Zafar',
          position: 'Developer',
          image: "assests/team/husnain.jpg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 23,
          name: 'Abubakar',
          position: 'Developer',
          image: "assests/team/abubakr.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 24,
          name: 'Malik Usman',
          position: 'Developer',
          image: "assests/team/malik.PNG",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 25,
          name: 'Waleed Butt',
          position: 'Developer',
          image: "assests/team/waleed.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 26,
          name: 'Faiq Dogar',
          position: 'Developer',
          image: "assests/team/faiq.jpeg",
          introduction: "Developer at Zai Systems",
          description: "Developer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 27,
          name: 'Izzah Malik',
          position: 'SEO Intern',
          image: "assests/team pictures/izzahmalik.jpeg",
          introduction: "SEO Intern at Zai Systems",
          description: "SEO Intern",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 28,
          name: 'Maniha',
          position: 'Graphic Designer',
          image: "assests/team pictures/maniha.jpeg",
          introduction: "Graphic Designer at Zai Systems",
          description: "Graphic Designer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 29,
          name: 'Mariyam',
          position: 'Graphic Intern',
          image: "assests/team pictures/mariyam.jpeg",
          introduction: "Graphic Intern at Zai Systems",
          description: "Graphic Intern",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 30,
          name: 'M.Irfan',
          position: 'Graphic Intern',
          image: "assests/team pictures/mIrfan.png",
          introduction: "Graphic Intern at Zai Systems",
          description: "Graphic Intern",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 31,
          name: 'Momin Mohsin',
          position: 'App Developer Intern',
          image: "assests/team pictures/mominmohsin.JPG",
          introduction: "App Developer Intern at Zai Systems",
          description: "App Developer Intern",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 32,
          name: 'Muneeb',
          position: 'Graphic Designer',
          image: "assests/team pictures/muneeb.jpg",
          introduction: "Graphic Designer at Zai Systems",
          description: "Graphic Designer",
          contact: "",
          profile: "",
        ),
        Company_model(
          id: 33,
          name: 'Shehr Bano',
          position: 'Graphic Intern',
          image: "assests/team pictures/shehrbano.jpeg",
          introduction: "Graphic Intern at Zai Systems",
          description: "Graphic Intern",
          contact: "",
          profile: "",
        ),
      ];
}
