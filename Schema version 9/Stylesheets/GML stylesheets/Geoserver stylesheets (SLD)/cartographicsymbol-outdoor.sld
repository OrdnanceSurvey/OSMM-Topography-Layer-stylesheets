<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>OS MasterMap Topography Layer (outdoor style)</Name>
    <UserStyle>
      <Title>CartographicSymbol</Title>
      <Abstract>OS MasterMap Topography Layer. Ordnance Survey. (c) Crown copyright and database rights 2017.</Abstract>
      
      <!--  Cartographic Symbols  -->
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Culvert - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/culvertSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>3</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.1</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Direction of water flow arrow - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/flowArrowSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>1.75</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.1</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Boundary mereing change - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/boundaryMereingChangeSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>2</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.1</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Benchmark - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/benchMarkSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>3</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.1</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Railway switch - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/railwaySwitchSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>0.5</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.025</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>  
      
      <FeatureTypeStyle>
        <Rule>
          <Name>Direction of traffic flow arrow - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>6</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PointSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:href="osmmsymbols/roadFlowSymbol-outdoor.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>1.75</Size>
              <Rotation>-
                <ogc:Mul>
                  <ogc:PropertyName>orientation</ogc:PropertyName>
                  <ogc:Literal>0.1</ogc:Literal>
                </ogc:Mul>
              </Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>