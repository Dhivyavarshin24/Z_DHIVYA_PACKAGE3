@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for employee'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EMP_DHIVYA as select from zemp_dhivya
 association to parent ZI_DEPT_DHIVYA as _Department
    on $projection.DeptId = _Department.DeptId
{
    key emp_id as EmpId,
    first_name as FirstName,
    last_name as LastName,
    dept_id as DeptId,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    
    _Department
}
