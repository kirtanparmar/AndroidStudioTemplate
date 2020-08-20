<?xml version="1.0"?>
<globals>
	<global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="activityLayout" value="activity_${classToResource(activityName)}" />
     <!-- These values are all necessary to utilize the manifest merging code
      included below -->
    <#include "../common/common_globals.xml.ftl" />
    <global id="parentActivityClass" value=""/>
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="isLauncher" type="boolean" value="false" />
    <global id="activityClass" value="${activityName}Activity" />
</globals>
