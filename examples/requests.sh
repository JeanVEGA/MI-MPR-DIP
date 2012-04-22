#!/bin/bash

# Mobile.getIdentity, username/password: more/more (DUMMY adapter)
curl -i -H "Accept: application/json" -H "Authorization: Basic bW9yZTptb3JlCg==" http://localhost:9090/admission/services/mobile/identity

# Mobile.getAdmission, valid session required as HTTP header
curl -i -H "Accept: application/json" -H "X-CTU-FIT-Admission-Session: [session identifier from Mobile.getIdentity]" http://localhost:9090/admission/services/mobile/admission/{admissionCode}

# Mobile.saveResult
cat admission_result.xml | curl -i -H "Accept: application/json" -H "Content-type: application/xml" -H "X-CTU-FIT-Admission-Session: [session identifier from Mobile.getIdentity]" -X POST -d @- http://localhost:9090/admission/services/mobile/admission/{admissionCode}/result

# Mobile.savePhoto
cat admission_photo.xml | curl -i -H "Accept: application/json" -H "Content-type: application/xml" -H "X-CTU-FIT-Admission-Session: [session identifier from Mobile.getIdentity]" -X POST -d @- http://localhost:9090/admission/services/mobile/admission/{admissionCode}/photo

# Processing.getIdentity, username/password: more/more (DUMMY adapter)
curl -i -H "Accept: application/json" -H "Authorization: Basic bW9yZTptb3JlCg==" http://localhost:9090/admission/services/processing/identity

# Processing.admission, uses example admission from XML file and POST request to add it 
cat admission_0[1-3].xml | curl -i -H "Accept: application/json" -H "X-CTU-FIT-Admission-Session: [session identifier from Processing.getIdentity]" -H "Content-type: application/xml" -X POST -d @- http://localhost:9090/admission/services/processing/admission

# Processing.deleteAmission, simply deletes admission in cascade with all its entites
curl -i -H "X-CTU-FIT-Admission-Session: [session identifier from Processing.getIdentity] -X DELETE http://localhost:9090/admission/services/processing/admission/{admissionCode}