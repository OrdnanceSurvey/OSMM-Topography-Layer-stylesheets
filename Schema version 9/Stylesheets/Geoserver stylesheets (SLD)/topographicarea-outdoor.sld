<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>OS MasterMap Topography Layer (outdoor style)</Name>
    <UserStyle>
      <Title>TopographicArea</Title>
      <Abstract>OS MasterMap Topography Layer. Ordnance Survey. (c) Crown copyright and database rights 2017.</Abstract>
      
      <!--  Unclassified  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Unclassified - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>99</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f8f6f0</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>    
      
      <!--  Tidal Water  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Tidal Water - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>47</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aadeef</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      
      
      <!--  Foreshore  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Foreshore - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>31</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eaead3</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      

      <!--  Sand  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Sand - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>26</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f4f0d3</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  

      <!--  Mud  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Mud - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>27</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e8e4dd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  

      <!--  Shingle  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Shingle - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>28</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eaeae4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  
      
      <!--  Multiple surface  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Multiple surface - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eeefda</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Natural Fill  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Natural Fill - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>35</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e4efda</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Manmade Fill  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Manmade Fill - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>36</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f2f2e9</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Natural roadside  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Natural roadside - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>38</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dde6d5</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Manmade roadside  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Manmade roadside - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>39</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f2f2e9</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Landform Natural  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Landform Natural - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>46</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e4efda</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Landform Manmade  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Landform Manmade - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>48</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f2f2e9</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      
      
      <!--  Rail Natural -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rail Natural - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>43</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dce5d3</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      
      
      <!--  Rail Manmade -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rail Manmade - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>42</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cccbcb</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      
      
      <!--  Path  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Path - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>41</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dcdcdb</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Track  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Track - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>9</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dcdcdb</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Step  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Step - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>10</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dcdcdb</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      

      <!--  Road or track  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Road or track - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>37</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#fcfdff</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>      
      
      <!--  Traffic Calming  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Traffic Calming - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>7</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#fcfdff</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Glasshouse  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Glasshouse - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>45</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#f3f9f4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://times</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#96AB96</CssParameter>
                      <CssParameter name="stroke-width">0.2</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>3</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Building  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Building - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>34</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dcd7c6</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>   
      
      <!--  Pylon  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Pylon - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>8</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eee8d3</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Structure  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Structure - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>44</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e7c9c8</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>    

      <!--  Road Bridge  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Road Bridge - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e6dddd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>   

      <!--  Rail Bridge  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rail Bridge - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#fcfdff</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  

      <!--  Bridge  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Bridge - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#d6d2d2</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  
      
      <!--  Footbridge  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Footbridge - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>12</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e8cfcc</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>        

      <!--  Level Crossing  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Level Crossing - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>6</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#fcfdff</CssParameter> 
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>  
      
      <!--  Archway  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Archway - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#dcd7c6</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>

      <!--  Agricultural Land -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Agricultural Land - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>16</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#d6edcf</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Mixed Woodland -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Mixed Woodland - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>13</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cee6bd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillMixedWoodland.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Nonconiferous Tree -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Nonconiferous Tree - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>14</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cee6bd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillNonconiferousTrees.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>      
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Coniferous Tree -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Coniferous Tree - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>15</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cee6bd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillConiferousTrees.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Orchard -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Orchard - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>17</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cee6bd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillOrchard.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>25</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Coppice Or Osiers -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Coppice Or Osiers - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>18</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#cee6bd</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillCoppiceOrOsiers.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Scrub -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Scrub - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>19</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e2efce</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillScrub.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Boulders -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Boulders - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>20</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eaeae4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillBoulders.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Rock -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rock - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>21</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eaeae4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillRock.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Scree -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Scree - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>22</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#eaeae4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillScree.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Rough Grassland -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Rough Grassland - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>23</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e2efce</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillRoughGrassland.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Heath -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Heath - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>24</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e2efce</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillRoughGrassland.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Saltmarsh -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Saltmarsh - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>25</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e4f3f4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillMarsh.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>

      <!--  Marsh -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Marsh - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>29</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#e4f3f4</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillMarsh.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>

      <!--  Reeds -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Reeds - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>30</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aadeef</CssParameter>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <ExternalGraphic>
                    <OnlineResource xlink:type="simple"
                    xlink:href="osmmsymbols/fillMarsh.svg"/>
                    <Format>image/svg+xml</Format>
                  </ExternalGraphic>
                  <Size>60</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer> 
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Canal  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Canal - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>11</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aadeef</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>

      <!--  Inland Water  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Inland Water - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>40</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#aadeef</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
      <!--  Slope  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Slope (pattern) - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>32</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://slash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#669966</CssParameter>
                      <CssParameter name="stroke-width">0.2</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>3</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle> 
      
      <!--  Cliff  -->
      <FeatureTypeStyle>
        <Rule>
          <Name>Cliff - 1:0 to 1:4,000</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>style_code</ogc:PropertyName>
              <ogc:Literal>33</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <MinScaleDenominator>0</MinScaleDenominator>
          <MaxScaleDenominator>4000</MaxScaleDenominator>
          <PolygonSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <Fill>
              <GraphicFill>
                <Graphic>
                  <Mark>
                    <WellKnownName>shape://backslash</WellKnownName>
                    <Stroke>
                      <CssParameter name="stroke">#666666</CssParameter>
                      <CssParameter name="stroke-width">0.2</CssParameter>
                    </Stroke>
                  </Mark>
                  <Size>3</Size>
                </Graphic>
              </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>