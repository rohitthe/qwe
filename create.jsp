<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html
 xmlns:b="http://bootsfaces.net/ui"
>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .bg-1 {
      background-color: #1abc9c;
      color: #ffffff;
  }
  #new11{
  margin-top: 40px;
  
  }
  </style>
</head>
<body>
<div class="bg-1">
  <div class="container text-center">
    <h3>Jenkins Configuration</h3>
    <img src="image/jenkins.jpg" class="img-circle" alt="Bird" width="350" height="350">
    <h3>Jenkins</h3>
  </div>
</div>
<div id="new11" align="center">
<f:view>
<h:form>
<h:panelGrid columns="2" border="1" styleClass="formdiv" bgcolor="red">
  <h:outputLabel>Enter Job Name</h:outputLabel>
  <h:inputText id="rohit" value="#{fhnx.jobName}"></h:inputText>
  <h:outputLabel>Deployment Option</h:outputLabel>
  <h:selectOneMenu value="#{fhnx.deploymentoption }">
  <f:selectItem itemValue="Jenkins Pipeline" itemLabel="Jenkins Pipeline" />
   	<f:selectItem itemValue="IBM Pipeline" itemLabel="IBM Pipeline" />
  </h:selectOneMenu>
  <h:outputLabel>Enter Technology</h:outputLabel>
   <h:selectOneMenu value="#{fhnx.technology }" onchange="submit()"	valueChangeListener="#{fhnx.valueChangeMethod2}">
   <f:selectItem  itemLabel="--Select--" />
  <f:selectItem itemValue="Maven" itemLabel="Java/J2EE(Maven Based)" />
  <f:selectItem itemValue="Ant" itemLabel="Java/J2EE(Ant Based)" />
  </h:selectOneMenu>
  <h:outputLabel>Enter Source Code Repository</h:outputLabel>
  <h:selectOneMenu value="#{fhnx.screpo }" onchange="submit()"	valueChangeListener="#{fhnx.valueChangeMethod}">  
  <f:selectItem itemValue="RTC" itemLabel="RTC" />
  <f:selectItem itemValue="SVN" itemLabel="SVN" />
   <f:selectItem itemValue="TPS" itemLabel="TPS" />
  <f:selectItem itemValue="GIT" itemLabel="GIT" />
   <f:selectItem itemValue="CVS" itemLabel="CVS" />
  <f:selectItem itemValue="Clear Case" itemLabel="Clear Case" />
  </h:selectOneMenu>
  
    <h:outputLabel rendered="#{fhnx.technology eq 'Maven' }">Enter Maven Plugin</h:outputLabel>
  <h:inputText value="#{fhnx.mavenplugin}" rendered="#{fhnx.technology eq 'Maven' }"></h:inputText>
    
    <h:outputLabel rendered="#{fhnx.technology eq 'Ant' }">Enter ant build file path</h:outputLabel>
  <h:inputText value="#{fhnx.antbuildfile}" rendered="#{fhnx.technology eq 'Ant' }"></h:inputText>
      <h:outputLabel rendered="#{fhnx.technology eq 'Ant' }">Enter Ant plugin</h:outputLabel>
  <h:inputText value="#{fhnx.antplugin}" rendered="#{fhnx.technology eq 'Ant' }"></h:inputText>
  <h:outputLabel>enter Tomcat deployment server</h:outputLabel>
  <h:inputText id="rohit1" value="#{fhnx.joburl}"></h:inputText>
  <h:outputLabel rendered="#{fhnx.screpo eq 'GIT' }">Enter Repository URL</h:outputLabel>
  <h:inputText rendered="#{fhnx.screpo eq 'GIT' }" value="#{fhnx.repourl}"></h:inputText>
  <h:outputLabel rendered="#{fhnx.screpo eq 'GIT' }">Enter Git plugin</h:outputLabel>
  <h:inputText value="#{fhnx.gitplugin}" rendered="#{fhnx.screpo eq 'GIT' }"></h:inputText>
  <h:outputLabel rendered="#{fhnx.screpo eq 'GIT' }">Enter CredentialsId</h:outputLabel>
  <h:inputText value="#{fhnx.credentialsID}" rendered="#{fhnx.screpo eq 'GIT' }"></h:inputText>
  <h:commandButton value="submit" action="#{fhnx.createService}" ></h:commandButton>
  <h:commandButton value="back" action="body.jsp" styleClass="formdiv"></h:commandButton>
  </h:panelGrid>
</h:form>
</f:view>
</div>
</body>
</html>