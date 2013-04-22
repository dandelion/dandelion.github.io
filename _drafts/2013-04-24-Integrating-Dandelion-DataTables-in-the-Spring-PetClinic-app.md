---
layout: post
tagline: v0.8.6
categories : ['Tutorial']
tags : ['Spring', 'Dandelion-datatables']
author: 'Thibault Duchateau'
---
{% include setup %}

Recently we joined the famous Spring PetClinic application.

idées :
mot clé : front layer
parler de la prez de MichaelIsvy

#### Add new dependencies
As usual with Maven apps, the first thing to do is to update the `pom.xml` adding new dependencies in the project. We started adding the datatables-jsp artifact and the datatables-export-itext extra to enable PDF export.

    <!-- Dandelion -->
    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>datatables-jsp</artifactId>
        <version>0.8.11</version>
    </dependency>
    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>datatables-export-itext</artifactId>
        <version>0.8.11</version>
    </dependency>

#### Replacing JSTL by Dandelion-Datatables
Only two JSPs contain table : ownersList.jsp and vetList.jsp. Let's continue the integration with the easiest one.

##### vetList.jsp
Before:

    <table class="table table-stripped" style="width:600px;">
        <thead>
            <tr>
                <th>Name</th>
                <th>Specialties</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="vet" items="${vets.vetList}">
            <tr>
                <td><c:out value="${vet.firstName} ${vet.lastName}"/></td>
                <td>
                    <c:forEach var="specialty" items="${vet.specialties}">
                        <c:out value="${specialty.name}"/>
                    </c:forEach>
                    <c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

Now :

    <datatables:table id="vets" data="${vets.vetList}" cdn="true" row="vet" theme="bootstrap2" cssClass="table table-striped" paginate="false" info="false">
        <datatables:column title="Name">
            <c:out value="${vet.firstName} ${vet.lastName}"></c:out>
        </datatables:column>
        <datatables:column title="Specialties">
            <c:forEach var="specialty" items="${vet.specialties}">
                <c:out value="${specialty.name}"/>
            </c:forEach>
            <c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
        </datatables:column>
    </datatables:table>

##### ownersList.jsp


#### Add compatibility for Servlet 2.x containers

nouvelle dependence
mise à jour du web.xml
