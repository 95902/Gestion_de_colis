/*************************************** 
********VALIDATION FORMULAIRE CONNECTION**********
****************************************/


 function verifConnection()  {
 
 			 var error_email = document.getElementById("error_email");
 			 var error_mdp = document.getElementById("error_mdp");
 			 
             var email = document.getElementById("email").value;
             var mdp= document.getElementById("mdp").value;
             

             if(email== "") {
                error_email.innerHTML= '<span style="color:red;"> Entrer votre mail</span>';
      			return false;
             }
             if(mdp == "") {
                 error_mdp.innerHTML= '<p style="color:red;"> Entrer votre Mot de passe</p>';
          		 return false;
             }
 		
 		return true;
       
         }
         
     function emailCheck(m)
		{
			var aro = 0;
			var pts = 0;
			var eleVal = document.getElementById("email").value;
			
			var eleVal_leng = eleVal.length;

			for (i = 0; i <= eleVal_leng; i++)
			{
				if (eleVal.charAt(i) == "@")
				{
					aro = aro + 1;
				
				}
				
				if (eleVal.charAt(i) == ".")
				{
					pts = pts + 1;

				}
			}
		
		if ( pts > 0 && aro == 1 )
		{
		error_email.innerHTML= '<p style="color:green;"> Votre adresse est valid</p>';
		}
		
		else
		{
			
		error_email.innerHTML= '<p style="color:red;"> Votre adresse est invalid</p>';
		}
		
	}