@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Projection View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZC_EMP_DHIVYA
  as projection on ZI_EMP_DHIVYA
{
    @UI.lineItem: [{ position: 10 }]
    key EmpId,

    @UI.lineItem: [{ position: 20 }]
    DeptId,

    @UI.lineItem: [{ position: 30 }]
    FirstName,

    @UI.lineItem: [{ position: 40 }]
    LastName,

    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,

    _Department : redirected to parent ZC_DEPT_DHIVYA
}
