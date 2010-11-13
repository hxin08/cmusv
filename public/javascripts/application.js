// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


//function ajaxRemoveTeamMemberNow()
//{
//    $.ajax({
//        type:
//        url:'/teams/remove_team_member?person_id=1&amp;team_id=216',
//
//    })
//
//
//}
//
//    </a>new Ajax.Updater('person1', '/teams/remove_team_member?person_id=1&amp;team_id=216', {asynchronous:true, evalScripts:true, onLoading:function(request){status('person1')}, parameters:'authenticity_token=' + encodeURIComponent('06ed7835e9fa56f90641a30dd549fc0384b84ca8')}); return false;" href="#">Remove now</a>

function toggleStudents()
{
  /* we don't use .toggle since the state may be inaccurate from a page reload */
  if ($('#student_checkbox').is(':checked')) {
    $(".student").show();
  } else {
    $(".student").hide();
  }
  $("#filterBoxOne").trigger("keyup");
}

function toggleStaff()
{
  if ($('#staff_checkbox').is(':checked')) {
    $(".staff").show();
  } else {
    $(".staff").hide();
  }
  $("#filterBoxOne").trigger("keyup");
}

function toggleInactive()
{
  if ($('#inactive_checkbox').is(':checked')) {
    $(".inactive").show();
  } else {
    $(".inactive").hide();
  }
  $("#filterBoxOne").trigger("keyup");
}