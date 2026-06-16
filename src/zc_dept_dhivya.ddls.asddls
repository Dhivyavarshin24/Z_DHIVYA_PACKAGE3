@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Department Projection View'
@Metadata.ignorePropagatedAnnotations: true

@UI.headerInfo: {
    typeName: 'Department',
    typeNamePlural: 'Departments',
    title: { value: 'DeptName' }
}

define root view entity ZC_DEPT_DHIVYA
  as projection on ZI_DEPT_DHIVYA
{
    @UI.lineItem: [{ position: 10 }]
    key DeptId,

    @UI.lineItem: [{ position: 20 }]
    DeptName,

    @UI.lineItem: [{ position: 30 }]
    Location,

    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,

    @UI.facet: [
      {
        id: 'EmployeeFacet',
        label: 'Employees',
        type: #LINEITEM_REFERENCE,
        targetElement: '_Employee',
        position: 10
      }
    ]
    _Employee : redirected to composition child ZC_EMP_DHIVYA
}
