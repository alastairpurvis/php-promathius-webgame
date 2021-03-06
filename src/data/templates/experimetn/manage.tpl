{if $printmessage != ''}
{$printmessage}<br />
<hr>
{/if}

<table style="width:100%">
<tr>
    <td class="acenter" style="width:30%">
	<form method="post" action="{$main}?manage{$authstr}" id="raceselform">
	<table class="inputtable">
	<tr><th>Change Race</th></tr>
	<tr><td class="acenter">Requires {$initturns} turns,<br />{$land*3} {$wizards}, and<br />at least 75% health</td></tr>
	{section name=racesel loop=$races}
		<tr><td><label><input type="radio" name="new_race" value="{$races[racesel].id}"{if $races[racesel].id == $users.race} checked="checked"{/if}>{$races[racesel].name}</label></td></tr>
	{/section}
	<tr><td class="acenter"><label><input type="checkbox" name="yes_polymorph" value="1">Yes, I really<br />want to change race!</td></tr>
	<tr><th><input type="submit" name="do_polymorph" value="Change Race"></th></tr>
	</table>
	</form>

    </td>
    <td class="acenter" style="width:30%">
	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable">
	<tr><th colspan="1">Change Tax</th></tr>
	<tr><td>Tax Rate:</td>
	    <td class="aright"><input type="text" name="new_tax" size="3" value="{$tax}">%</td></tr>
	<tr><th colspan="2"><input type="submit" name="do_changetax" value="Change Tax Rate"></th></tr>
	</table>
	</form>

	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable">
	<tr><th colspan="2">Industry Settings</th></tr>
	{section name=ind loop=$troops}
	<tr><td>{$troops[ind]}</td>
	    <td class="aright"><input type="text" name="ind_troop{$numbers[ind]}" size="3" value="{$uind[ind]}">%</td></tr>
	{/section}
	<tr><th colspan="2"><input type="submit" name="do_changeindustry" value="Update Training"></th></tr>
	</table>
	</form>


	{if $protection == 'true'}
	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable"><tr><th>
	<input type="submit" name="leave_protection" value="Leave Protection">
	</th></tr></table>
	</form>
	{/if}

{*
	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable">
	<tr><th colspan="2">Change Styles Directory</th></tr>
	<tr><td colspan="2">New Directory:</td></tr>
	<tr><td colspan="2"><input type="text" name="new_basehref" size="65" value="{$ubase}"></td></tr>
	<tr>
	    <th><input type="submit" name="reset_basehref" value="Reset"></th>
	    <th><input type="submit" name="change_basehref" value="Change"></th>
	</tr>
	</table>
	</form>
*}	

	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable">
	<tr><th colspan="2">Change Password</th></tr>
	<tr><td>New:</td>
	    <td><input type="password" name="new_password" size="8"></td></tr>
	<tr><td>Verify:</td>
	    <td><input type="password" name="new_password_verify" size="8"></td></tr>
	<tr><th colspan="2"><input type="submit" name="do_changepass" value="Change Password"></th></tr>
	</table>
	</form>

	{if $lastweek != 'true'}
	<form method="post" action="{$main}?manage{$authstr}">
	<table class="inputtable">
	<tr><th>Vacation</th></tr>
	<tr><td class="acenter">
		Vacation mode will be set for a minimum of {$minvacation} hours.<br />
		When set, you will be immediately locked out of your account,<br />
		and your empire will be frozen after {$vacationdelay} hours.</td></tr>
	<tr><td class="acenter"><label><input type="checkbox" name="yes_vacation" value="1">Yes, I really want to go on vacation!</label></td></tr>
	<tr><th><input type="submit" name="do_setvacation" value="Go on Vacation"></th></tr>
	</table>
	</form>
	{else}
	Vacation is disabled during last week of game.<br />
	{/if}

    </td>
	</tr>
</tr>
<tr>
    <td colspan="3">
	<table class='inputtable'>
	<tr><th>Profile settings</th></tr>
	<tr><td><table>
	<form method='post' action="?manage{$authstr}">
	<tr><td>Email</td><td><input type='text' cols='5' name='email' value='{$email}'></td></tr>
	<tr><td>AIM&nbsp;name</td><td><input type='text' cols='5' name='aim' value='{$aim}'></td></tr>
	<tr><td>MSN&nbsp;name</td><td><input type='text' cols='5' name='msn' value='{$msn}'></td></tr>
	<tr><td>Profile</td><td><textarea name='profile' rows='15' cols='60'>{$profile}</textarea></td></tr>
	<tr><th colspan="2"><input type='submit' value='Update Information' name='do_profile'></th></tr>
	</form>
	</table></td></tr>
	</table>
    </td>
</tr>
</table>

