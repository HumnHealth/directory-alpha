# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
practices = Practice.create([{name: "Dr C Kenyon And Partners", street: "19 Beaumont Street", city: "Oxford", postal: "OX1 2NA", phone: "01865 240501", website: "http://www.19beaumontstgp.nhs.uk/",image: File.new("#{Rails.root}/app/assets/images/practice_placeholder.png")},
  {name: "Beaumont Street Surgery", street: "28 Beaumont Street", city: "Oxford", postal: "OX1 2NP", phone: "01865 311811", website: "http://www.28beaumontstreet.co.uk/",image: File.new("#{Rails.root}/app/assets/images/practice_placeholder.png")},
  {name: "King Edward Street Medical Practice", street: "9 King Edward Street", city: "Oxford", postal: "OX1 4JA", phone: "01865 242657", website: "http://www.kingedwardst.nhs.uk/",image: File.new("#{Rails.root}/app/assets/images/practice_placeholder.png")}])

Doctor.create([{name: "Richard Donald Silvester", email: "richard@kenyon.com", phone: "01865 240501", speciality: "GP", image: File.new("#{Rails.root}/app/assets/images/doctor_placeholder.jpg"), practice: practices[0], description: "Qualified in 2007 from Oxford University (St Edmund Hall)
Practiced general medicine at the John Radcliffe Hospital and general surgery in Bucks prior to joining the Oxford GP training scheme.
Worked in paediatrics, psychiatry and musculoskeletal medicone before completing GP placements at The Abingdon Surgery, The Nuffield Surgery, Witney and Marston Medical Centre.
Worked as a GP locum doctor in a wide variety of Oxfordshire practices before joining no 28 as a partner."},
  {name: "Chloe Borton", email: "chloe@beaumontstreetsurgery.com", phone: "01865 311811", speciality: "Pediatrician", image: File.new("#{Rails.root}/app/assets/images/doctor_placeholder.jpg"), practice: practices[1], description:"Studied Experimental Psychology at Magdalen College, Oxford University.
Worked as a Primary School Teacher in South London for four years prior to studying medicine at St. Mary's Hospital Medical School ( Imperial College ) and qualified as a Doctor in 1998
Worked at Northwick Park Hospital, Harrow, prior to starting a GP training scheme based in Oxford.  Completed hospital jobs at the John Radcliffe and Churchill Hospital, Sobell House Hospice and the Rivermead Rehabilitation Unit ( now the Centre for Enablement at the Nuffield Orthopaedic Hospital )."},
  {name: "Brian Nicholson", email: "brian@kingedward.com", phone: "01865 242657", speciality: "GP", image: File.new("#{Rails.root}/app/assets/images/doctor_placeholder.jpg"), practice: practices[2], description:"Brian studied Medicine at the University of Leeds, his academic foundation training in oncology in Yorkshire, and his GP training in York and Oxford. He works at King Edward Street each Friday, as a clinical fellow in primary care researching early cancer diagnosis at the Nuffield Department of Primary Care Health Sciences at the University of Oxford, and as the Macmillan GP Facilitator for Oxfordshire."}])
