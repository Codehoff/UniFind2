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

tu = University.create(name: "TU Berlin", city: "Berlin")
lmu = University.create(name: "LMU München", city: "München")

eco = Program.create(name: "Economics")
eng = Program.create(name: "Engineering")



tu_eng = UniversitiesProgram.create(university: tu, program: eng, degree: "Bachelor", language: "German", deadline: "10/06/2020")

app_enno = Application.create(universities_program_id: tu_eng.id, user_id: enno.id)

noti = Notification.create(content: "SELL SELL SELL", application_id: app_enno.id)

tu_eng_docs = UniversitiesProgramsDocument.create(universities_program_id: tu_eng.id, document_id: mv.id)



app_docs_enno = ApplicationsDocument.create(document: mv, application: app_enno)

