mongo
show dbs;
use aperture_development;
db.events.find({app_type: "office365_one_drive"}).count()
db.events.findOne({app_type: "office365_one_drive"})
