# Clair

Clair is an open-source tool made by CoreOS for scanning containers for known vulnerabilities

# This setup

1. Postgres statefulset for the clair vulnerability database.
2. StatefulSet for clairctl which contains the reports that clair can generate. Clairctl is what actually pulls and pushes images to clair
3. Deployment of Clair, the actual engine behind everything

# Future Plans

1. Implement a webserver to show the reports
2. Implement an instance of reg so that containers in a registry can be enumerated.
3. Implement automatic scanning and/or a lightweight API that can be used inside piplines.