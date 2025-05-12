<?xml version="1.0" encoding="UTF-8"?>
<aixml>
  <project name="QRCodeGenerator" logicVersion="1.0">
    <components>
      <component type="Form" id="Screen1" name="Screen1">
        <properties>
          <property name="Title" value="QR Code Generator" />
          <property name="BackgroundColor" value="#FFFFFF" />
          <property name="AlignHorizontal" value="3" />
          <property name="AlignVertical" value="2" />
        </properties>
        <components>
          <component type="VerticalArrangement" id="VerticalArrangement1">
            <properties>
              <property name="Width" value="Fill Parent" />
              <property name="Height" value="Fill Parent" />
              <property name="AlignHorizontal" value="3" />
              <property name="AlignVertical" value="2" />
              <property name="BackgroundColor" value="#F8F8F8" />
            </properties>
            <components>
              <component type="Label" id="TitleLabel">
                <properties>
                  <property name="Text" value="QR Code Generator" />
                  <property name="FontSize" value="24" />
                  <property name="FontBold" value="true" />
                  <property name="TextAlignment" value="1" />
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="50" />
                  <property name="BackgroundColor" value="#4CAF50" />
                  <property name="TextColor" value="#FFFFFF" />
                </properties>
              </component>
              <component type="HorizontalArrangement" id="HorizontalArrangement1">
                <properties>
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="Automatic" />
                  <property name="AlignHorizontal" value="3" />
                  <property name="BackgroundColor" value="#F8F8F8" />
                  <property name="Visible" value="true" />
                </properties>
                <components>
                  <component type="Label" id="TypeLabel">
                    <properties>
                      <property name="Text" value="QR Code Type:" />
                      <property name="FontSize" value="16" />
                      <property name="Width" value="120" />
                      <property name="Height" value="40" />
                    </properties>
                  </component>
                  <component type="ListPicker" id="TypePicker">
                    <properties>
                      <property name="Elements" value="Text,URL,Email,Phone,SMS" />
                      <property name="Selection" value="Text" />
                      <property name="Text" value="Text" />
                      <property name="Width" value="Fill Parent" />
                      <property name="Height" value="40" />
                      <property name="BackgroundColor" value="#E0E0E0" />
                    </properties>
                  </component>
                </components>
              </component>
              <component type="HorizontalArrangement" id="InputArrangement">
                <properties>
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="Automatic" />
                  <property name="AlignHorizontal" value="3" />
                  <property name="BackgroundColor" value="#F8F8F8" />
                  <property name="Visible" value="true" />
                </properties>
                <components>
                  <component type="Label" id="InputLabel">
                    <properties>
                      <property name="Text" value="Content:" />
                      <property name="FontSize" value="16" />
                      <property name="Width" value="120" />
                      <property name="Height" value="40" />
                    </properties>
                  </component>
                  <component type="TextBox" id="ContentInput">
                    <properties>
                      <property name="Hint" value="Enter text or URL here" />
                      <property name="Width" value="Fill Parent" />
                      <property name="Height" value="40" />
                      <property name="FontSize" value="16" />
                      <property name="BackgroundColor" value="#FFFFFF" />
                    </properties>
                  </component>
                </components>
              </component>
              <component type="HorizontalArrangement" id="QRSizeArrangement">
                <properties>
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="Automatic" />
                  <property name="AlignHorizontal" value="3" />
                  <property name="BackgroundColor" value="#F8F8F8" />
                  <property name="Visible" value="true" />
                </properties>
                <components>
                  <component type="Label" id="SizeLabel">
                    <properties>
                      <property name="Text" value="QR Size:" />
                      <property name="FontSize" value="16" />
                      <property name="Width" value="120" />
                      <property name="Height" value="40" />
                    </properties>
                  </component>
                  <component type="Slider" id="SizeSlider">
                    <properties>
                      <property name="MinValue" value="100" />
                      <property name="MaxValue" value="300" />
                      <property name="ThumbPosition" value="200" />
                      <property name="Width" value="Fill Parent" />
                    </properties>
                  </component>
                </components>
              </component>
              <component type="Button" id="GenerateButton">
                <properties>
                  <property name="Text" value="Generate QR Code" />
                  <property name="FontSize" value="16" />
                  <property name="BackgroundColor" value="#4CAF50" />
                  <property name="TextColor" value="#FFFFFF" />
                  <property name="Width" value="200" />
                  <property name="Height" value="50" />
                  <property name="Shape" value="2" />
                </properties>
              </component>
              <component type="VerticalArrangement" id="QRCodeContainer">
                <properties>
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="300" />
                  <property name="AlignHorizontal" value="3" />
                  <property name="AlignVertical" value="2" />
                  <property name="BackgroundColor" value="#FFFFFF" />
                </properties>
                <components>
                  <component type="Image" id="QRCodeImage">
                    <properties>
                      <property name="Width" value="200" />
                      <property name="Height" value="200" />
                      <property name="Visible" value="false" />
                    </properties>
                  </component>
                </components>
              </component>
              <component type="HorizontalArrangement" id="ButtonsArrangement">
                <properties>
                  <property name="Width" value="Fill Parent" />
                  <property name="Height" value="Automatic" />
                  <property name="AlignHorizontal" value="3" />
                  <property name="BackgroundColor" value="#F8F8F8" />
                  <property name="Visible" value="false" />
                </properties>
                <components>
                  <component type="Button" id="SaveButton">
                    <properties>
                      <property name="Text" value="Save QR" />
                      <property name="FontSize" value="16" />
                      <property name="BackgroundColor" value="#2196F3" />
                      <property name="TextColor" value="#FFFFFF" />
                      <property name="Width" value="120" />
                      <property name="Height" value="50" />
                      <property name="Shape" value="2" />
                    </properties>
                  </component>
                  <component type="Button" id="ShareButton">
                    <properties>
                      <property name="Text" value="Share QR" />
                      <property name="FontSize" value="16" />
                      <property name="BackgroundColor" value="#FF9800" />
                      <property name="TextColor" value="#FFFFFF" />
                      <property name="Width" value="120" />
                      <property name="Height" value="50" />
                      <property name="Shape" value="2" />
                    </properties>
                  </component>
                </components>
              </component>
            </components>
          </component>
          <component type="Web" id="QRCodeWeb">
            <properties>
              <property name="Url" value="" />
              <property name="Visible" value="false" />
            </properties>
          </component>
          <component type="Notifier" id="Notifier1">
            <properties>
              <property name="BackgroundColor" value="#4CAF50" />
              <property name="TextColor" value="#FFFFFF" />
            </properties>
          </component>
          <component type="File" id="File1">
            <properties>
            </properties>
          </component>
          <component type="Sharing" id="Sharing1">
            <properties>
            </properties>
          </component>
        </components>
      </component>
    </components>

    <blocks>
      <block type="component_event" id="TypePickerAfterPickingEvent">
        <mutation component_type="ListPicker" instance_name="TypePicker" event_name="AfterPicking"></mutation>
        <field name="COMPONENT_SELECTOR">TypePicker</field>
        <statement name="DO">
          <block type="controls_if" id="TypePickerAfterPickingEventIf">
            <mutation elseif="4"></mutation>
            <value name="IF0">
              <block type="logic_compare" id="TypePickerAfterPickingEventIfCondition1">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="TypePickerAfterPickingEventIfCondition1A">
                    <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">TypePicker</field>
                    <field name="PROP">Selection</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="TypePickerAfterPickingEventIfCondition1B">
                    <field name="TEXT">Text</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="component_set_get" id="SetInputLabelText">
                <mutation component_type="Label" set_or_get="set" property_name="Text" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">InputLabel</field>
                <field name="PROP">Text</field>
                <value name="VALUE">
                  <block type="text" id="SetInputLabelTextValue">
                    <field name="TEXT">Text:</field>
                  </block>
                </value>
              </block>
              <block type="component_set_get" id="SetContentInputHint">
                <mutation component_type="TextBox" set_or_get="set" property_name="Hint" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">ContentInput</field>
                <field name="PROP">Hint</field>
                <value name="VALUE">
                  <block type="text" id="SetContentInputHintValue">
                    <field name="TEXT">Enter text here</field>
                  </block>
                </value>
              </block>
            </statement>
            <value name="IF1">
              <block type="logic_compare" id="TypePickerAfterPickingEventIfCondition2">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="TypePickerAfterPickingEventIfCondition2A">
                    <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">TypePicker</field>
                    <field name="PROP">Selection</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="TypePickerAfterPickingEventIfCondition2B">
                    <field name="TEXT">URL</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO1">
              <block type="component_set_get" id="SetInputLabelURL">
                <mutation component_type="Label" set_or_get="set" property_name="Text" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">InputLabel</field>
                <field name="PROP">Text</field>
                <value name="VALUE">
                  <block type="text" id="SetInputLabelURLValue">
                    <field name="TEXT">URL:</field>
                  </block>
                </value>
              </block>
              <block type="component_set_get" id="SetContentInputHintURL">
                <mutation component_type="TextBox" set_or_get="set" property_name="Hint" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">ContentInput</field>
                <field name="PROP">Hint</field>
                <value name="VALUE">
                  <block type="text" id="SetContentInputHintURLValue">
                    <field name="TEXT">Enter URL (https://...)</field>
                  </block>
                </value>
              </block>
            </statement>
            <value name="IF2">
              <block type="logic_compare" id="TypePickerAfterPickingEventIfCondition3">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="TypePickerAfterPickingEventIfCondition3A">
                    <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">TypePicker</field>
                    <field name="PROP">Selection</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="TypePickerAfterPickingEventIfCondition3B">
                    <field name="TEXT">Email</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO2">
              <block type="component_set_get" id="SetInputLabelEmail">
                <mutation component_type="Label" set_or_get="set" property_name="Text" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">InputLabel</field>
                <field name="PROP">Text</field>
                <value name="VALUE">
                  <block type="text" id="SetInputLabelEmailValue">
                    <field name="TEXT">Email:</field>
                  </block>
                </value>
              </block>
              <block type="component_set_get" id="SetContentInputHintEmail">
                <mutation component_type="TextBox" set_or_get="set" property_name="Hint" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">ContentInput</field>
                <field name="PROP">Hint</field>
                <value name="VALUE">
                  <block type="text" id="SetContentInputHintEmailValue">
                    <field name="TEXT">Enter email address</field>
                  </block>
                </value>
              </block>
            </statement>
            <value name="IF3">
              <block type="logic_compare" id="TypePickerAfterPickingEventIfCondition4">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="TypePickerAfterPickingEventIfCondition4A">
                    <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">TypePicker</field>
                    <field name="PROP">Selection</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="TypePickerAfterPickingEventIfCondition4B">
                    <field name="TEXT">Phone</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO3">
              <block type="component_set_get" id="SetInputLabelPhone">
                <mutation component_type="Label" set_or_get="set" property_name="Text" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">InputLabel</field>
                <field name="PROP">Text</field>
                <value name="VALUE">
                  <block type="text" id="SetInputLabelPhoneValue">
                    <field name="TEXT">Phone:</field>
                  </block>
                </value>
              </block>
              <block type="component_set_get" id="SetContentInputHintPhone">
                <mutation component_type="TextBox" set_or_get="set" property_name="Hint" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">ContentInput</field>
                <field name="PROP">Hint</field>
                <value name="VALUE">
                  <block type="text" id="SetContentInputHintPhoneValue">
                    <field name="TEXT">Enter phone number</field>
                  </block>
                </value>
              </block>
            </statement>
            <value name="IF4">
              <block type="logic_compare" id="TypePickerAfterPickingEventIfCondition5">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="TypePickerAfterPickingEventIfCondition5A">
                    <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">TypePicker</field>
                    <field name="PROP">Selection</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="TypePickerAfterPickingEventIfCondition5B">
                    <field name="TEXT">SMS</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO4">
              <block type="component_set_get" id="SetInputLabelSMS">
                <mutation component_type="Label" set_or_get="set" property_name="Text" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">InputLabel</field>
                <field name="PROP">Text</field>
                <value name="VALUE">
                  <block type="text" id="SetInputLabelSMSValue">
                    <field name="TEXT">SMS:</field>
                  </block>
                </value>
              </block>
              <block type="component_set_get" id="SetContentInputHintSMS">
                <mutation component_type="TextBox" set_or_get="set" property_name="Hint" property_type="Text"></mutation>
                <field name="COMPONENT_SELECTOR">ContentInput</field>
                <field name="PROP">Hint</field>
                <value name="VALUE">
                  <block type="text" id="SetContentInputHintSMSValue">
                    <field name="TEXT">Enter phone number and message</field>
                  </block>
                </value>
              </block>
            </statement>
          </block>
        </statement>
      </block>

      <block type="component_event" id="GenerateButtonClickEvent">
        <mutation component_type="Button" instance_name="GenerateButton" event_name="Click"></mutation>
        <field name="COMPONENT_SELECTOR">GenerateButton</field>
        <statement name="DO">
          <block type="controls_if" id="CheckContentEmptyIf">
            <value name="IF0">
              <block type="logic_compare" id="CheckContentEmptyCondition">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="component_set_get" id="CheckContentEmptyConditionA">
                    <mutation component_type="TextBox" set_or_get="get" property_name="Text" property_type="Text"></mutation>
                    <field name="COMPONENT_SELECTOR">ContentInput</field>
                    <field name="PROP">Text</field>
                  </block>
                </value>
                <value name="B">
                  <block type="text" id="CheckContentEmptyConditionB">
                    <field name="TEXT"></field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="component_method" id="ShowEmptyContentNotification">
                <mutation component_type="Notifier" method_name="ShowAlert" is_generic="false" instance_name="Notifier1"></mutation>
                <field name="COMPONENT_SELECTOR">Notifier1</field>
                <value name="ARG0">
                  <block type="text" id="EmptyContentNotificationText">
                    <field name="TEXT">Please enter content to generate QR code</field>
                  </block>
                </value>
              </block>
            </statement>
            <next>
              <block type="controls_if" id="CheckContentNotEmptyIf">
                <value name="IF0">
                  <block type="logic_negate" id="CheckContentNotEmptyCondition">
                    <value name="BOOL">
                      <block type="logic_compare" id="CheckContentNotEmptyCompare">
                        <field name="OP">EQ</field>
                        <value name="A">
                          <block type="component_set_get" id="CheckContentNotEmptyCompareA">
                            <mutation component_type="TextBox" set_or_get="get" property_name="Text" property_type="Text"></mutation>
                            <field name="COMPONENT_SELECTOR">ContentInput</field>
                            <field name="PROP">Text</field>
                          </block>
                        </value>
                        <value name="B">
                          <block type="text" id="CheckContentNotEmptyCompareB">
                            <field name="TEXT"></field>
                          </block>
                        </value>
                      </block>
                    </value>
                  </block>
                </value>
                <statement name="DO0">
                  <block type="lexical_variable_set" id="SetFinalContentVar">
                    <field name="VAR">finalContent</field>
                    <value name="VALUE">
                      <block type="component_set_get" id="GetContentInputText">
                        <mutation component_type="TextBox" set_or_get="get" property_name="Text" property_type="Text"></mutation>
                        <field name="COMPONENT_SELECTOR">ContentInput</field>
                        <field name="PROP">Text</field>
                      </block>
                    </value>
                    <next>
                      <block type="controls_if" id="ApplyContentPrefixIf">
                        <mutation elseif="4"></mutation>
                        <value name="IF0">
                          <block type="logic_compare" id="ApplyContentPrefixIfCondition1">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="component_set_get" id="ApplyContentPrefixIfCondition1A">
                                <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                                <field name="COMPONENT_SELECTOR">TypePicker</field>
                                <field name="PROP">Selection</field>
                              </block>
                            </value>
                            <value name="B">
                              <block type="text" id="ApplyContentPrefixIfCondition1B">
                                <field name="TEXT">URL</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO0">
                          <block type="controls_if" id="CheckURLPrefixIf">
                            <value name="IF0">
                              <block type="logic_negate" id="CheckURLPrefixCondition">
                                <value name="BOOL">
                                  <block type="text_contains" id="CheckURLPrefixTextContains">
                                    <value name="TEXT">
                                      <block type="lexical_variable_get" id="GetFinalContentVarForURLCheck">
                                        <field name="VAR">finalContent</field>
                                      </block>
                                    </value>
                                    <value name="PIECE">
                                      <block type="text" id="URLPrefixText">
                                        <field name="TEXT">http</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                              </block>
                            </value>
                            <statement name="DO0">
                              <block type="lexical_variable_set" id="UpdateFinalContentWithHTTPS">
                                <field name="VAR">finalContent</field>
                                <value name="VALUE">
                                  <block type="text_join" id="JoinHTTPSAndContent">
                                    <mutation items="2"></mutation>
                                    <value name="ADD0">
                                      <block type="text" id="HTTPSPrefix">
                                        <field name="TEXT">https://</field>
                                      </block>
                                    </value>
                                    <value name="ADD1">
                                      <block type="lexical_variable_get" id="GetFinalContentForURLUpdate">
                                        <field name="VAR">finalContent</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                              </block>
                            </statement>
                          </block>
                        </statement>
                        <value name="IF1">
                          <block type="logic_compare" id="ApplyContentPrefixIfCondition2">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="component_set_get" id="ApplyContentPrefixIfCondition2A">
                                <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                                <field name="COMPONENT_SELECTOR">TypePicker</field>
                                <field name="PROP">Selection</field>
                              </block>
                            </value>
                            <value name="B">
                              <block type="text" id="ApplyContentPrefixIfCondition2B">
                                <field name="TEXT">Email</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO1">
                          <block type="lexical_variable_set" id="UpdateFinalContentWithEmailPrefix">
                            <field name="VAR">finalContent</field>
                            <value name="VALUE">
                              <block type="text_join" id="JoinEmailPrefixAndContent">
                                <mutation items="2"></mutation>
                                <value name="ADD0">
                                  <block type="text" id="EmailPrefix">
                                    <field name="TEXT">mailto:</field>
                                  </block>
                                </value>
                                <value name="ADD1">
                                  <block type="lexical_variable_get" id="GetFinalContentForEmailUpdate">
                                    <field name="VAR">finalContent</field>
                                  </block>
                                </value>
                              </block>
                            </value>
                          </block>
                        </statement>
                        <value name="IF2">
                          <block type="logic_compare" id="ApplyContentPrefixIfCondition3">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="component_set_get" id="ApplyContentPrefixIfCondition3A">
                                <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                                <field name="COMPONENT_SELECTOR">TypePicker</field>
                                <field name="PROP">Selection</field>
                              </block>
                            </value>
                            <value name="B">
                              <block type="text" id="ApplyContentPrefixIfCondition3B">
                                <field name="TEXT">Phone</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO2">
                          <block type="lexical_variable_set" id="UpdateFinalContentWithPhonePrefix">
                            <field name="VAR">finalContent</field>
                            <value name="VALUE">
                              <block type="text_join" id="JoinPhonePrefixAndContent">
                                <mutation items="2"></mutation>
                                <value name="ADD0">
                                  <block type="text" id="PhonePrefix">
                                    <field name="TEXT">tel:</field>
                                  </block>
                                </value>
                                <value name="ADD1">
                                  <block type="lexical_variable_get" id="GetFinalContentForPhoneUpdate">
                                    <field name="VAR">finalContent</field>
                                  </block>
                                </value>
                              </block>
                            </value>
                          </block>
                        </statement>
                        <value name="IF3">
                          <block type="logic_compare" id="ApplyContentPrefixIfCondition4">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="component_set_get" id="ApplyContentPrefixIfCondition4A">
                                <mutation component_type="ListPicker" set_or_get="get" property_name="Selection" property_type="Text"></mutation>
                                <field name="COMPONENT_SELECTOR">TypePicker</field>
                                <field name="PROP">Selection</field>
                              </block>
                            </value>
                            <value name="B">
                              <block type="text" id="ApplyContentPrefixIfCondition4B">
                                <field name="TEXT">SMS</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO3">