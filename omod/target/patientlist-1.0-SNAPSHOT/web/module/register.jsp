
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>




<%@ include file="template/localHeader.jsp"%>

<p>Hello ${user.systemId}!</p>

Add new Patient......
<form action="<c:url value='/module/patientlist/addpatient.form' />" method='POST'>

First Name:
    <br>
    <input type="text" placeholder="first name" name="patient_first_name" required><br>
    Middle Name:<br>
    <input type="text" placeholder="middle name" name="patient_middle_name" required><br>
    Family Name:<br>
    <input type="text" placeholder="family name" name="patient_family_name" required><br>
    OpenMRSId:<br>
    <input type="text" placeholder="OpenMRSId" name="patient_openMRSId" required><br>
   Address:<br>
    <input type="text" placeholder="Address" name="patient_address" required><br>
    Age:<br>
    <input type="date" placeholder="Date Of Birth" name="patient_dob" required><br>
Gender:<br>
    <select name="patient_gender">
        <option >Select gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>

    </select>
    <br>
    <br>

    <button class = "btn btn-primary"> Submit</button>

</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>