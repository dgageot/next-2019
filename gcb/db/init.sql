CREATE TABLE hexagons
(
    image varchar(500) NOT NULL,
    category varchar(500) NOT NULL,
    name varchar(500) NOT NULL,
    description varchar(500) NOT NULL,
    url varchar(500) NOT NULL
);

INSERT INTO hexagons(image, category, name, description, url)
VALUES  ('compute-engine.svg', 'Compute', 'Compute Engine', 'Virtual Machines, Disks, Network', 'https://cloud.google.com/compute/'),
        ('app-engine.svg', 'Compute', 'App Engine', 'Managed App Platform', 'https://cloud.google.com/appengine/'),
        ('kubernetes-engine.svg', 'Compute', 'Kubernetes Engine', 'Managed Kubernetes/Containers', 'https://cloud.google.com/kubernetes-engine/'),
        ('cloud-functions.svg', 'Compute', 'Cloud Functions', 'Serverless Microservices', 'https://cloud.google.com/functions/'),
        ('bigquery.svg', 'Big Data', 'BigQuery', 'Managed Data Warehouse/Analytics', 'https://cloud.google.com/bigquery/'),
        ('cloud-dataflow.svg', 'Big Data', 'Cloud Dataflow', 'Managed Data Processing', 'https://cloud.google.com/dataflow/'),
        ('cloud-dataproc.svg', 'Big Data', 'Cloud Dataproc', 'Managed Spark and Hadoop', 'https://cloud.google.com/dataproc/'),
        ('cloud-datalab.svg', 'Big Data', 'Cloud Datalab', 'Visualize and Explore Data', 'https://cloud.google.com/datalab/'),
        ('cloud-dataprep.svg', 'Big Data', 'Cloud Dataprep', 'Visual Data Preparation Tool', 'https://cloud.google.com/dataprep/'),
        ('cloud-pubsub.svg', 'Big Data', 'Cloud Pub/Sub', 'Distributed Real-time messaging', 'https://cloud.google.com/pubsub/'),
        ('genomics.svg', 'Big Data', 'Genomics', 'Managed Genomics Platform', 'https://cloud.google.com/genomics/'),
        ('data-studio.svg', 'Big Data', 'Data Studio', 'Collaborative Dashboards', 'https://cloud.google.com/data-studio/'),
        ('cloud-storage.svg', 'Storage and Databases', 'Cloud Storage', 'Object/File Storage & Serving', 'https://cloud.google.com/storage/'),
        ('cloud-sql.svg', 'Storage and Databases', 'Cloud SQL', 'Managed MySQL and PostgreSQL', 'https://cloud.google.com/sql/'),
        ('cloud-bigtable.svg', 'Storage and Databases', 'Cloud Bigtable', 'HBase compatible NoSQL', 'https://cloud.google.com/bigtable/'),
        ('cloud-spanner.svg', 'Storage and Databases', 'Cloud Spanner', 'Horizontally Scalable Relational DB', 'https://cloud.google.com/spanner/'),
        ('cloud-datastore.svg', 'Storage and Databases', 'Cloud Datastore', 'Horizontally Scalable Document DB', 'https://cloud.google.com/datastore/'),
        ('persistent-disk.svg', 'Storage and Databases', 'Persistent Disk', 'VM-attached disks', 'https://cloud.google.com/persistent-disk/'),
        ('cloud-machine-learning-engine.svg', 'Cloud AI', 'Cloud Machine Learning Engine', 'Managed TensorFlow/ML', 'https://cloud.google.com/ml-engine/'),
        ('cloud-jobs-api.svg', 'Cloud AI', 'Cloud Jobs Discovery', 'ML Job Search and Discovery', 'https://cloud.google.com/job-discovery/'),
        ('cloud-natural-language.svg', 'Cloud AI', 'Cloud Natural Language', 'Text Parsing and Analysis', 'https://cloud.google.com/natural-language/'),
        ('cloud-speech-api.svg', 'Cloud AI', 'Cloud Speech-to-Text', 'Convert Speech to Text', 'https://cloud.google.com/speech-to-text/'),
        ('cloud-translation-api.svg', 'Cloud AI', 'Cloud Translation API', 'Language Detection and Translation', 'https://cloud.google.com/translate/'),
        ('cloud-vision-api.svg', 'Cloud AI', 'Cloud Vision API', 'Image Recognition and Classification', 'https://cloud.google.com/vision/'),
        ('cloud-video-intelligence-api.svg', 'Cloud AI', 'Cloud Video Intelligence', 'Scene-level Video Annotation', 'https://cloud.google.com/video-intelligence/'),
        ('cloud-virtual-network.svg', 'Networking', 'Virtual Private Cloud (VPC)', 'Software Defined Networking', 'https://cloud.google.com/vpc/'),
        ('cloud-load-balancing.svg', 'Networking', 'Cloud Load Balancing', 'Multi-region Load Distribution', 'https://cloud.google.com/load-balancing/'),
        ('cloud-cdn.svg', 'Networking', 'Cloud CDN', 'Content Delivery Network', 'https://cloud.google.com/cdn/'),
        ('cloud-interconnect.svg', 'Networking', 'Cloud Interconnect', 'Peer with GCP', 'https://cloud.google.com/interconnect/'),
        ('cloud-dns.svg', 'Networking', 'Cloud DNS', 'Programmable DNS Serving', 'https://cloud.google.com/dns/'),
        ('cloud-iam.svg', 'Identity & Security', 'Cloud IAM', 'Resource Access Control', 'https://cloud.google.com/iam/'),
        ('cloud-identity-aware-proxy.svg', 'Identity & Security', 'Cloud Identity-Aware Proxy', 'Identity-based App Signin', 'https://cloud.google.com/iap/'),
        ('cloud-data-loss-prevention-api.svg', 'Identity & Security', 'Cloud Data Loss Prevention API', 'Redact Sensitive Data', 'https://cloud.google.com/dlp/'),
        ('security-key-enforcement.svg', 'Identity & Security', 'Security Key Enforcement', '2-Step Key Verification', 'https://cloud.google.com/security-key/'),
        ('cloud-key-management-service.svg', 'Identity & Security', 'Cloud Key Management Service', 'Hosted Key Management Service', 'https://cloud.google.com/kms/'),
        ('cloud-resource-manager.svg', 'Identity & Security', 'Cloud Resource Manager', 'Cloud Project Metadata Management', 'https://cloud.google.com/resource-manager/'),
        ('undefined.svg', 'Identity & Security', 'Cloud Security Scanner', 'App Engine Security Scanner', 'https://cloud.google.com/security-scanner/'),
        ('monitoring.svg', 'Management Tools', 'Monitoring', 'Infrastructure and Application Monitoring', 'https://cloud.google.com/monitoring/'),
        ('logging.svg', 'Management Tools', 'Logging', 'Centralized Logging', 'https://cloud.google.com/logging/'),
        ('error-reporting.svg', 'Management Tools', 'Error Reporting', 'App Error Reporting', 'https://cloud.google.com/error-reporting/'),
        ('trace.svg', 'Management Tools', 'Trace', 'App Performance Insights', 'https://cloud.google.com/trace/'),
        ('debugger.svg', 'Management Tools', 'Debugger', 'App Debugging', 'https://cloud.google.com/debugger/'),
        ('cloud-deployment-manager.svg', 'Management Tools', 'Cloud Deployment Manager', 'Templated Infrastructure Deployment', 'https://cloud.google.com/deployment-manager/'),
        ('cloud-endpoints.svg', 'Management Tools', 'Cloud Endpoints', 'Cloud API Gateway', 'https://cloud.google.com/endpoints/'),
        ('undefined.svg', 'Management Tools', 'Cloud Console', 'Web-based Management Console', 'https://cloud.google.com/cloud-console/'),
        ('undefined.svg', 'Management Tools', 'Cloud Shell', 'Browser-based Terminal/CLI', 'https://cloud.google.com/shell/'),
        ('undefined.svg', 'Management Tools', 'Cloud Mobile App', 'iOS/Android GCP Manager App', 'https://cloud.google.com/console-app/'),
        ('undefined.svg', 'Management Tools', 'Cloud Billing API', 'Programmatically Manage GCP Billing', 'https://cloud.google.com/billing/docs/'),
        ('cloud-apis.svg', 'Management Tools', 'Cloud APIs', 'APIs for Cloud Services', 'https://cloud.google.com/apis/'),
        ('undefined.svg', 'Developer Tools', 'Cloud SDK', 'CLI for GCP', 'https://cloud.google.com/sdk/'),
        ('container-registry.svg', 'Developer Tools', 'Container Registry', 'Private Container Registry/Storage', 'https://cloud.google.com/container-registry/'),
        ('container-builder.svg', 'Developer Tools', 'Container Builder', 'Build/Package Container Artifacts', 'https://cloud.google.com/container-builder/'),
        ('undefined.svg', 'Developer Tools', 'Cloud Source Repositories', 'Hosted Private Git Repos', 'https://cloud.google.com/source-repositories/'),
        ('undefined.svg', 'Developer Tools', 'Cloud Tools for Android Studio', 'Android Studio GCP Tools', 'https://cloud.google.com/tools/android-studio/docs/'),
        ('undefined.svg', 'Developer Tools', 'Cloud Tools for IntelliJ', 'IntelliJ GCP Tools', 'https://cloud.google.com/intellij/'),
        ('cloud-tools-for-powershell.svg', 'Developer Tools', 'Cloud Tools for PowerShell', 'PowerShell GCP Tools', 'https://cloud.google.com/powershell/'),
        ('cloud-tools-for-visual-studio.svg', 'Developer Tools', 'Cloud Tools for Visual Studio', 'Visual Studio GCP Tools', 'https://cloud.google.com/visual-studio/'),
        ('undefined.svg', 'Developer Tools', 'Cloud Tools for Eclipse', 'Eclipse GCP Tools', 'https://cloud.google.com/eclipse/docs/'),
        ('undefined.svg', 'Developer Tools', 'Gradle App Engine Plugin', 'Gradle App Engine Plugin', 'https://github.com/GoogleCloudPlatform/app-gradle-plugin'),
        ('undefined.svg', 'Developer Tools', 'Maven App Engine Plugin', 'Maven App Engine Plugin', 'https://github.com/GoogleCloudPlatform/app-maven-plugin'),
        ('cloud-test-lab.svg', 'Developer Tools', 'Cloud Test Lab', 'Mobile Device Testing Service', 'https://firebase.google.com/docs/test-lab/');
