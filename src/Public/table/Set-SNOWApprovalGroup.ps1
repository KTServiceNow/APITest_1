function Set-SNOWApprovalGroup {
    <#
    .SYNOPSIS
        Updates a sysapproval_group record in SNOW
    .DESCRIPTION
        Updates a record from the sysapproval_group table
    .NOTES
        Uses Set-SNOWObject as a template function.
    .OUTPUTS
        PSCustomObject. The full table record/s (-PassThru only).
    .LINK
        https://github.com/insomniacc/PSSnow/blob/main/docs/functions/Set-SNOWApprovalGroup.md
    .LINK
        https://docs.servicenow.com/csh?topicname=c_TableAPI.html&version=latest
    .EXAMPLE
        Set-SNOWApprovalGroup -Sys_ID "<sys_id>" -Properties @{"<key>"="<value>"} -verbose
        Updates a specific record in the table sysapproval_group
    #>  
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSShouldProcess", "")]
    [CmdletBinding(SupportsShouldProcess)]
    param (
        [Parameter()]
        [boolean]
        $admin_override,
        [Parameter()]
        [string]
        $approval_user,
        [Parameter()]
        [alias('handle_a_rejection_by')]
        [string]
        $reject_handling,
        [Parameter()]
        [string]
        $wait_for,
        [Parameter()]
        [boolean]
        $active,
        [Parameter()]
        [string]
        $activity_due,
        [Parameter()]
        [string]
        $additional_assignee_list,
        [Parameter()]
        [string]
        $approval,
        [Parameter()]
        [string]
        $approval_set,
        [Parameter()]
        [string]
        $assigned_to,
        [Parameter()]
        [string]
        $assignment_group,
        [Parameter()]
        [alias('service')]
        [string]
        $business_service,
        [Parameter()]
        [alias('closed')]
        [string]
        $closed_at,
        [Parameter()]
        [string]
        $closed_by,
        [Parameter()]
        [string]
        $close_notes,
        [Parameter()]
        [alias('configuration_item')]
        [string]
        $cmdb_ci,
        [Parameter()]
        [alias('additional_comments')]
        [string]
        $comments,
        [Parameter()]
        [string]
        $comments_and_work_notes,
        [Parameter()]
        [string]
        $company,
        [Parameter()]
        [string]
        $contact_type,
        [Parameter()]
        [string]
        $contract,
        [Parameter()]
        [string]
        $correlation_display,
        [Parameter()]
        [string]
        $correlation_id,
        [Parameter()]
        [string]
        $delivery_plan,
        [Parameter()]
        [string]
        $delivery_task,
        [Parameter()]
        [string]
        $description,
        [Parameter()]
        [string]
        $due_date,
        [Parameter()]
        [string]
        $expected_start,
        [Parameter()]
        [string]
        $follow_up,
        [Parameter()]
        [string]
        $group_list,
        [Parameter()]
        [string]
        $impact,
        [Parameter()]
        [boolean]
        $knowledge,
        [Parameter()]
        [string]
        $location,
        [Parameter()]
        [boolean]
        $made_sla,
        [Parameter()]
        [alias('opened')]
        [string]
        $opened_at,
        [Parameter()]
        [string]
        $opened_by,
        [Parameter()]
        [string]
        $order,
        [Parameter()]
        [string]
        $parent,
        [Parameter()]
        [string]
        $priority,
        [Parameter()]
        [string]
        $service_offering,
        [Parameter()]
        [string]
        $short_description,
        [Parameter()]
        [string]
        $sla_due,
        [Parameter()]
        [string]
        $state,
        [Parameter()]
        [string]
        $time_worked,
        [Parameter()]
        [string]
        $urgency,
        [Parameter()]
        [string]
        $user_input,
        [Parameter()]
        [string]
        $watch_list,
        [Parameter()]
        [alias('actual_end')]
        [string]
        $work_end,
        [Parameter()]
        [string]
        $work_notes,
        [Parameter()]
        [string]
        $work_notes_list,
        [Parameter()]
        [alias('actual_start')]
        [string]
        $work_start
    )
    DynamicParam { Import-DefaultParamSet -TemplateFunction "Set-SNOWObject" }

    Begin {
        $table = "sysapproval_group"
    }
    Process {
        Invoke-SNOWTableUPDATE -table $table -Parameters $PSBoundParameters
    }
}
