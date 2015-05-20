
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>




<%@ include file="template/localHeader.jsp"%>

<p>Hello ${user.systemId}!</p>

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Identifier</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="patient" items="${patientList}" varStatus="status">

        <tr>

            <td><a href="encounter.form?patientId=${patient.patientId}">${patient.givenName}</a></td>
            <%--<td>${patient.givenName}</td>--%>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
            <td>${patient.identifiers}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<br>

Add new Patient......
<form action="<c:url value='/module/patientlist/register.form' />" method='get'>

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
    Date of Birth:<br>
    <input type="date" placeholder="Date Of Birth" name="patient_dob" required><br>
Gender:<br>
    <select name="patient_gender" required>
        <option >Select gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>

    </select>
    <br>
    <br>

    <button class = "btn btn-primary"> Submit</button>

</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>