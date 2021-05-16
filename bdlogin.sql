<?xml version="1.0"?>
<DTS:Executable xmlns:DTS="www.microsoft.com/SqlServer/Dts"
  DTS:refId="Package"
  DTS:CreationDate="5/15/2021 5:15:36 PM"
  DTS:CreationName="Microsoft.Package"
  DTS:CreatorComputerName="DESKTOP-FLSEH7V"
  DTS:CreatorName="DESKTOP-FLSEH7V\Elsa"
  DTS:Description="SSIS Package Description"
  DTS:DTSID="{12BA31C0-0EA2-4360-9FD4-099E101A2955}"
  DTS:ExecutableType="Microsoft.Package"
  DTS:LastModifiedProductVersion="15.0.2000.162"
  DTS:LocaleID="4106"
  DTS:MaxErrorCount="0"
  DTS:ObjectName="bdlogin"
  DTS:VersionGUID="{3EB9CDEC-B741-4FC4-8895-421EDE1D15AA}">
  <DTS:Property
    DTS:Name="PackageFormatVersion">8</DTS:Property>
  <DTS:ConnectionManagers>
    <DTS:ConnectionManager
      DTS:refId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
      DTS:CreationName="OLEDB"
      DTS:DTSID="{F8176AE0-1947-4E58-B3FC-8812BD114138}"
      DTS:ObjectName="DestinationConnectionOLEDB">
      <DTS:ObjectData>
        <DTS:ConnectionManager
          DTS:ConnectRetryCount="1"
          DTS:ConnectRetryInterval="5"
          DTS:ConnectionString="Data Source=DESKTOP-FLSEH7V\SQLEXPRESS;Initial Catalog=prueba2;Provider=SQLOLEDB;Integrated Security=SSPI;Auto Translate=false;" />
      </DTS:ObjectData>
    </DTS:ConnectionManager>
    <DTS:ConnectionManager
      DTS:refId="Package.ConnectionManagers[SourceConnectionOLEDB]"
      DTS:CreationName="OLEDB"
      DTS:DTSID="{698ECCDB-351C-4E7F-A9A2-D8B2FE3E0592}"
      DTS:ObjectName="SourceConnectionOLEDB">
      <DTS:ObjectData>
        <DTS:ConnectionManager
          DTS:ConnectRetryCount="1"
          DTS:ConnectRetryInterval="5"
          DTS:ConnectionString="Data Source=DESKTOP-FLSEH7V\SQLEXPRESS;Initial Catalog=bdlogin;Provider=SQLOLEDB;Integrated Security=SSPI;Auto Translate=false;" />
      </DTS:ObjectData>
    </DTS:ConnectionManager>
  </DTS:ConnectionManagers>
  <DTS:Variables />
  <DTS:Executables>
    <DTS:Executable
      DTS:refId="Package\Data Flow Task 1"
      DTS:CreationName="Microsoft.Pipeline"
      DTS:DelayValidation="True"
      DTS:DTSID="{C0EA60D9-2BE9-45E2-8A06-8F0407C66F8D}"
      DTS:ExecutableType="Microsoft.Pipeline"
      DTS:FailPackageOnFailure="True"
      DTS:LocaleID="-1"
      DTS:ObjectName="Data Flow Task 1"
      DTS:TaskContact="Performs high-performance data extraction, transformation and loading;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved;http://www.microsoft.com/sql/support/default.asp;1">
      <DTS:Variables />
      <DTS:ObjectData>
        <pipeline
          defaultBufferSize="3145728"
          version="1">
          <components>
            <component
              refId="Package\Data Flow Task 1\Destination - permisos"
              componentClassID="Microsoft.OLEDBDestination"
              contactInfo="OLE DB Destination;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;4"
              description="OLE DB Destination"
              name="Destination - permisos"
              usesDispositions="true"
              validateExternalMetadata="False"
              version="4">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[permisos]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">3</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the values supplied for identity columns will be copied to the destination. If false, values for identity columns will be auto-generated at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepIdentity">false</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the columns containing null will have null inserted in the destination. If false, columns containing null will have their default values inserted at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepNulls">false</property>
                <property
                  dataType="System.String"
                  description="Specifies options to be used with fast load.  Applies only if fast load is turned on."
                  name="FastLoadOptions">TABLOCK,CHECK_CONSTRAINTS</property>
                <property
                  dataType="System.Int32"
                  description="Specifies when commits are issued during data insertion.  A value of 0 specifies that one commit will be issued at the end of data insertion.  Applies only if fast load is turned on."
                  name="FastLoadMaxInsertCommitSize">2147483647</property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Destination - permisos.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <inputs>
                <input
                  refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input]"
                  errorOrTruncationOperation="Insert"
                  errorRowDisposition="FailComponent"
                  hasSideEffects="true"
                  name="Destination Input">
                  <inputColumns>
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].Columns[idpermiso]"
                      cachedDataType="i4"
                      cachedName="idpermiso"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[idpermiso]"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[idpermiso]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].Columns[usuario]"
                      cachedDataType="wstr"
                      cachedLength="30"
                      cachedName="usuario"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[usuario]"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[usuario]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].Columns[rol]"
                      cachedDataType="wstr"
                      cachedLength="40"
                      cachedName="rol"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[rol]"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[rol]" />
                  </inputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[idpermiso]"
                      dataType="i4"
                      name="idpermiso" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="30"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input].ExternalColumns[rol]"
                      dataType="wstr"
                      length="40"
                      name="rol" />
                  </externalMetadataColumns>
                </input>
              </inputs>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Destination - permisos.Outputs[OLE DB Destination Error Output]"
                  exclusionGroup="1"
                  isErrorOut="true"
                  name="OLE DB Destination Error Output"
                  synchronousInputId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input]">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination - permisos.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination - permisos.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination - permisos.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Destination 1 - roles"
              componentClassID="Microsoft.OLEDBDestination"
              contactInfo="OLE DB Destination;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;4"
              description="OLE DB Destination"
              name="Destination 1 - roles"
              usesDispositions="true"
              validateExternalMetadata="False"
              version="4">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[roles]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">3</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the values supplied for identity columns will be copied to the destination. If false, values for identity columns will be auto-generated at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepIdentity">false</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the columns containing null will have null inserted in the destination. If false, columns containing null will have their default values inserted at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepNulls">false</property>
                <property
                  dataType="System.String"
                  description="Specifies options to be used with fast load.  Applies only if fast load is turned on."
                  name="FastLoadOptions">TABLOCK,CHECK_CONSTRAINTS</property>
                <property
                  dataType="System.Int32"
                  description="Specifies when commits are issued during data insertion.  A value of 0 specifies that one commit will be issued at the end of data insertion.  Applies only if fast load is turned on."
                  name="FastLoadMaxInsertCommitSize">2147483647</property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Destination 1 - roles.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <inputs>
                <input
                  refId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input]"
                  errorOrTruncationOperation="Insert"
                  errorRowDisposition="FailComponent"
                  hasSideEffects="true"
                  name="Destination Input">
                  <inputColumns>
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].Columns[idrol]"
                      cachedDataType="i4"
                      cachedName="idrol"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].ExternalColumns[idrol]"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[idrol]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].Columns[nombrerol]"
                      cachedDataType="wstr"
                      cachedLength="30"
                      cachedName="nombrerol"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].ExternalColumns[nombrerol]"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[nombrerol]" />
                  </inputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].ExternalColumns[idrol]"
                      dataType="i4"
                      name="idrol" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input].ExternalColumns[nombrerol]"
                      dataType="wstr"
                      length="30"
                      name="nombrerol" />
                  </externalMetadataColumns>
                </input>
              </inputs>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Destination 1 - roles.Outputs[OLE DB Destination Error Output]"
                  exclusionGroup="1"
                  isErrorOut="true"
                  name="OLE DB Destination Error Output"
                  synchronousInputId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input]">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 1 - roles.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 1 - roles.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 1 - roles.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Destination 2 - usuarios"
              componentClassID="Microsoft.OLEDBDestination"
              contactInfo="OLE DB Destination;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;4"
              description="OLE DB Destination"
              name="Destination 2 - usuarios"
              usesDispositions="true"
              validateExternalMetadata="False"
              version="4">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[usuarios]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">3</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the values supplied for identity columns will be copied to the destination. If false, values for identity columns will be auto-generated at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepIdentity">false</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the columns containing null will have null inserted in the destination. If false, columns containing null will have their default values inserted at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepNulls">false</property>
                <property
                  dataType="System.String"
                  description="Specifies options to be used with fast load.  Applies only if fast load is turned on."
                  name="FastLoadOptions">TABLOCK,CHECK_CONSTRAINTS</property>
                <property
                  dataType="System.Int32"
                  description="Specifies when commits are issued during data insertion.  A value of 0 specifies that one commit will be issued at the end of data insertion.  Applies only if fast load is turned on."
                  name="FastLoadMaxInsertCommitSize">2147483647</property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Destination 2 - usuarios.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <inputs>
                <input
                  refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input]"
                  errorOrTruncationOperation="Insert"
                  errorRowDisposition="FailComponent"
                  hasSideEffects="true"
                  name="Destination Input">
                  <inputColumns>
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].Columns[IdUsuario]"
                      cachedDataType="i4"
                      cachedName="IdUsuario"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[IdUsuario]"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[IdUsuario]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].Columns[usuario]"
                      cachedDataType="wstr"
                      cachedLength="20"
                      cachedName="usuario"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[usuario]"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[usuario]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].Columns[pass]"
                      cachedDataType="image"
                      cachedName="pass"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[pass]"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[pass]" />
                  </inputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[IdUsuario]"
                      dataType="i4"
                      name="IdUsuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="20"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input].ExternalColumns[pass]"
                      dataType="image"
                      name="pass" />
                  </externalMetadataColumns>
                </input>
              </inputs>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Destination 2 - usuarios.Outputs[OLE DB Destination Error Output]"
                  exclusionGroup="1"
                  isErrorOut="true"
                  name="OLE DB Destination Error Output"
                  synchronousInputId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input]">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 2 - usuarios.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 2 - usuarios.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 2 - usuarios.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Destination 3 - usuariose"
              componentClassID="Microsoft.OLEDBDestination"
              contactInfo="OLE DB Destination;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;4"
              description="OLE DB Destination"
              name="Destination 3 - usuariose"
              usesDispositions="true"
              validateExternalMetadata="False"
              version="4">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[usuariose]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">3</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the values supplied for identity columns will be copied to the destination. If false, values for identity columns will be auto-generated at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepIdentity">false</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the columns containing null will have null inserted in the destination. If false, columns containing null will have their default values inserted at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepNulls">false</property>
                <property
                  dataType="System.String"
                  description="Specifies options to be used with fast load.  Applies only if fast load is turned on."
                  name="FastLoadOptions">TABLOCK,CHECK_CONSTRAINTS</property>
                <property
                  dataType="System.Int32"
                  description="Specifies when commits are issued during data insertion.  A value of 0 specifies that one commit will be issued at the end of data insertion.  Applies only if fast load is turned on."
                  name="FastLoadMaxInsertCommitSize">2147483647</property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Destination 3 - usuariose.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <inputs>
                <input
                  refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input]"
                  errorOrTruncationOperation="Insert"
                  errorRowDisposition="FailComponent"
                  hasSideEffects="true"
                  name="Destination Input">
                  <inputColumns>
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[iduser]"
                      cachedDataType="i4"
                      cachedName="iduser"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[iduser]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[iduser]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[nombre]"
                      cachedDataType="wstr"
                      cachedLength="60"
                      cachedName="nombre"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[nombre]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[nombre]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[telefono]"
                      cachedDataType="wstr"
                      cachedLength="20"
                      cachedName="telefono"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[telefono]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[telefono]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[usuario]"
                      cachedDataType="wstr"
                      cachedLength="30"
                      cachedName="usuario"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[usuario]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[usuario]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[pass]"
                      cachedDataType="wstr"
                      cachedLength="30"
                      cachedName="pass"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[pass]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[pass]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[rol]"
                      cachedDataType="wstr"
                      cachedLength="50"
                      cachedName="rol"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[rol]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[rol]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].Columns[empresa]"
                      cachedDataType="wstr"
                      cachedLength="30"
                      cachedName="empresa"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[empresa]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[empresa]" />
                  </inputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[iduser]"
                      dataType="i4"
                      name="iduser" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[nombre]"
                      dataType="wstr"
                      length="60"
                      name="nombre" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[telefono]"
                      dataType="wstr"
                      length="20"
                      name="telefono" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="30"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[pass]"
                      dataType="wstr"
                      length="30"
                      name="pass" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[rol]"
                      dataType="wstr"
                      length="50"
                      name="rol" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input].ExternalColumns[empresa]"
                      dataType="wstr"
                      length="30"
                      name="empresa" />
                  </externalMetadataColumns>
                </input>
              </inputs>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Destination 3 - usuariose.Outputs[OLE DB Destination Error Output]"
                  exclusionGroup="1"
                  isErrorOut="true"
                  name="OLE DB Destination Error Output"
                  synchronousInputId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input]">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 3 - usuariose.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 3 - usuariose.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 3 - usuariose.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Destination 4 - Usuariosp"
              componentClassID="Microsoft.OLEDBDestination"
              contactInfo="OLE DB Destination;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;4"
              description="OLE DB Destination"
              name="Destination 4 - Usuariosp"
              usesDispositions="true"
              validateExternalMetadata="False"
              version="4">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[Usuariosp]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">3</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the values supplied for identity columns will be copied to the destination. If false, values for identity columns will be auto-generated at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepIdentity">false</property>
                <property
                  dataType="System.Boolean"
                  description="Indicates whether the columns containing null will have null inserted in the destination. If false, columns containing null will have their default values inserted at the destination. Applies only if fast load is turned on."
                  name="FastLoadKeepNulls">false</property>
                <property
                  dataType="System.String"
                  description="Specifies options to be used with fast load.  Applies only if fast load is turned on."
                  name="FastLoadOptions">TABLOCK,CHECK_CONSTRAINTS</property>
                <property
                  dataType="System.Int32"
                  description="Specifies when commits are issued during data insertion.  A value of 0 specifies that one commit will be issued at the end of data insertion.  Applies only if fast load is turned on."
                  name="FastLoadMaxInsertCommitSize">2147483647</property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[DestinationConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <inputs>
                <input
                  refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input]"
                  errorOrTruncationOperation="Insert"
                  errorRowDisposition="FailComponent"
                  hasSideEffects="true"
                  name="Destination Input">
                  <inputColumns>
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].Columns[Id]"
                      cachedDataType="i4"
                      cachedName="Id"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Id]"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Id]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].Columns[Nombre]"
                      cachedCodepage="1252"
                      cachedDataType="str"
                      cachedLength="40"
                      cachedName="Nombre"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Nombre]"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Nombre]" />
                    <inputColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].Columns[Contraseña]"
                      cachedDataType="bytes"
                      cachedLength="50"
                      cachedName="Contraseña"
                      externalMetadataColumnId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Contraseña]"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Contraseña]" />
                  </inputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Id]"
                      dataType="i4"
                      name="Id" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Nombre]"
                      codePage="1252"
                      dataType="str"
                      length="40"
                      name="Nombre" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input].ExternalColumns[Contraseña]"
                      dataType="bytes"
                      length="50"
                      name="Contraseña" />
                  </externalMetadataColumns>
                </input>
              </inputs>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Outputs[OLE DB Destination Error Output]"
                  exclusionGroup="1"
                  isErrorOut="true"
                  name="OLE DB Destination Error Output"
                  synchronousInputId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input]">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Outputs[OLE DB Destination Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Outputs[OLE DB Destination Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Source - permisos"
              componentClassID="Microsoft.OLEDBSource"
              contactInfo="OLE DB Source;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;7"
              description="OLE DB Source"
              name="Source - permisos"
              usesDispositions="true"
              version="7">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[permisos]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.String"
                  description="The variable that contains the SQL command to be executed."
                  name="SqlCommandVariable"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">0</property>
                <property
                  dataType="System.String"
                  description="The mappings between the parameters in the SQL command and variables."
                  name="ParameterMapping"></property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Source - permisos.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output]"
                  name="OLE DB Source Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[idpermiso]"
                      dataType="i4"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[idpermiso]"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[idpermiso]"
                      name="idpermiso"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[usuario]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[usuario]"
                      name="usuario"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[rol]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[rol]"
                      length="40"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].Columns[rol]"
                      name="rol"
                      truncationRowDisposition="FailComponent" />
                  </outputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[idpermiso]"
                      dataType="i4"
                      name="idpermiso" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="30"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output].ExternalColumns[rol]"
                      dataType="wstr"
                      length="40"
                      name="rol" />
                  </externalMetadataColumns>
                </output>
                <output
                  refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output]"
                  isErrorOut="true"
                  name="OLE DB Source Error Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[idpermiso]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[idpermiso]"
                      name="idpermiso" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      dataType="wstr"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      name="usuario" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[rol]"
                      dataType="wstr"
                      length="40"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[rol]"
                      name="rol" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Source 1 - roles"
              componentClassID="Microsoft.OLEDBSource"
              contactInfo="OLE DB Source;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;7"
              description="OLE DB Source"
              name="Source 1 - roles"
              usesDispositions="true"
              version="7">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[roles]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.String"
                  description="The variable that contains the SQL command to be executed."
                  name="SqlCommandVariable"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">0</property>
                <property
                  dataType="System.String"
                  description="The mappings between the parameters in the SQL command and variables."
                  name="ParameterMapping"></property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Source 1 - roles.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output]"
                  name="OLE DB Source Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[idrol]"
                      dataType="i4"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].ExternalColumns[idrol]"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[idrol]"
                      name="idrol"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[nombrerol]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].ExternalColumns[nombrerol]"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].Columns[nombrerol]"
                      name="nombrerol"
                      truncationRowDisposition="FailComponent" />
                  </outputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].ExternalColumns[idrol]"
                      dataType="i4"
                      name="idrol" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output].ExternalColumns[nombrerol]"
                      dataType="wstr"
                      length="30"
                      name="nombrerol" />
                  </externalMetadataColumns>
                </output>
                <output
                  refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output]"
                  isErrorOut="true"
                  name="OLE DB Source Error Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[idrol]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[idrol]"
                      name="idrol" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[nombrerol]"
                      dataType="wstr"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[nombrerol]"
                      name="nombrerol" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Source 2 - usuarios"
              componentClassID="Microsoft.OLEDBSource"
              contactInfo="OLE DB Source;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;7"
              description="OLE DB Source"
              name="Source 2 - usuarios"
              usesDispositions="true"
              version="7">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[usuarios]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.String"
                  description="The variable that contains the SQL command to be executed."
                  name="SqlCommandVariable"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">0</property>
                <property
                  dataType="System.String"
                  description="The mappings between the parameters in the SQL command and variables."
                  name="ParameterMapping"></property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Source 2 - usuarios.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output]"
                  name="OLE DB Source Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[IdUsuario]"
                      dataType="i4"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[IdUsuario]"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[IdUsuario]"
                      name="IdUsuario"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[usuario]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      length="20"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[usuario]"
                      name="usuario"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[pass]"
                      dataType="image"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[pass]"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].Columns[pass]"
                      name="pass"
                      truncationRowDisposition="FailComponent" />
                  </outputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[IdUsuario]"
                      dataType="i4"
                      name="IdUsuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="20"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output].ExternalColumns[pass]"
                      dataType="image"
                      name="pass" />
                  </externalMetadataColumns>
                </output>
                <output
                  refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output]"
                  isErrorOut="true"
                  name="OLE DB Source Error Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[IdUsuario]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[IdUsuario]"
                      name="IdUsuario" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      dataType="wstr"
                      length="20"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      name="usuario" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[pass]"
                      dataType="image"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[pass]"
                      name="pass" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Source 3 - usuariose"
              componentClassID="Microsoft.OLEDBSource"
              contactInfo="OLE DB Source;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;7"
              description="OLE DB Source"
              name="Source 3 - usuariose"
              usesDispositions="true"
              version="7">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[usuariose]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.String"
                  description="The variable that contains the SQL command to be executed."
                  name="SqlCommandVariable"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">0</property>
                <property
                  dataType="System.String"
                  description="The mappings between the parameters in the SQL command and variables."
                  name="ParameterMapping"></property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Source 3 - usuariose.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output]"
                  name="OLE DB Source Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[iduser]"
                      dataType="i4"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[iduser]"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[iduser]"
                      name="iduser"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[nombre]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[nombre]"
                      length="60"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[nombre]"
                      name="nombre"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[telefono]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[telefono]"
                      length="20"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[telefono]"
                      name="telefono"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[usuario]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[usuario]"
                      name="usuario"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[pass]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[pass]"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[pass]"
                      name="pass"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[rol]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[rol]"
                      length="50"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[rol]"
                      name="rol"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[empresa]"
                      dataType="wstr"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[empresa]"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].Columns[empresa]"
                      name="empresa"
                      truncationRowDisposition="FailComponent" />
                  </outputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[iduser]"
                      dataType="i4"
                      name="iduser" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[nombre]"
                      dataType="wstr"
                      length="60"
                      name="nombre" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[telefono]"
                      dataType="wstr"
                      length="20"
                      name="telefono" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[usuario]"
                      dataType="wstr"
                      length="30"
                      name="usuario" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[pass]"
                      dataType="wstr"
                      length="30"
                      name="pass" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[rol]"
                      dataType="wstr"
                      length="50"
                      name="rol" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output].ExternalColumns[empresa]"
                      dataType="wstr"
                      length="30"
                      name="empresa" />
                  </externalMetadataColumns>
                </output>
                <output
                  refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output]"
                  isErrorOut="true"
                  name="OLE DB Source Error Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[iduser]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[iduser]"
                      name="iduser" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[nombre]"
                      dataType="wstr"
                      length="60"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[nombre]"
                      name="nombre" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[telefono]"
                      dataType="wstr"
                      length="20"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[telefono]"
                      name="telefono" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      dataType="wstr"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[usuario]"
                      name="usuario" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[pass]"
                      dataType="wstr"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[pass]"
                      name="pass" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[rol]"
                      dataType="wstr"
                      length="50"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[rol]"
                      name="rol" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[empresa]"
                      dataType="wstr"
                      length="30"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[empresa]"
                      name="empresa" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
            <component
              refId="Package\Data Flow Task 1\Source 4 - Usuariosp"
              componentClassID="Microsoft.OLEDBSource"
              contactInfo="OLE DB Source;Microsoft Corporation; Microsoft SQL Server; (C) Microsoft Corporation; All Rights Reserved; http://www.microsoft.com/sql/support;7"
              description="OLE DB Source"
              name="Source 4 - Usuariosp"
              usesDispositions="true"
              version="7">
              <properties>
                <property
                  dataType="System.Int32"
                  description="The number of seconds before a command times out.  A value of 0 indicates an infinite time-out."
                  name="CommandTimeout">0</property>
                <property
                  dataType="System.String"
                  description="Specifies the name of the database object used to open a rowset."
                  name="OpenRowset">[dbo].[Usuariosp]</property>
                <property
                  dataType="System.String"
                  description="Specifies the variable that contains the name of the database object used to open a rowset."
                  name="OpenRowsetVariable"></property>
                <property
                  dataType="System.String"
                  description="The SQL command to be executed."
                  name="SqlCommand"
                  UITypeEditor="Microsoft.DataTransformationServices.Controls.ModalMultilineStringEditor"></property>
                <property
                  dataType="System.String"
                  description="The variable that contains the SQL command to be executed."
                  name="SqlCommandVariable"></property>
                <property
                  dataType="System.Int32"
                  description="Specifies the column code page to use when code page information is unavailable from the data source."
                  name="DefaultCodePage">1252</property>
                <property
                  dataType="System.Boolean"
                  description="Forces the use of the DefaultCodePage property value when describing character data."
                  name="AlwaysUseDefaultCodePage">false</property>
                <property
                  dataType="System.Int32"
                  description="Specifies the mode used to access the database."
                  name="AccessMode"
                  typeConverter="AccessMode">0</property>
                <property
                  dataType="System.String"
                  description="The mappings between the parameters in the SQL command and variables."
                  name="ParameterMapping"></property>
              </properties>
              <connections>
                <connection
                  refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Connections[OleDbConnection]"
                  connectionManagerID="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  connectionManagerRefId="Package.ConnectionManagers[SourceConnectionOLEDB]"
                  description="The OLE DB runtime connection used to access the database."
                  name="OleDbConnection" />
              </connections>
              <outputs>
                <output
                  refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output]"
                  name="OLE DB Source Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Id]"
                      dataType="i4"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Id]"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Id]"
                      name="Id"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Nombre]"
                      codePage="1252"
                      dataType="str"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Nombre]"
                      length="40"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Nombre]"
                      name="Nombre"
                      truncationRowDisposition="FailComponent" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Contraseña]"
                      dataType="bytes"
                      errorOrTruncationOperation="Conversion"
                      errorRowDisposition="FailComponent"
                      externalMetadataColumnId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Contraseña]"
                      length="50"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].Columns[Contraseña]"
                      name="Contraseña"
                      truncationRowDisposition="FailComponent" />
                  </outputColumns>
                  <externalMetadataColumns
                    isUsed="True">
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Id]"
                      dataType="i4"
                      name="Id" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Nombre]"
                      codePage="1252"
                      dataType="str"
                      length="40"
                      name="Nombre" />
                    <externalMetadataColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output].ExternalColumns[Contraseña]"
                      dataType="bytes"
                      length="50"
                      name="Contraseña" />
                  </externalMetadataColumns>
                </output>
                <output
                  refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output]"
                  isErrorOut="true"
                  name="OLE DB Source Error Output">
                  <outputColumns>
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Id]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Id]"
                      name="Id" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Nombre]"
                      codePage="1252"
                      dataType="str"
                      length="40"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Nombre]"
                      name="Nombre" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Contraseña]"
                      dataType="bytes"
                      length="50"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[Contraseña]"
                      name="Contraseña" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[ErrorCode]"
                      name="ErrorCode"
                      specialFlags="1" />
                    <outputColumn
                      refId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      dataType="i4"
                      lineageId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Error Output].Columns[ErrorColumn]"
                      name="ErrorColumn"
                      specialFlags="2" />
                  </outputColumns>
                  <externalMetadataColumns />
                </output>
              </outputs>
            </component>
          </components>
          <paths>
            <path
              refId="Package\Data Flow Task 1.Paths[OLE DB Source Output]"
              endId="Package\Data Flow Task 1\Destination - permisos.Inputs[Destination Input]"
              name="OLE DB Source Output"
              startId="Package\Data Flow Task 1\Source - permisos.Outputs[OLE DB Source Output]" />
            <path
              refId="Package\Data Flow Task 1.Paths[OLE DB Source Output1]"
              endId="Package\Data Flow Task 1\Destination 1 - roles.Inputs[Destination Input]"
              name="OLE DB Source Output"
              startId="Package\Data Flow Task 1\Source 1 - roles.Outputs[OLE DB Source Output]" />
            <path
              refId="Package\Data Flow Task 1.Paths[OLE DB Source Output2]"
              endId="Package\Data Flow Task 1\Destination 2 - usuarios.Inputs[Destination Input]"
              name="OLE DB Source Output"
              startId="Package\Data Flow Task 1\Source 2 - usuarios.Outputs[OLE DB Source Output]" />
            <path
              refId="Package\Data Flow Task 1.Paths[OLE DB Source Output3]"
              endId="Package\Data Flow Task 1\Destination 3 - usuariose.Inputs[Destination Input]"
              name="OLE DB Source Output"
              startId="Package\Data Flow Task 1\Source 3 - usuariose.Outputs[OLE DB Source Output]" />
            <path
              refId="Package\Data Flow Task 1.Paths[OLE DB Source Output4]"
              endId="Package\Data Flow Task 1\Destination 4 - Usuariosp.Inputs[Destination Input]"
              name="OLE DB Source Output"
              startId="Package\Data Flow Task 1\Source 4 - Usuariosp.Outputs[OLE DB Source Output]" />
          </paths>
        </pipeline>
      </DTS:ObjectData>
    </DTS:Executable>
    <DTS:Executable
      DTS:refId="Package\Preparation SQL Task 1"
      DTS:CreationName="Microsoft.ExecuteSQLTask"
      DTS:DTSID="{A7C06A3C-2F18-4C93-A578-DDCDB6239F98}"
      DTS:ExecutableType="Microsoft.ExecuteSQLTask"
      DTS:FailPackageOnFailure="True"
      DTS:LocaleID="-1"
      DTS:ObjectName="Preparation SQL Task 1"
      DTS:ThreadHint="0">
      <DTS:Variables />
      <DTS:ObjectData>
        <SQLTask:SqlTaskData
          SQLTask:Connection="{F8176AE0-1947-4E58-B3FC-8812BD114138}"
          SQLTask:SqlStatementSource="CREATE TABLE [dbo].[permisos] (&#xA;[idpermiso] int NOT NULL,&#xA;[usuario] nvarchar(30) NOT NULL,&#xA;[rol] nvarchar(40) NOT NULL&#xA;)&#xA;GO&#xA;CREATE TABLE [dbo].[roles] (&#xA;[idrol] int NOT NULL,&#xA;[nombrerol] nvarchar(30) NOT NULL&#xA;)&#xA;GO&#xA;CREATE TABLE [dbo].[usuarios] (&#xA;[IdUsuario] int NOT NULL,&#xA;[usuario] nchar(20) NOT NULL,&#xA;[pass] varbinary(max) NOT NULL&#xA;)&#xA;GO&#xA;CREATE TABLE [dbo].[usuariose] (&#xA;[iduser] int NOT NULL,&#xA;[nombre] nvarchar(60) NOT NULL,&#xA;[telefono] nvarchar(20) NOT NULL,&#xA;[usuario] nvarchar(30) NOT NULL,&#xA;[pass] nvarchar(30) NOT NULL,&#xA;[rol] nvarchar(50) NOT NULL,&#xA;[empresa] nvarchar(30) NOT NULL&#xA;)&#xA;GO&#xA;CREATE TABLE [dbo].[Usuariosp] (&#xA;[Id] int NOT NULL,&#xA;[Nombre] varchar(40) NOT NULL,&#xA;[Contraseña] varbinary(50) NOT NULL&#xA;)&#xA;GO&#xA;" xmlns:SQLTask="www.microsoft.com/sqlserver/dts/tasks/sqltask" />
      </DTS:ObjectData>
    </DTS:Executable>
  </DTS:Executables>
  <DTS:PrecedenceConstraints>
    <DTS:PrecedenceConstraint
      DTS:refId="Package.PrecedenceConstraints[{DC8EA2F8-8A03-457C-8CCB-0136C6EB357D\}]"
      DTS:CreationName=""
      DTS:DTSID="{DC8EA2F8-8A03-457C-8CCB-0136C6EB357D}"
      DTS:From="Package\Preparation SQL Task 1"
      DTS:LogicalAnd="True"
      DTS:ObjectName="{DC8EA2F8-8A03-457C-8CCB-0136C6EB357D}"
      DTS:To="Package\Data Flow Task 1" />
  </DTS:PrecedenceConstraints>
</DTS:Executable>