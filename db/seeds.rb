User.destroy_all
Application.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
Document.destroy_all
UniversitiesProgram.destroy_all
Program.destroy_all
University.destroy_all
Notification.destroy_all

zeugnis = Document.create(name: "General University Entrance Qualification")
ml = Document.create(name: "Motivational letter")
sb = Document.create(name: "Sketchbook")
pass = Document.create(name: "Copy of your passport")
foto = Document.create(name: "Photo of yourself")
praktikum = Document.create(name: "Internship certificate")
sprachtest = Document.create(name: "English language Test")
eignung = Document.create(name: "Aptitude examination")
cv = Document.create(name: "CV")

architecture = Program.create(name: "Architecture")

aachen = University.create(name: "University of Applied Sciences Aachen", city: "Aachen", student_amount: "14356", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591781485/UoAS_Aachen_1_otddht.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796930/aachen_2_nlij3e.jpg"])
aachenup = UniversitiesProgram.create(university_id: aachen.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-aachen.de/fachbereiche/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "24.06.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822459/Uni_Aachen_logo_1_ewle6x.png", application_url: "https://www.fh-aachen.de/studium/architektur-ba/bewerbung/", university_info: "With over 14,500 students, almost 2,000 graduates annually, 10 faculties, around 90 degree programs, eleven institutes and five affiliated institutes as well as four competence platforms, the Aachen University of Applied Sciences with its two locations in Aachen and Jülich is one of the largest and most important universities of applied sciences in Germany. Around 240 professors and around 900 teaching, research and administrative employees work here …", application_info: "In the current university ranking of the Center for Higher Education Development (CHE), from 2019, our department did great again and is in the top group …")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "3")
aachena = Application.create(universities_program_id: aachenup.id, user_id: "")
ApplicationsDocument.create(application_id: aachena.id, document_id: "1")
ApplicationsDocument.create(application_id: aachena.id, document_id: "2")
ApplicationsDocument.create(application_id: aachena.id, document_id: "3")

augsburg = University.create(name: "University of Applied Sciences Augsburg", city: "Augsburg", student_amount: "6618", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591781496/UoAS_Augsburg.jpg_1_izhj4d.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796930/augsburg2_jn1oml.jpg"])
augsburgup = UniversitiesProgram.create(university_id: augsburg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "'https://www.hs-augsburg.de/Architektur-und-Bauwesen/Architektur-Bachelor.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", start_time: "24.06.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822459/Uni_Augsburg_logo_1_bzflne.png", application_url: "https://www.hs-augsburg.de/Bewerbung.html", university_info: "With over 6,500 students from 70 nations, our university is one of the largest universities for applied sciences in Bavarian Swabia. For us, teaching and learning are embedded in a climate of tolerance, mutual respect and openness to the latest developments in research and technology …", application_info: "The aim of the course is to enable students to act independently in the architectural field through practical, scientifically-based basic training. Students should meet the requirements for exercising their profession in accordance with the standards applicable in the Federal Republic of Germany and in the member states of the European Union. In addition, the students are said to have developed their own attitude in architecture with critical expertise and technical knowledge as well as a sensitization to architectural design. You are thus able to express the complexity of the subject in a competent and responsible manner towards society, the environment, culture and the principles inherent in the subject …")
UniversitiesProgramsDocument.create(universities_program_id: augsburgup.id, document_id: "1")
augsburga = Application.create(universities_program_id: augsburgup.id, user_id: "")
ApplicationsDocument.create(application_id: augsburga.id, document_id: "1")


bint = University.create(name: "Berlin International University of Applied Sciences", city: "Berlin", student_amount: "290", institution: "private", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796929/bint1_jdhnuo.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796929/bint2_xanl6i.jpg"])
bintup = UniversitiesProgram.create(university_id: bint.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.berlin-international.de/en/programs/ba-architecture/", discipline: "Arts, Design & Architecture", language: "english", semesters: "8 Semesters", start_time: "01.09.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822458/Berlin_int._uni_logo_bq8ldr.png", application_url: "https://www.berlin-international.de/en/admission/", university_info: "73 different nationalities are studying and teaching at Berlin International. 80% of our students are international and from four continents. 84% of our teaching staff have studied or worked at international universities. 100% personal contact to Professors and Lecturers …", application_info: "Our architecture program aims to offer students with the skills and specialized knowledge necessary to apply creative and responsible solutions in the filed of architecture. the program help students in understanding their role and responsibility as architects in any given physical and cultural context, whether local or international. upon completing the program, graduates will be able to apply their understanding of spaces as a whole and use their knowledge of the relationships between built environment, technology and geographical, social, sociocultural, and political contexts to solve complex architectural challenges …")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "7")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "3")
binta = Application.create(universities_program_id: bintup.id, user_id: "")
ApplicationsDocument.create(application_id: binta.id, document_id: "4")
ApplicationsDocument.create(application_id: binta.id, document_id: "1")
ApplicationsDocument.create(application_id: binta.id, document_id: "7")
ApplicationsDocument.create(application_id: binta.id, document_id: "3")


tuberlin = University.create(name: "Technical University Berlin", city: "Berlin", student_amount: "34708", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591781509/tu_berlin_2_l4kj1a.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796928/tuberlin2_lzufzi.jpg"])
tuberlinup = UniversitiesProgram.create(university_id: tuberlin.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.architektur.tu-berlin.de/menue/studium/studiengaenge/bachelor_architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "26.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822458/tu_berlin_logo_yo8kqc.png", application_url: "‘https://www.architektur.tu-berlin.de/menue/studium/bewerbung/", university_info: "The Technical University of Berlin is a traditional and globally recognized research university. We want to further develop science and technology for the benefit of our society. The members of the university are committed to the principle of sustainable development, which meets the requirements of the present and at the same time does not come at the expense of future generations …", application_info: "The students learn the skills in technical, constructive, legal and social knowledge as well as the ability for convincing design and sustainability in the bachelor's degree and can then deepen it in the master's program.
Excursions and the encounter with the built reality provide practical relevance. With increasing specialization, diverse links with other disciplines lead to cooperation with energy experts, civil engineers, art historians, urban and regional planners, landscape planners, artists and other experts.
With this field of activity, architects also assume responsibility towards society for an appropriate and sustainable design of our living spaces …")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "4")
tuberlina = Application.create(universities_program_id: tuberlinup.id, user_id: "")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "1")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "2")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "4")


dresden = University.create(name: "Technical University Dresden", city: "Dresden", student_amount: "31126", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796928/dresden1_x3hv2i.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796941/dresden2_z8rxdb.jpg"])
dresdenup = UniversitiesProgram.create(university_id: dresden.id, program_id: "1", quota: "", degree: "Diploma course", webpage_url: "https://tu-dresden.de/studium/vor-dem-studium/studienangebot/sins/sins_studiengang?autoid=267", discipline: "Arts, Design & Architecture", language: "german", semesters: "11 Semesters", start_time: "20.08.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822459/Uni_dresden_logo_2_zkrui2.jpg", application_url: "https://tu-dresden.de/studium/vor-dem-studium/bewerbung/online-bewerbung", university_info: "The TUD is one of the largest technical universities in Germany and one of the leading and most dynamic universities in Germany. With 18 faculties in five areas, it offers a wide range of 124 courses and covers a broad research spectrum. Her areas of focus, biomedicine and bioengineering, materials science, information technology and microelectronics, energy and the environment, as well as culture and social change, are considered exemplary across Germany and Europe …", application_info: "The architecture course imparts knowledge, skills and abilities for the design and project planning of buildings and structural systems as well as for urban planning. Optionally, in-depth studies can be carried out on special building planning (residential buildings, public buildings, commercial buildings, social and health buildings and interior design) or on urban and spatial planning, on special basics and methods of monument preservation as well as in other special areas …")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "6")
dresdena = Application.create(universities_program_id: dresdenup.id, user_id: "")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "1")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "4")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "6")

fra = University.create(name: "Frankfurt University of Applied Sciences", city: "Frankfurt", student_amount: "15560", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796930/fra1_w4fouo.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796931/fra2_l49ngf.jpg"])
fraup = UniversitiesProgram.create(university_id: fra.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.frankfurt-university.de/de/studium/bachelor-studiengange/architektur-ba/fuer-studieninteressierte/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822954/uni_frankfurt_logo_1_ndqixe.png", application_url: "https://www.frankfurt-university.de/de/studium/bachelor-studiengange/architektur-ba/fuer-studieninteressierte/", university_info: "Over 15,000 students from over 100 nations. 270 teachers, 730 employees, and 16 scientific institutions. Founding member of the consortium universities in European metropolitan regions. Four departments with 70 courses. Approximately 200 partner universities in 51 countries on six continents. Strong  research focus is the Demographic change, mobility and logistics, digitization and information / communication technologies as well as renewable energies …", application_info: "The Bachelor's degree focuses on the topics of design and construction, which are dealt with in increasingly complex tasks. The application-related training provides a high degree of general and special knowledge as well as communication and team skills …")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "2")
fraa = Application.create(universities_program_id: fraup.id, user_id: "")
ApplicationsDocument.create(application_id: fraa.id, document_id: "1")
ApplicationsDocument.create(application_id: fraa.id, document_id: "4")
ApplicationsDocument.create(application_id: fraa.id, document_id: "3")
ApplicationsDocument.create(application_id: fraa.id, document_id: "2")



hamburg = University.create(name: "HafenCity University Hamburg", city: "Hamburg", student_amount: "2316", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796929/hh1_rk7jaf.jpg","https://res.cloudinary.com/donatadietz/image/upload/v1591796930/hh2_c1az8q.jpg"])
hamburgup = UniversitiesProgram.create(university_id: hamburg.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.hcu-hamburg.de/bachelor/architektur/studiengang/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822954/Uni_hamburg_logo_2_ob8gr2.png", application_url: "https://www.hcu-hamburg.de/sv/fuer-studieninteressierte/bewerbung-bachelor/", university_info: "HafenCity Universität Hamburg was founded by the Free and Hanseatic City of Hamburg on January 1, 2006 as a university for architecture and spatial development by merging four departments from three Hamburg universities …", application_info: "A special quality of both architecture study programs is the work in design projects. The projects form the core of the course and are taught in a mono-, interdisciplinary and cooperative manner.
In the projects, architectural topics are deepened in drafts and exercises. Both individually and in groups of different sizes, students develop concepts and strategies for one to two semesters and can thus apply the knowledge and skills they have learned …")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "4")
hamburga = Application.create(universities_program_id: hamburgup.id, user_id: "")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "1")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "8")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "4")

hannover = University.create(name: "Gottfried Wilhelm Leibniz University Hannover", city: "Hannover", student_amount: "607", institution: "private", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591781562/Leibniz_uni_1_mqulaj.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796425/hannover2_ewdaho.jpg"])
hannoverup = UniversitiesProgram.create(university_id: hannover.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.uni-hannover.de/de/studium/studienangebot/info/studiengang/detail/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822967/Uni_Hannover_logo_vjqtgf.png", application_url: "https://www.uni-hannover.de/fileadmin/luh/studium/ordnungen/zugang/sonstige/bach_architektur.pdf", university_info: "Shaping the future with knowledge - As one of the nine leading technical universities in Germany, Leibniz Universität sees it as its responsibility to contribute to the sustainable, peaceful and responsible solution to key future tasks. The competence for this grows from the wide range of subjects, which ranges from engineering and natural sciences to architecture and environmental planning, law and economics to research-rich social and humanities …", application_info: "The central content of architecture is the designing, shaping and constructing of buildings. Architects are responsible for a building activity that requires sound knowledge and a clear judgment about material and construction, use and impact, management and economy, sustainability and acceptance …")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "4")
hannovera = Application.create(universities_program_id: hannoverup.id, user_id: "")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "1")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "8")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "4")

heidelberg = University.create(name: "University of Applied Sciences Heidelberg", city: "Heidelberg", student_amount: "3494", institution: "private", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796307/hd1_pir74a.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796306/hd2_gcm6cv.jpg"])
heidelbergup = UniversitiesProgram.create(university_id: heidelberg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.hochschule-heidelberg.de/de/studium/bachelorstudium/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822967/Uni_HD_logo_1_rq4wnn.png", application_url: "https://www.hochschule-heidelberg.de/de/studium/bachelorstudium/architektur/", university_info: "The SRH - Heidelberg Rehabilitation Foundation - is a leading provider of educational and health services. It operates private universities, educational centers, schools and hospitals. With 14,501 employees, the SRH looks after more than a million educational customers and patients each year and generates sales of just over one billion euros. The group of companies is owned by SRH Holding, a non-profit foundation based in Heidelberg. The goal of the SRH is to improve the quality of life and the life chances of its customers.", application_info: "Architecture is omnipresent, it is everywhere where people live and work. And: It is one of the most complex specialist areas there is. Your admission ticket is creativity, because it is an essential prerequisite for fun and success in designing. With it you also open up technical possibilities when you implement your ideas. In the School of Engineering and Architecture you study with us in an interdisciplinary manner. This is how you set the course for your broad-based expertise. You work with engineers in lectures and interdisciplinary projects. You will get to know and organize the complex processes and procedures behind your concepts …")
UniversitiesProgramsDocument.create(universities_program_id: heidelbergup.id, document_id: "1")
heidelberga = Application.create(universities_program_id: heidelbergup.id, user_id: "")
ApplicationsDocument.create(application_id: heidelberga, document_id: "1")

karlsruhe = University.create(name: "Technical Institute Karlsruhe", city: "Karlsruhe", student_amount: "23646", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796142/kit1_utrbys.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796141/kit2_k53bio.jpg"])
karlsruheup = UniversitiesProgram.create(university_id: karlsruhe.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "http://www.arch.kit.edu/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822459/Kit_logo_xsupaz.png", application_url: "http://www.arch.kit.edu/studienangebot/bachelor_architektur.php", university_info: "With over 9,000 employees and an annual budget of almost 800 million euros, one of the world's largest research and teaching institutions was created in Karlsruhe with the potential to occupy a leading position worldwide in selected research areas. The goal: KIT will become an institution for top-class research and excellent scientific training as well as an outstanding location for academic life, lifelong learning, extensive further education, unlimited knowledge exchange and a sustainable culture of innovation.", application_info: "The job profile of architecture encompasses a wide range of activities related to the built environment. In addition to the design and planning of concrete buildings, it is also about urban planning and concepts of how we will live together in the future. Depending on the task, in addition to artistic design, questions of building construction, planning, business management, project management, urban planning, building technology or sociology or architectural theory can be important. The Faculty of Architecture consists of 20 subject areas and 3 teaching areas, which convey the diverse knowledge that is required for the profession of architect...")
UniversitiesProgramsDocument.create(universities_program_id: karlsruheup.id, document_id: "1")
karlsruhea = Application.create(universities_program_id: karlsruheup.id, user_id: "")
ApplicationsDocument.create(application_id: karlsruhea.id, document_id: "1")

koeln = University.create(name: "Technical University Cologne", city: "Cologne", student_amount: "26562", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591796012/ko%CC%88ln1_v13zr3.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591796012/ko%CC%88ln_2_rfiuxj.jpg"])
koelnup = UniversitiesProgram.create(university_id: koeln.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.th-koeln.de/studium/architektur-bachelor_3341.php", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "20.08.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822459/TU_k%C3%B6ln_logo_whljos.png", application_url: "‘https://www.th-koeln.de/studium/architektur-bachelor--bewerbung_3333.php", university_info: "The Technical University of Cologne - TH Cologne for short - sees itself as a University of Technology, Arts, Sciences. With its disciplinary and cultural diversity and openness, it shapes social innovation and makes substantial contributions to solving social challenges. We form a community of teachers and learners and see ourselves as a learning organization that breaks new ground. For example, the TH Köln is one of the pioneers nationwide in the development and design of new university didactic concepts...", application_info: "In order for this responsible task to succeed, the best foundations for the complex and multifaceted work of the architect are laid in the bachelor's program. This training is followed by focused master's programs at the Faculty of Architecture.
The close relationship between students, professors and assistants is particularly important when it comes to architecture training in Cologne. With its extensive range of courses, the Faculty of Architecture Cologne offers one of the largest offers of universities of applied sciences in Germany, in a city that has a 2000-year history of architecture - from the Romans to the present day - for viewing...")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "6")
koelna = Application.create(universities_program_id: koelnup.id, user_id: "")
ApplicationsDocument.create(application_id: koelna.id, document_id: "1")
ApplicationsDocument.create(application_id: koelna.id, document_id: "8")
ApplicationsDocument.create(application_id: koelna.id, document_id: "6")



constance = University.create(name: "University Constance", city: "Constance", student_amount: "4876", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591795857/konstanz1_rjvazp.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591795857/konstanz2_latc2v.jpg"])
constanceup = UniversitiesProgram.create(university_id: constance.id, program_id: "1", quota: "40 Students", degree: "Bachelor of Arts", webpage_url: "https://www.htwg-konstanz.de/bachelor/architektur/uebersicht/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822967/konstlogoneu_y0mq8q.png", application_url: "https://www.htwg-konstanz.de/bachelor/architektur/studium/bewerbung/", university_info: "The HTWG - University of Konstanz Technology, Business and Design is a modern university with an application-oriented profile. It has a wide range of subjects and benefits from the interdisciplinarity and the combination of theory and practice.
The university is a partner for innovation-oriented companies and motivated, creative people in research and development, technology transfer and further education. It is an essential part of the international scientific and economic region of Lake Constance...", application_info: "In contrast to many other professions, the work of architects is always visible, it shapes the living space of people. Even if they may have nothing to do with a specific building - the influence on public space is always there...")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "4")
constancea = Application.create(universities_program_id: constanceup.id, user_id: "")
ApplicationsDocument.create(application_id: constancea.id, document_id: "1")
ApplicationsDocument.create(application_id: constancea.id, document_id: "3")
ApplicationsDocument.create(application_id: constancea.id, document_id: "4")


munich = University.create(name: "Technical University Munich", city: "Munich", student_amount: "42202", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591355034/TUM2_bqy4rd.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591355030/TUM1_wayrut.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591780895/tumbild_jomjki.jpg"])
munichup = UniversitiesProgram.create(university_id: munich.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.tum.de/studium/studienangebot/detail/architektur-bachelor-of-arts-ba/", discipline: "Arts, Design & Architecture", language: "german", semesters: "8 Semesters", start_time: "31.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822458/TUM_Logo_extern_mt_DE_RGB_p_dmxmmx.png", application_url: "https://www.tum.de/studium/bewerbung/onlinebewerbung/", university_info: "The Technical University of Munich (TUM) is one of the best universities in Europe. They are characterized by excellence in research and teaching, interdisciplinarity and talent promotion. There are also strong alliances with companies and scientific institutions around the world. The TUM is one of the first three universities of excellence in Germany. It regularly performs excellently in international and national rankings...", application_info: "
The first four semesters teach the basics of perception and design, the methodology of architectural design, as well as the basics of natural science, technology, and the humanities and social sciences. They are therefore predominantly characterized by compulsory subjects.
In the 5th and 6th semester, the study takes place at a foreign partner university. The learning content will continue to be closely coordinated with the Faculty of Architecture at the TU Munich...")
UniversitiesProgramsDocument.create(universities_program_id: munichup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: munichup.id, document_id: "9")
UniversitiesProgramsDocument.create(universities_program_id: munichup.id, document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: munichup.id, document_id: "6")
UniversitiesProgramsDocument.create(universities_program_id: munichup.id, document_id: "4")
municha = Application.create(universities_program_id: munichup.id, user_id: "")
ApplicationsDocument.create(application_id: municha.id, document_id: "1")
ApplicationsDocument.create(application_id: municha.id, document_id: "9")
ApplicationsDocument.create(application_id: municha.id, document_id: "2")
ApplicationsDocument.create(application_id: municha.id, document_id: "6")
ApplicationsDocument.create(application_id: municha.id, document_id: "4")


muenster = University.create(name: "University of Applied Sciences Muenster", city: "Muenster", student_amount: "14982", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591795484/mu%CC%88nster_1_xdkod5.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591795337/mu%CC%88nster2_ao4qwk.jpg"])
muensterup = UniversitiesProgram.create(university_id: muenster.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-muenster.de/studium/studiengaenge/bachelor/bachelorstudiengaenge.php?studId=25", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.08.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591823204/FH_mu%CC%88nster_logo_2_ynfzij.png", application_url: "https://www.fh-muenster.de/studium/studiengaenge/bachelor/bachelorstudiengaenge.php?studId=25", university_info: "Our university was founded on August 1, 1971 from the amalgamation of state and private construction and engineering schools as well as institutions with professional training. At that time the number of students was around 2,300 - today there are more than 15,000 young people who study in 84 courses with an above-average proportion of Master's programs (currently 39) for universities of applied sciences. Accompanied by an in-house doctoral college, around 110 cooperative doctoral students are currently also qualified...", application_info: "They create buildings, work creatively, multimedia and methodically - architects are real all-rounders today. They have a wide range of specialist knowledge, which in addition to disciplines such as design and construction also includes economic, social and cultural aspects...")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "9")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "6")
muenstera = Application.create(universities_program_id: muensterup.id, user_id: "")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "1")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "9")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "6")



regensburg = University.create(name: "Technical University Regensburg", city: "Regensburg", student_amount: "11070", institution: "public", photo_urls: ["https://res.cloudinary.com/donatadietz/image/upload/v1591795647/regensburg1neu_gypvp2.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591795647/regensburg2neu_r84ihq.jpg"])
regensburgup = UniversitiesProgram.create(university_id: regensburg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.oth-regensburg.de/fakultaeten/architektur/studiengaenge/bachelor-architektur.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "24.07.2020", picture: "https://res.cloudinary.com/donatadietz/image/upload/v1591822458/TU_regensburg_logo_2_vceju6.png", application_url: "‘https://www.oth-regensburg.de/de/studienbewerbung.html", university_info: "The East Bavarian Technical University of Regensburg (OTH Regensburg) was founded in 1971 as a university for technology, business and social affairs. Today it is one of the largest universities for applied sciences in Bavaria...", application_info: "The architect's work becomes visible in our built environment. It is an expression of creativity, science, technology and social trends. Like hardly any other profession, the architect's has a comprehensive character: from the creative idea to the design and implementation in all of its technical details, until the end there is a building that meets the needs of people - in terms of costs and Time planning...")
UniversitiesProgramsDocument.create(universities_program_id: regensburgup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: regensburgup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: regensburgup.id, document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: regensburgup.id, document_id: "6")
regensburga = Application.create(universities_program_id: regensburgup.id, user_id: "")
ApplicationsDocument.create(application_id: regensburga.id, document_id: "1")
ApplicationsDocument.create(application_id: regensburga.id, document_id: "8")
ApplicationsDocument.create(application_id: regensburga.id, document_id: "3")
ApplicationsDocument.create(application_id: regensburga.id, document_id: "6")


enno = User.create(email: "enno.kirchhoff@gmail.com", password: "123456")
hans = User.create(email: "hans@franz.de", password: "123456")
nati = User.create(email: "donata@web.de", password: "123456")
