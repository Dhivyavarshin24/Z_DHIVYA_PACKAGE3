@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for department'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_DEPT_DHIVYA as select from zdept_dhivya
composition [0..*] of ZI_EMP_DHIVYA as _Employee
{
     key dept_id as DeptId,
     dept_name as DeptName,
     location as Location,
     created_by as CreatedBy,
     created_at as CreatedAt,
     last_changed_by as LastChangedBy,
     last_changed_at as LastChangedAt,
     local_last_changed_at as LocalLastChangedAt,
     _Employee
}
