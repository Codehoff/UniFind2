User.destroy_all
Application.destroy_all
Document.destroy_all
UniversitiesProgram.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
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

aachen = University.create(name: "University of Applied Sciences Aachen", city: "Aachen", student_amount: "14356", institution: "public")
aachenup = UniversitiesProgram.create(university_id: aachen.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-aachen.de/fachbereiche/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "24.06.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591698765/Uni_Aachen_logo_1_rqlj8y.png")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: aachenup.id, document_id: "3")
aachena = Application.create(universities_program_id: aachenup.id, user_id: "")
ApplicationsDocument.create(application_id: aachena.id, document_id: "1")
ApplicationsDocument.create(application_id: aachena.id, document_id: "2")
ApplicationsDocument.create(application_id: aachena.id, document_id: "3")
aachenfoto = Uniphoto.create(universities_program_id: aachenup.id, photo_url: ["", ""], logo_url: "")

augsburg = University.create(name: "University of Applied Sciences Augsburg", city: "Augsburg", student_amount: "6618", institution: "public")
augsburgup = UniversitiesProgram.create(university_id: augsburg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "'https://www.hs-augsburg.de/Architektur-und-Bauwesen/Architektur-Bachelor.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", start_time: "24.06.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591700835/Uni_Augsburg_logo_1_tbvpr0.png")
UniversitiesProgramsDocument.create(universities_program_id: augsburgup.id, document_id: "1")
augsburga = Application.create(universities_program_id: augsburgup.id, user_id: "")
ApplicationsDocument.create(application_id: augsburga.id, document_id: "1")


bint = University.create(name: "Berlin International University of Applied Sciences", city: "Berlin", student_amount: "290", institution: "private")
bintup = UniversitiesProgram.create(university_id: bint.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.berlin-international.de/en/programs/ba-architecture/", discipline: "Arts, Design & Architecture", language: "english", semesters: "8 Semesters", start_time: "01.09.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591700974/Berlin_int._uni_logo_p8ixc7.png")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "7")
UniversitiesProgramsDocument.create(universities_program_id: bintup.id, document_id: "3")
binta = Application.create(universities_program_id: bintup.id, user_id: "")
ApplicationsDocument.create(application_id: binta.id, document_id: "4")
ApplicationsDocument.create(application_id: binta.id, document_id: "1")
ApplicationsDocument.create(application_id: binta.id, document_id: "7")
ApplicationsDocument.create(application_id: binta.id, document_id: "3")


tuberlin = University.create(name: "Technical University Berlin", city: "Berlin", student_amount: "34708", institution: "public")
tuberlinup = UniversitiesProgram.create(university_id: tuberlin.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.architektur.tu-berlin.de/menue/studium/studiengaenge/bachelor_architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "26.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591700881/tu_berlin_logo_ouy9j4.png")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: tuberlinup.id, document_id: "4")
tuberlina = Application.create(universities_program_id: tuberlinup.id, user_id: "")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "1")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "2")
ApplicationsDocument.create(application_id: tuberlina.id, document_id: "4")


dresden = University.create(name: "Technical University Dresden", city: "Dresden", student_amount: "31126", institution: "public")
dresdenup = UniversitiesProgram.create(university_id: dresden.id, program_id: "1", quota: "", degree: "Diploma course", webpage_url: "https://tu-dresden.de/studium/vor-dem-studium/studienangebot/sins/sins_studiengang?autoid=267", discipline: "Arts, Design & Architecture", language: "german", semesters: "11 Semesters", start_time: "20.08.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591701028/Uni_dresden_logo_2_oreoan.jpg")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: dresdenup.id, document_id: "6")
dresdena = Application.create(universities_program_id: dresdenup.id, user_id: "")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "1")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "4")
ApplicationsDocument.create(application_id: dresdena.id, document_id: "6")

fra = University.create(name: "Frankfurt University of Applied Sciences", city: "Frankfurt", student_amount: "15560", institution: "public")
fraup = UniversitiesProgram.create(university_id: fra.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.frankfurt-university.de/de/studium/bachelor-studiengange/architektur-ba/fuer-studieninteressierte/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591706513/uni_frankfurt_logo_1_uwxktl.png")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: fraup.id, document_id: "2")
fraa = Application.create(universities_program_id: fraup.id, user_id: "")
ApplicationsDocument.create(application_id: fraa.id, document_id: "1")
ApplicationsDocument.create(application_id: fraa.id, document_id: "4")
ApplicationsDocument.create(application_id: fraa.id, document_id: "3")
ApplicationsDocument.create(application_id: fraa.id, document_id: "2")



hamburg = University.create(name: "HafenCity University Hamburg", city: "Hamburg", student_amount: "2316", institution: "public")
hamburgup = UniversitiesProgram.create(university_id: hamburg.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.hcu-hamburg.de/bachelor/architektur/studiengang/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591706834/Uni_hamburg_logo_2_g1wlyh.png")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: hamburgup.id, document_id: "4")
hamburga = Application.create(universities_program_id: hamburgup.id, user_id: "")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "1")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "8")
ApplicationsDocument.create(application_id: hamburga.id, document_id: "4")

hannover = University.create(name: "Gottfried Wilhelm Leibniz University Hannover", city: "Hannover", student_amount: "607", institution: "private")
hannoverup = UniversitiesProgram.create(university_id: hannover.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.uni-hannover.de/de/studium/studienangebot/info/studiengang/detail/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707087/Uni_Hannover_logo_s9qaeq.png")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: hannoverup.id, document_id: "4")
hannovera = Application.create(universities_program_id: hannoverup.id, user_id: "")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "1")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "8")
ApplicationsDocument.create(application_id: hannovera.id, document_id: "4")

heidelberg = University.create(name: "University of Applied Sciences Heidelberg", city: "Heidelberg", student_amount: "3494", institution: "private")
heidelbergup = UniversitiesProgram.create(university_id: heidelberg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.hochschule-heidelberg.de/de/studium/bachelorstudium/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707125/Uni_HD_logo_1_tfyxhq.png")
UniversitiesProgramsDocument.create(universities_program_id: heidelbergup.id, document_id: "1")
heidelberga = Application.create(universities_program_id: heidelbergup.id, user_id: "")
ApplicationsDocument.create(application_id: heidelberga, document_id: "1")

karlsruhe = University.create(name: "Technical Institute Karlsruhe", city: "Karlsruhe", student_amount: "23646", institution: "public")
karlsruheup = UniversitiesProgram.create(university_id: karlsruhe.id, program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "http://www.arch.kit.edu/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707184/Kit_logo_pot2vz.png")
UniversitiesProgramsDocument.create(universities_program_id: karlsruheup.id, document_id: "1")
karlsruhea = Application.create(universities_program_id: karlsruheup.id, user_id: "")
ApplicationsDocument.create(application_id: karlsruhea.id, document_id: "1")

koeln = University.create(name: "Technical University Cologne", city: "Cologne", student_amount: "26562", institution: "public")
koelnup = UniversitiesProgram.create(university_id: koeln.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.th-koeln.de/studium/architektur-bachelor_3341.php", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "20.08.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707217/TU_ko%CC%88ln_logo_y4xjcx.png")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: koelnup.id, document_id: "6")
koelna = Application.create(universities_program_id: koelnup.id, user_id: "")
ApplicationsDocument.create(application_id: koelna.id, document_id: "1")
ApplicationsDocument.create(application_id: koelna.id, document_id: "8")
ApplicationsDocument.create(application_id: koelna.id, document_id: "6")



constance = University.create(name: "University Constance", city: "Constance", student_amount: "4876", institution: "public")
constanceup = UniversitiesProgram.create(university_id: constance.id, program_id: "1", quota: "40 Students", degree: "Bachelor of Arts", webpage_url: "https://www.htwg-konstanz.de/bachelor/architektur/uebersicht/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707253/uni_konstanz_logo_e8namd.png")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: constanceup.id, document_id: "4")
constancea = Application.create(universities_program_id: constanceup.id, user_id: "")
ApplicationsDocument.create(application_id: constancea.id, document_id: "1")
ApplicationsDocument.create(application_id: constancea.id, document_id: "3")
ApplicationsDocument.create(application_id: constancea.id, document_id: "4")


munich = University.create(name: "Technical University Munich", city: "Munich", student_amount: "42202", institution: "public")
munichup = UniversitiesProgram.create(university_id: munich.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.tum.de/studium/studienangebot/detail/architektur-bachelor-of-arts-ba/", discipline: "Arts, Design & Architecture", language: "german", semesters: "8 Semesters", start_time: "31.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707307/TUM_Logo_extern_mt_DE_RGB_p_sgta60.png")
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
munichfoto = Uniphoto.create(universities_program_id: munichup.id, photo_url: ["https://res.cloudinary.com/donatadietz/image/upload/v1591355034/TUM2_bqy4rd.jpg", "https://res.cloudinary.com/donatadietz/image/upload/v1591355030/TUM1_wayrut.jpg"], logo_url: ["https://res.cloudinary.com/donatadietz/image/upload/v1591355026/TUM_Logo_extern_mt_DE_RGB_p_zmezwm.png", "https://res.cloudinary.com/donatadietz/image/upload/v1591354672/tum_logo_2_nz4wko.png"])


muenster = University.create(name: "University of Applied Sciences Muenster", city: "Muenster", student_amount: "14982", institution: "public")
muensterup = UniversitiesProgram.create(university_id: muenster.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-muenster.de/studium/studiengaenge/bachelor/bachelorstudiengaenge.php?studId=25", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "15.08.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707391/FH_Muenster_logo_1_i5jsfw.png")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "9")
UniversitiesProgramsDocument.create(universities_program_id: muensterup.id, document_id: "6")
muenstera = Application.create(universities_program_id: muensterup.id, user_id: "")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "1")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "9")
ApplicationsDocument.create(application_id: muenstera.id, document_id: "6")



regensburg = University.create(name: "Technical University Regensburg", city: "Regensburg", student_amount: "11070", institution: "public")
regensburgup = UniversitiesProgram.create(university_id: regensburg.id, program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.oth-regensburg.de/fakultaeten/architektur/studiengaenge/bachelor-architektur.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", start_time: "24.07.2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591707417/TU_regensburg_logo_2_phd1zx.png")
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

visa = Document.create(name: "Visa")
cv = Document.create(name: "CV")
mv = Document.create(name: "motivational letter")
mom = Document.create(name: "A Picture of your mom")
code = Document.create(name: "Some Code you wrote")

tuberlin = University.create(name: "TU Berlin", city: "Berlin")
lmumuenchen = University.create(name: "LMU München", city: "München")
huberlin = University.create(name: "HU Berlin", city: "Berlin")
fuberlin = University.create(name: "FU Berlin", city: "Berlin")
hsemdenleer = University.create(name: "Hochschule Emden/Leer", city: "Emden")


eco = Program.create(name: "Economics")
eng = Program.create(name: "Engineering")
bio = Program.create(name: "Biomechanics")
phil = Program.create(name: "Philisophy")


tu_eng = UniversitiesProgram.create(university: tuberlin, program: eng, degree: "Bachelor", language: "German", start_time: "10/06/2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591700881/tu_berlin_logo_ouy9j4.png")
hu_bio = UniversitiesProgram.create(university: huberlin, program: bio, degree: "Bachelor", language: "German", start_time: "21/10/2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591708618/Huberlin-logo.svg_lxoknl.png")
hsemd_bio = UniversitiesProgram.create(university: hsemdenleer, program: bio, degree: "Bachelor", language: "German", start_time: "16/06/2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591709171/HS_Emden-Leer_ppz2qq.png")
fuphil = UniversitiesProgram.create(university: fuberlin, program: phil, degree: "Master", language: "German", start_time: "20/06/2020", picture: "https://res.cloudinary.com/dirrgq7bu/image/upload/v1591709193/FU_Berlin_sa9mod.png")

tu_eng_docs1 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: mv)
tu_eng_docs2 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: cv)

fu_phil_docs1 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: code)
fu_phil_docs2 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mv)
fu_phil_docs3 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: cv)
fu_phil_docs4 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mom)

hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: mom)
hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: cv)
hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: code)
