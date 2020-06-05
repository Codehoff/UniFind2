User.destroy_all
Application.destroy_all
Document.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
UniversitiesProgram.destroy_all
Program.destroy_all
University.destroy_all

Notification.destroy_all

User.destroy_all
Application.destroy_all
Document.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
UniversitiesProgram.destroy_all
Program.destroy_all
University.destroy_all

Notification.destroy_all

Document.create(name: "General University Entrance Qualification")
Document.create(name: "Motivational letter")
Document.create(name: "Sketchbook")
Document.create(name: "Copy of your passport")
Document.create(name: "Photo of yourself")
Document.create(name: "Internship certificate")
Document.create(name: "English language Test")
Document.create(name: "Aptitude examination")
Document.create(name: "CV")

Program.create(name: "Architecture")

University.create(name: "University of Applied Sciences Aachen", city: "Aachen", student_amount: "14356", institution: "public")
UniversitiesProgram.create(university_id: "1", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-aachen.de/fachbereiche/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "24.06.2020")
UniversitiesProgramsDocument.create(universities_program_id: "1", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "1", document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: "1", document_id: "3")
Application.create(universities_program_id: "1", user_id: "")
ApplicationsDocument.create(application_id: "1", document_id: "1")
ApplicationsDocument.create(application_id: "1", document_id: "2")
ApplicationsDocument.create(application_id: "1", document_id: "3")

University.create(name: "University of Applied Sciences Augsburg", city: "Augsburg", student_amount: "6618", institution: "public")
UniversitiesProgram.create(university_id: "2", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "'https://www.hs-augsburg.de/Architektur-und-Bauwesen/Architektur-Bachelor.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", deadline: "24.06.2020")
UniversitiesProgramsDocument.create(universities_program_id: "2", document_id: "1")
Application.create(universities_program_id: "2", user_id: "")
ApplicationsDocument.create(application_id: "2", document_id: "1")

University.create(name: "Berlin International University of Applied Sciences", city: "Berlin", student_amount: "290", institution: "private")
UniversitiesProgram.create(university_id: "3", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.berlin-international.de/en/programs/ba-architecture/", discipline: "Arts, Design & Architecture", language: "english", semesters: "8 Semesters", deadline: "01.09.2020")
UniversitiesProgramsDocument.create(universities_program_id: "3", document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: "3", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "3", document_id: "7")
UniversitiesProgramsDocument.create(universities_program_id: "3", document_id: "3")
Application.create(universities_program_id: "3", user_id: "")
ApplicationsDocument.create(application_id: "3", document_id: "4")
ApplicationsDocument.create(application_id: "3", document_id: "1")
ApplicationsDocument.create(application_id: "3", document_id: "7")
ApplicationsDocument.create(application_id: "3", document_id: "3")

University.create(name: "Technical University Berlin", city: "Berlin", student_amount: "34708", institution: "public")
UniversitiesProgram.create(university_id: "4", program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.architektur.tu-berlin.de/menue/studium/studiengaenge/bachelor_architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "26.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "4", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "4", document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: "4", document_id: "4")
Application.create(universities_program_id: "4", user_id: "")
ApplicationsDocument.create(application_id: "4", document_id: "1")
ApplicationsDocument.create(application_id: "4", document_id: "2")
ApplicationsDocument.create(application_id: "4", document_id: "4")

University.create(name: "Technical University Dresden", city: "Dresden", student_amount: "31126", institution: "public")
UniversitiesProgram.create(university_id: "5", program_id: "1", quota: "", degree: "Diploma course", webpage_url: "https://tu-dresden.de/studium/vor-dem-studium/studienangebot/sins/sins_studiengang?autoid=267", discipline: "Arts, Design & Architecture", language: "german", semesters: "11 Semesters", deadline: "20.08.2020")
UniversitiesProgramsDocument.create(universities_program_id: "5", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "5", document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: "5", document_id: "6")
Application.create(universities_program_id: "5", user_id: "")
ApplicationsDocument.create(application_id: "5", document_id: "1")
ApplicationsDocument.create(application_id: "5", document_id: "4")
ApplicationsDocument.create(application_id: "5", document_id: "6")

University.create(name: "Frankfurt University of Applied Sciences", city: "Frankfurt", student_amount: "15560", institution: "public")
UniversitiesProgram.create(university_id: "6", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.frankfurt-university.de/de/studium/bachelor-studiengange/architektur-ba/fuer-studieninteressierte/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "6", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "6", document_id: "4")
UniversitiesProgramsDocument.create(universities_program_id: "6", document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: "6", document_id: "2")
Application.create(universities_program_id: "6", user_id: "")
ApplicationsDocument.create(application_id: "6", document_id: "1")
ApplicationsDocument.create(application_id: "6", document_id: "4")
ApplicationsDocument.create(application_id: "6", document_id: "3")
ApplicationsDocument.create(application_id: "6", document_id: "2")

University.create(name: "HafenCity University Hamburg", city: "Hamburg", student_amount: "2316", institution: "public")
UniversitiesProgram.create(university_id: "7", program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.hcu-hamburg.de/bachelor/architektur/studiengang/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "7", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "7", document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: "7", document_id: "4")
Application.create(universities_program_id: "7", user_id: "")
ApplicationsDocument.create(application_id: "7", document_id: "1")
ApplicationsDocument.create(application_id: "7", document_id: "8")
ApplicationsDocument.create(application_id: "7", document_id: "4")

University.create(name: "Gottfried Wilhelm Leibniz University Hannover", city: "Hannover", student_amount: "607", institution: "private")
UniversitiesProgram.create(university_id: "8", program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "https://www.uni-hannover.de/de/studium/studienangebot/info/studiengang/detail/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "8", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "8", document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: "8", document_id: "4")
Application.create(universities_program_id: "8", user_id: "")
ApplicationsDocument.create(application_id: "8", document_id: "1")
ApplicationsDocument.create(application_id: "8", document_id: "8")
ApplicationsDocument.create(application_id: "8", document_id: "4")

University.create(name: "University of Applied Sciences Heidelberg", city: "Heidelberg", student_amount: "3494", institution: "private")
UniversitiesProgram.create(university_id: "9", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.hochschule-heidelberg.de/de/studium/bachelorstudium/architektur/", discipline: "Arts, Design & Architecture", language: "german", semesters: "7 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "9", document_id: "1")
Application.create(universities_program_id: "9", user_id: "")
ApplicationsDocument.create(application_id: "9", document_id: "1")

University.create(name: "Technical Institute Karlsruhe", city: "Karlsruhe", student_amount: "23646", institution: "public")
UniversitiesProgram.create(university_id: "10", program_id: "1", quota: "", degree: "Bachelor of Science", webpage_url: "http://www.arch.kit.edu/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "10", document_id: "1")
Application.create(universities_program_id: "10", user_id: "")
ApplicationsDocument.create(application_id: "10", document_id: "1")

University.create(name: "Technical University Cologne", city: "Cologne", student_amount: "26562", institution: "public")
UniversitiesProgram.create(university_id: "11", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.th-koeln.de/studium/architektur-bachelor_3341.php", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "20.08.2020")
UniversitiesProgramsDocument.create(universities_program_id: "11", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "11", document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: "11", document_id: "6")
Application.create(universities_program_id: "11", user_id: "")
ApplicationsDocument.create(application_id: "11", document_id: "1")
ApplicationsDocument.create(application_id: "11", document_id: "8")
ApplicationsDocument.create(application_id: "11", document_id: "6")

University.create(name: "University Constance", city: "Constance", student_amount: "4876", institution: "public")
UniversitiesProgram.create(university_id: "12", program_id: "1", quota: "40 Students", degree: "Bachelor of Arts", webpage_url: "https://www.htwg-konstanz.de/bachelor/architektur/uebersicht/", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "12", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "12", document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: "12", document_id: "4")
Application.create(universities_program_id: "12", user_id: "")
ApplicationsDocument.create(application_id: "12", document_id: "1")
ApplicationsDocument.create(application_id: "12", document_id: "3")
ApplicationsDocument.create(application_id: "12", document_id: "4")

University.create(name: "Technical University Munich", city: "Munich", student_amount: "42202", institution: "public")
UniversitiesProgram.create(university_id: "13", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.tum.de/studium/studienangebot/detail/architektur-bachelor-of-arts-ba/", discipline: "Arts, Design & Architecture", language: "german", semesters: "8 Semesters", deadline: "31.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "13", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "13", document_id: "9")
UniversitiesProgramsDocument.create(universities_program_id: "13", document_id: "2")
UniversitiesProgramsDocument.create(universities_program_id: "13", document_id: "6")
UniversitiesProgramsDocument.create(universities_program_id: "13", document_id: "4")
Application.create(universities_program_id: "13", user_id: "")
ApplicationsDocument.create(application_id: "13", document_id: "1")
ApplicationsDocument.create(application_id: "13", document_id: "9")
ApplicationsDocument.create(application_id: "13", document_id: "2")
ApplicationsDocument.create(application_id: "13", document_id: "6")
ApplicationsDocument.create(application_id: "13", document_id: "4")

University.create(name: "University of Applied Sciences Muenster", city: "Muenster", student_amount: "14982", institution: "public")
UniversitiesProgram.create(university_id: "14", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.fh-muenster.de/studium/studiengaenge/bachelor/bachelorstudiengaenge.php?studId=25", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "15.08.2020")
UniversitiesProgramsDocument.create(universities_program_id: "14", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "14", document_id: "9")
UniversitiesProgramsDocument.create(universities_program_id: "14", document_id: "6")
Application.create(universities_program_id: "14", user_id: "")
ApplicationsDocument.create(application_id: "14", document_id: "1")
ApplicationsDocument.create(application_id: "14", document_id: "9")
ApplicationsDocument.create(application_id: "14", document_id: "6")

University.create(name: "Technical University Regensburg", city: "Regensburg", student_amount: "11070", institution: "public")
UniversitiesProgram.create(university_id: "15", program_id: "1", quota: "", degree: "Bachelor of Arts", webpage_url: "https://www.oth-regensburg.de/fakultaeten/architektur/studiengaenge/bachelor-architektur.html", discipline: "Arts, Design & Architecture", language: "german", semesters: "6 Semesters", deadline: "24.07.2020")
UniversitiesProgramsDocument.create(universities_program_id: "15", document_id: "1")
UniversitiesProgramsDocument.create(universities_program_id: "15", document_id: "8")
UniversitiesProgramsDocument.create(universities_program_id: "15", document_id: "3")
UniversitiesProgramsDocument.create(universities_program_id: "15", document_id: "6")

Application.create(universities_program_id: "15", user_id: "")
ApplicationsDocument.create(application_id: "15", document_id: "1")
ApplicationsDocument.create(application_id: "15", document_id: "8")
ApplicationsDocument.create(application_id: "15", document_id: "3")
ApplicationsDocument.create(application_id: "15", document_id: "6")

# enno = User.create(email: "enno.kirchhoff@gmail.com", password: "123456")
# hans = User.create(email: "hans@franz.de", password: "123456")

# visa = Document.create(name: "Visa")
# cv = Document.create(name: "CV")
# mv = Document.create(name: "motivational letter")
# mom = Document.create(name: "A Picture of your mom")
# code = Document.create(name: "Some Code you wrote")

# tuberlin = University.create(name: "TU Berlin", city: "Berlin")
# lmumuenchen = University.create(name: "LMU München", city: "München")
# huberlin = University.create(name: "HU Berlin", city: "Berlin")
# fuberlin = University.create(name: "FU Berlin", city: "Berlin")
# hsemdenleer = University.create(name: "Hochschule Emden/Leer", city: "Emden")


# eco = Program.create(name: "Economics")
# eng = Program.create(name: "Engineering")
# bio = Program.create(name: "Biomechanics")
# phil = Program.create(name: "Philisophy")


# tu_eng = UniversitiesProgram.create(university: tuberlin, program: eng, degree: "Bachelor", language: "German", deadline: "10/06/2020")
# hu_bio = UniversitiesProgram.create(university: huberlin, program: bio, degree: "Bachelor", language: "German", deadline: "21/10/2020")
# hsemd_bio = UniversitiesProgram.create(university: hsemdenleer, program: bio, degree: "Bachelor", language: "German", deadline: "16/06/2020")
# fuphil = UniversitiesProgram.create(university: fuberlin, program: phil, degree: "Master", language: "German", deadline: "20/06/2020")

# app_enno = Application.create(universities_program_id: tu_eng.id, user_id: enno.id)

# noti = Notification.create(content: "SELL SELL SELL", application_id: app_enno.id)

# tu_eng_docs1 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: mv)
# tu_eng_docs2 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: cv)

# fu_phil_docs1 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: code)
# fu_phil_docs2 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mv)
# fu_phil_docs3 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: cv)
# fu_phil_docs4 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mom)

# hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: mom)
# hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: cv)
# hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: code)
