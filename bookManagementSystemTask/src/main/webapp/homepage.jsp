
<%@ page isELIgnored="false"%>
<%@ include file="/templates/header.jsp"%>
<h2 class="text-center mt-4 mx-auto">Our Books</h2>
<div class="container w-75 my-4">
    <div class="btn-wrap d-flex align-items-stretch">
        <a href="add" class="btn btn-secondary btn-sm">Add your Book</a>
        <a href="customer" class="btn btn-secondary btn-sm mx-2">Show Customers</a>
        <a href="sold-book" class="btn btn-secondary btn-sm">Your Sales Details</a>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th class="text-center">Id</th>
            <th style="width: 30%" class="text-center">Name</th>
            <th class="text-center">Author</th>
            <th class="text-center">Stock</th>
            <th class="text-center">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${books}" var="soldBook" >
            <tr>
                <td class="text-center">${soldBook.id}</td>
                <td class="text-center">${soldBook.name}</td>
                <td class="text-center">${soldBook.author}</td>
                <td class="text-center">${soldBook.stock}</td>
                <td align="center">
                    <a href="saleBook?id=${soldBook.id}" class="btn btn-info btn-sm">Sell</a>
                    <a href="update?id=${soldBook.id}" class="btn btn-info btn-sm">Update</a>
                    <a href="delete?id=${soldBook.id}" class="btn btn-danger btn-sm">Remove</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%@ include file="/templates/footer.jsp"%>
