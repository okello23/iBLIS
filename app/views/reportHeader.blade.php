@section ("reportHeader")
<style type="text/css">
     table {
        padding: 2px;
     }
</style>
    <table style="padding: 0px;" >
        <thead>
            <tr>
                <td colspan="12"></td>
            </tr>
    </table>
    <table style="text-align:center;" >
            <tr>
                <td colspan="12" style="text-align:center;">
                    {{ @HTML::image(Config::get('kblis.organization-logo'),  Config::get('kblis.country') . trans('messages.court-of-arms'), array('width' => '90px')) }}
                </td>
            </tr>
            <tr>
                <td colspan="12" style="text-align:center;"><b>
                    {{ strtoupper(Config::get('constants.FACILITY_NAME')) }}<br>
                    {{Config::get('kblis.address-info')}}</b>
                    {{ trans('messages.laboratory-report')}}
                </td>
            </tr>
        </thead>
    </table>
@show