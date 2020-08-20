<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    
	<instantiate from="src/app_package/EmptyActivity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityName}Activity.kt" />

    <instantiate from="src/app_package/EmptyLayout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml"/>
	
    <open file="${escapeXmlAttribute(srcOut)}/${activityName}Activity.kt}" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml" />
</recipe>
