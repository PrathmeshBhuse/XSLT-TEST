<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

    <!-- Match the root element -->
    <xsl:template match="/employees">
        <html>
            <!-- <head>
                <style type="html/css">
                    table {
                        font-family: Arial, sans-serif;
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head> -->
            <body>
                <h1>Employee Details</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Employee Name</th>
                            <th>Designation</th>
                            <th>Date of Joining</th>
                            <th>Address</th>
                            <th>Salary</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Apply template for each employee -->
                        <xsl:apply-templates select="employees  "/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <!-- Template to match each employee -->
    <xsl:template match="employees">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="designation"/></td>
            <td><xsl:value-of select="dateOfJoining"/></td>
            <td><xsl:value-of select="address"/></td>
            <td><xsl:value-of select="salary"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
