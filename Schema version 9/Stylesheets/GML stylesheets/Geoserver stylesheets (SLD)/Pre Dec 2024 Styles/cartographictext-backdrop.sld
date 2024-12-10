<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>OS MasterMap Topography Layer (backdrop style)</Name>
    <UserStyle>
      <Title>CartographicText</Title>
      <Abstract>OS MasterMap Topography Layer. Ordnance Survey. (c) Crown copyright and database rights 2016.</Abstract>

      <!-- General Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>General text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:And>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>colour_code</ogc:PropertyName>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
            <ogc:PropertyIsNotEqualTo>
              <ogc:PropertyName>font_code</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsNotEqualTo>
          </ogc:And>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#717171</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!-- Historic Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Historic text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>font_code</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Times New Roman</CssParameter>
              <CssParameter name="font-style">italic</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#717171</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!-- Water Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Water text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>colour_code</ogc:PropertyName>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-style">italic</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#25ADC9</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!-- Height Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Height text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>colour_code</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#A48F7A</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!-- Natural Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Natural text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>colour_code</ogc:PropertyName>
              <ogc:Literal>4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#7F7757</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!-- Boundary Text -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Boundary text - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>colour_code</ogc:PropertyName>
              <ogc:Literal>5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <TextSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Label>
              <ogc:PropertyName>textstring</ogc:PropertyName>
            </Label>
            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">
                <ogc:Mul>
                  <ogc:PropertyName>height</ogc:PropertyName>
                  <ogc:Literal>1.6</ogc:Literal>
                </ogc:Mul>
              </CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX><ogc:PropertyName>geo_x</ogc:PropertyName></AnchorPointX>
                  <AnchorPointY><ogc:PropertyName>geo_y</ogc:PropertyName></AnchorPointY>
                </AnchorPoint>
                <Rotation>-
                  <ogc:PropertyName>rotation</ogc:PropertyName>
                </Rotation>
              </PointPlacement>
            </LabelPlacement>
            <Fill>
              <CssParameter name="fill">#ff98ff</CssParameter>
            </Fill>
          </TextSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
