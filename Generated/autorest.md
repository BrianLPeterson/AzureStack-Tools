---
#   Please see this to see how it works
#
#   https://github.com/Azure/autorest/blob/master/docs/proposals/generator-specific-settings/literate-configuration.md
#
#   To run just do autorest storage.md
#
override-info:
  title: Storage Admin Client
csharp:
    namespace: Microsoft.AzureStack.Storage.Admin
    output-folder: tmp

output-folder: Artifacts

output-artifact: 
    - swagger-document.json
    - swagger-document.yaml

input-file:
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\common.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\common.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\blobServices.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\tableServices.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\queueServices.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\storageaccounts.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\shares.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\quota.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\farm.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\container.json"
    - "C:\\work\\github\\azure-rest-api-specs\\arm-storage-admin\\2015-12-01-preview\\swagger\\acquisition.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/common.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/common.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/blobServices.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/tableServices.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/queueServices.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/storageaccounts.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/shares.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/quota.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/farm.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/container.json"
#    - "https://raw.githubusercontent.com/BrianLPeterson/azure-rest-api-specs/feature/azsswagger/arm-storage-admin/2015-12-01-preview/swagger/acquisition.json"
    
license-header: MICROSOFT_MIT

azure-arm: true

payload-flatteningthreshold: 2