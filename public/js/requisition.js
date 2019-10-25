
    $("#clinician_dropdown_id").change(function(){
            $.ajax({
                url: "/unhls_test/clinician/" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#clinician_cadre_id').val(data.cadre);
                    $('#clinician_cadre_id').attr('readonly','true');

                    $('#clinician_phone_id').val(data.phone);
                    $('#clinician_phone_id').attr('readonly','true');

                    $('#clinician_email_id').val(data.email);
                    $('#clinician_email_id').attr('readonly','true');
                }
            });
    });

    $("#facility_dropdown_id").change(function(){
            $.ajax({
                url: "/facilities/" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#clinician_cadre_id').val(data.cadre);
                    $('#clinician_cadre_id').attr('readonly','true');

                    $('#clinician_phone_id').val(data.phone);
                    $('#clinician_phone_id').attr('readonly','true');

                    $('#clinician_email_id').val(data.email);
                    $('#clinician_email_id').attr('readonly','true');
                }
            });
    });
