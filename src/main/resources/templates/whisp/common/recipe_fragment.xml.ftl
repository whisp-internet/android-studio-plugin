<recipe folder="root://whisp/common">
    <dependency mavenUrl="androidx.appcompat:appcompat:${versionAppCompat}"/>
    <dependency mavenUrl="com.github.whisp.framework-arch-android:di:${versionArchFramework}"/>
<#if canNavigate>
	<dependency mavenUrl="com.github.whisp.framework-arch-android:nav:${versionArchFramework}"/>
</#if>
	<instantiate from="root/src/app_package/di/FragmentModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/${className}Module.kt" />

	<#include "root://whisp/common/recipe_dataprovider.xml.ftl" />
    <#include "root://whisp/common/recipe_toolbar.xml.ftl" />
</recipe>