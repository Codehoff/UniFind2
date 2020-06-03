User.destroy_all
Application.destroy_all
Document.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
UniversitiesProgram.destroy_all
Program.destroy_all
University.destroy_all

Notification.destroy_all

enno = User.create(email: "enno.kirchhoff@gmail.com", password: "123456")
hans = User.create(email: "hans@franz.de", password: "123456")

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


tu_eng = UniversitiesProgram.create(university: tuberlin, program: eng, degree: "Bachelor", language: "German", deadline: "10/06/2020")
hu_bio = UniversitiesProgram.create(university: huberlin, program: bio, degree: "Bachelor", language: "German", deadline: "21/10/2020")
hsemd_bio = UniversitiesProgram.create(university: hsemdenleer, program: bio, degree: "Bachelor", language: "German", deadline: "16/06/2020")
fuphil = UniversitiesProgram.create(university: fuberlin, program: phil, degree: "Master", language: "German", deadline: "20/06/2020")

app_enno = Application.create(universities_program_id: tu_eng.id, user_id: enno.id)

noti = Notification.create(content: "SELL SELL SELL", application_id: app_enno.id)

tu_eng_docs1 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: mv)
tu_eng_docs2 = UniversitiesProgramsDocument.create(universities_program: tu_eng, document: cv)

fu_phil_docs1 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: code)
fu_phil_docs2 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mv)
fu_phil_docs3 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: cv)
fu_phil_docs4 = UniversitiesProgramsDocument.create(universities_program: fuphil, document: mom)

hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: mom)
hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: cv)
hsemd_bio_docs = UniversitiesProgramsDocument.create(universities_program: hsemd_bio, document: code)
