Profile: CPGAssetCollection
Parent: Library
Id: cpg-assetcollection
Title: "CPG Asset Collection"
Description: "Profile of the Library resource to describe a collection of related knowledge assets. The collection is a general purpose organizational structure for the purposes of distribution and dependency-management"
* insert StructureDefinitionMetadata(cpg-assetcollection)
* type MS
* type = $library-type#asset-collection
* subject[x] 0..0
* relatedArtifact ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* relatedArtifact contains
    asset 0..* MS and
    requiredAsset 0..* MS
* relatedArtifact[asset]
  * type MS
  * type = #composed-of (exactly)
  * display MS
  * resource 1..1 MS
* relatedArtifact[requiredAsset]
  * type MS
  * type = #depends-on (exactly)
  * display MS
  * resource 1..1 MS
* parameter 0..0
* dataRequirement 0..0
* content 0..0