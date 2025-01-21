# OS MasterMap Topography Layer
*Outdoor, Road, Light, Backdrop and Standard Styles*

These are **SLD** stylesheets for OS MasterMap Topography Layer. You will need to apply the post processing SQL scripts before using these stylesheets.

In 2024 we updated our Outdoor, Road and Light styles to reflect our changes to the OS Maps API. You can read about the changes here: https://www.ordnancesurvey.co.uk/blog/base-map-style-updates. Our legacy styles remain available for those who want to use them.

In 2025 we also added a new Black and White style.

## Getting Started Guide

For help and advice please see the [Getting Started Guide](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/master/Getting%20Started%20Guide%20-%20Styling%20OSMM%20Topography%20Layer.pdf)

### GeoServer and Oracle

If using the SLDs in GeoServer with the data loaded into an Oracle database you may need to update all `<ogc:PropertyName>` values to be uppercase to match the data. Oracle column names are uppercase by default and an unquoted lowercase column name is treated as uppercase by the database.

## Images

**Outdoor style**

![Outdoor style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/2427903f608a6cc14f2eb665831f33361a73ac4c/Schema%20version%209/Stylesheets/GML%20stylesheets/Geoserver%20stylesheets%20(SLD)/images/Outdoor-2.png)


**Light style**

![Light style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/2427903f608a6cc14f2eb665831f33361a73ac4c/Schema%20version%209/Stylesheets/GML%20stylesheets/Geoserver%20stylesheets%20(SLD)/images/Light-2.png)


**Road style**

![Road style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/2427903f608a6cc14f2eb665831f33361a73ac4c/Schema%20version%209/Stylesheets/GML%20stylesheets/Geoserver%20stylesheets%20(SLD)/images/Road-1.png)


**Black and White style**

![Black and White style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/66b093f6ab1260cd760472444c68aedf9e29cf56/Schema%20version%209/Stylesheets/GML%20stylesheets/Geoserver%20stylesheets%20(SLD)/images/Black%20and%20White.png)


**Backdrop style**

![Backdrop style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/master/Schema%20version%209/Stylesheets/GML%20stylesheets/QGIS%20stylesheets%20(QML)/images/Backdrop-1.png)


**Standard style**

![Standard style](https://github.com/OrdnanceSurvey/OSMM-Topography-Layer-stylesheets/blob/master/Schema%20version%209/Stylesheets/GML%20stylesheets/QGIS%20stylesheets%20(QML)/images/Standard-1.png)



