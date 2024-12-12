<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="4000" hasScaleBasedVisibilityFlag="1" maxScale="1" styleCategories="AllStyleCategories" version="3.8.1-Zanzibar" simplifyDrawingHints="0" labelsEnabled="0" simplifyDrawingTol="1" simplifyMaxScale="1" simplifyLocal="1" readOnly="0" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="categorizedSymbol" symbollevels="0" forceraster="0" attr="style_code" enableorderby="0">
    <categories>
      <category symbol="0" render="true" value="1" label="Culvert Symbol"/>
      <category symbol="1" render="true" value="2" label="Direction Of Flow Symbol"/>
      <category symbol="2" render="true" value="3" label="Boundary Half Mereing Symbol"/>
      <category symbol="3" render="true" value="4" label="Bench Mark Symbol"/>
      <category symbol="4" render="true" value="5" label="Railway Switch Symbol"/>
      <category symbol="5" render="true" value="6" label="Road Related Flow Symbol"/>
    </categories>
    <symbols>
      <symbol type="marker" name="0" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="R" k="chr"/>
          <prop v="0,153,255,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="40" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="1" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="S" k="chr"/>
          <prop v="144,206,221,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="20" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="2" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="N" k="chr"/>
          <prop v="255,152,255,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="20" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="3" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="M" k="chr"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="25" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="4" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="R" k="chr"/>
          <prop v="140,140,140,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="40" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" name="5" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="FontMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="V" k="chr"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="OSMasterMap" k="font"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="miter" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="255,255,255,255" k="outline_color"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="25" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MapUnit" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol type="marker" name="0" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
          <prop v="0" k="angle"/>
          <prop v="147,58,242,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="area" k="scale_method"/>
          <prop v="2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="360 - orientation / 10"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </source-symbol>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory diagramOrientation="Up" sizeType="MM" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" enabled="0" lineSizeType="MM" opacity="1" penWidth="0" barWidth="5" rotationOffset="270" minScaleDenominator="1" penAlpha="255" backgroundColor="#ffffff" height="15" width="15" penColor="#000000" scaleBasedVisibility="0" scaleDependency="Area" backgroundAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0">
      <fontProperties style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" obstacle="0" showAll="1" priority="0" zIndex="0" placement="0" dist="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="toid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="feature_code">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="version">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="version_date">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="theme">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="change_date">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reason_for_change">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="descriptive_group">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="descriptive_term">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="orientation">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="physical_level">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="physical_presence">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reference_to_feature">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="style_code">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="style_description">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="fid"/>
    <alias index="1" name="" field="toid"/>
    <alias index="2" name="" field="feature_code"/>
    <alias index="3" name="" field="version"/>
    <alias index="4" name="" field="version_date"/>
    <alias index="5" name="" field="theme"/>
    <alias index="6" name="" field="change_date"/>
    <alias index="7" name="" field="reason_for_change"/>
    <alias index="8" name="" field="descriptive_group"/>
    <alias index="9" name="" field="descriptive_term"/>
    <alias index="10" name="" field="orientation"/>
    <alias index="11" name="" field="physical_level"/>
    <alias index="12" name="" field="physical_presence"/>
    <alias index="13" name="" field="reference_to_feature"/>
    <alias index="14" name="" field="style_code"/>
    <alias index="15" name="" field="style_description"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="fid" applyOnUpdate="0"/>
    <default expression="" field="toid" applyOnUpdate="0"/>
    <default expression="" field="feature_code" applyOnUpdate="0"/>
    <default expression="" field="version" applyOnUpdate="0"/>
    <default expression="" field="version_date" applyOnUpdate="0"/>
    <default expression="" field="theme" applyOnUpdate="0"/>
    <default expression="" field="change_date" applyOnUpdate="0"/>
    <default expression="" field="reason_for_change" applyOnUpdate="0"/>
    <default expression="" field="descriptive_group" applyOnUpdate="0"/>
    <default expression="" field="descriptive_term" applyOnUpdate="0"/>
    <default expression="" field="orientation" applyOnUpdate="0"/>
    <default expression="" field="physical_level" applyOnUpdate="0"/>
    <default expression="" field="physical_presence" applyOnUpdate="0"/>
    <default expression="" field="reference_to_feature" applyOnUpdate="0"/>
    <default expression="" field="style_code" applyOnUpdate="0"/>
    <default expression="" field="style_description" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="3" unique_strength="1" notnull_strength="1" field="fid" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="toid" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" field="feature_code" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="version" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="version_date" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="theme" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="change_date" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="reason_for_change" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="descriptive_group" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" field="descriptive_term" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="orientation" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="physical_level" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" field="physical_presence" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" notnull_strength="0" field="reference_to_feature" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="style_code" exp_strength="0"/>
    <constraint constraints="1" unique_strength="0" notnull_strength="1" field="style_description" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="fid"/>
    <constraint desc="" exp="" field="toid"/>
    <constraint desc="" exp="" field="feature_code"/>
    <constraint desc="" exp="" field="version"/>
    <constraint desc="" exp="" field="version_date"/>
    <constraint desc="" exp="" field="theme"/>
    <constraint desc="" exp="" field="change_date"/>
    <constraint desc="" exp="" field="reason_for_change"/>
    <constraint desc="" exp="" field="descriptive_group"/>
    <constraint desc="" exp="" field="descriptive_term"/>
    <constraint desc="" exp="" field="orientation"/>
    <constraint desc="" exp="" field="physical_level"/>
    <constraint desc="" exp="" field="physical_presence"/>
    <constraint desc="" exp="" field="reference_to_feature"/>
    <constraint desc="" exp="" field="style_code"/>
    <constraint desc="" exp="" field="style_description"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" hidden="0" name="fid" width="-1"/>
      <column type="field" hidden="0" name="version" width="-1"/>
      <column type="field" hidden="0" name="theme" width="-1"/>
      <column type="field" hidden="0" name="orientation" width="-1"/>
      <column type="field" hidden="0" name="style_description" width="-1"/>
      <column type="field" hidden="0" name="style_code" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" hidden="0" name="toid" width="-1"/>
      <column type="field" hidden="0" name="feature_code" width="-1"/>
      <column type="field" hidden="0" name="version_date" width="-1"/>
      <column type="field" hidden="0" name="change_date" width="-1"/>
      <column type="field" hidden="0" name="reason_for_change" width="-1"/>
      <column type="field" hidden="0" name="descriptive_group" width="-1"/>
      <column type="field" hidden="0" name="descriptive_term" width="-1"/>
      <column type="field" hidden="0" name="physical_level" width="-1"/>
      <column type="field" hidden="0" name="physical_presence" width="-1"/>
      <column type="field" hidden="0" name="reference_to_feature" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="change_date" editable="1"/>
    <field name="descriptive_group" editable="1"/>
    <field name="descriptive_term" editable="1"/>
    <field name="feature_code" editable="1"/>
    <field name="fid" editable="1"/>
    <field name="orientation" editable="1"/>
    <field name="physical_level" editable="1"/>
    <field name="physical_presence" editable="1"/>
    <field name="reason_for_change" editable="1"/>
    <field name="reference_to_feature" editable="1"/>
    <field name="style_code" editable="1"/>
    <field name="style_description" editable="1"/>
    <field name="theme" editable="1"/>
    <field name="toid" editable="1"/>
    <field name="version" editable="1"/>
    <field name="version_date" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="change_date" labelOnTop="0"/>
    <field name="descriptive_group" labelOnTop="0"/>
    <field name="descriptive_term" labelOnTop="0"/>
    <field name="feature_code" labelOnTop="0"/>
    <field name="fid" labelOnTop="0"/>
    <field name="orientation" labelOnTop="0"/>
    <field name="physical_level" labelOnTop="0"/>
    <field name="physical_presence" labelOnTop="0"/>
    <field name="reason_for_change" labelOnTop="0"/>
    <field name="reference_to_feature" labelOnTop="0"/>
    <field name="style_code" labelOnTop="0"/>
    <field name="style_description" labelOnTop="0"/>
    <field name="theme" labelOnTop="0"/>
    <field name="toid" labelOnTop="0"/>
    <field name="version" labelOnTop="0"/>
    <field name="version_date" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>descriptive_group</previewExpression>
  <mapTip>descriptivegroup</mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
