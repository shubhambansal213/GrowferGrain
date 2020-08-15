<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="Register_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Registration</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>
<body>
    
    
       
    <form id="form1" runat="server">
    <div>
        
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="wrapper wrapper--w900">

            <div class="card card-6">
                
                <div class="card-heading">
                    
                    <h2 class="title">Registration</h2>
                </div>
                <div class="card-body">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="glogo.png" alt="GrowferGrain" width="300" height="300" style="vertical-align:top" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn--radius-2 btn--blue-2" style="margin-left: 498" Width="212px" PostBackUrl="~/Login/Default.aspx"/>
                        
                    
    <form method="POST">
                        <div class="form-row">
                            <div class="name">Full name</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="full_name">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="radio" name="gender" value="male"> Male
                                    <input type="radio" name="gender" value="female"> Female
                                    <input type="radio" name="gender" value="other"> Other
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Category</div>
                            <div class="value">
                                <div class="input-group">
                                    <p>If you want to sell then only select vendor</p>
                                    <input type="radio" name="gender" value="male"> Vendor<br>
                                    <input type="radio" name="gender" value="female"> Customer<br>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Date Of Birth</div>
                            <div class="value">
                                <div class="input-group js-input-file">
                                    <input type="date" id="start" name="trip-start"
                                           value="2018-07-22"
                                           min="2018-01-01" max="2018-12-31">
                                </div>
                                <!-- <div class="label--desc">Upload your CV/Resume or any other relevant file. Max file size 50 MB</div>-->
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Phone number</div>
                            <div class="value">
                                <div class="input-group">
                                    <label for="phone">Enter your phone number:</label>
                                    <input class="input--style-6" type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Country</div>
                            <div class="value">
                                <div class="input-group">
                                    <select id="country" name="country">
                                        <option value="Afganistan">India</option>
                                        <option value="Albania">America</option>
                                        <option value="Algeria">Algeria</option>
                                        <option value="American Samoa">American Samoa</option>
                                        <option value="Andorra">Andorra</option>
                                        <option value="India">Australia</option>
                                        <option value="Indonesia">Indonesia</option>
                                        <option value="Pakistan">Pakistan</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">State</div>
                            <div class="value">
                                <div class="input-group">
                                    <select id="State" name="State">
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Albania">Assam</option>
                                        <option value="Algeria">Bihar</option>
                                        <option value="American Samoa">Chhattisgarh</option>
                                        <option value="Andorra">Goa</option>
                                        <option value="India">Angola</option>
                                        <option value="Indonesia">Gujarat</option>
                                        <option value="Pakistan">Himachal Pradesh</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <select id="City" name="City">
                                        <option value="Afganistan">Ahmedabad</option>
                                        <option value="Albania">Surat</option>
                                        <option value="Algeria">Vadodara</option>
                                        <option value="American Samoa">Rajkot</option>
                                        <option value="Andorra">Bhavnagar</option>
                                        <option value="India">Jamnagar</option>
                                        <option value="Indonesia">Anand</option>
                                        <option value="Pakistan">Bharuch</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                                <div class="form-row">
                                    <div class="name">Home address</div>
                                    <div class="value">
                                        <input class="input--style-6" type="text" name="full_name">
                                    </div>
                                </div>
                        <div class="form-row">
                            <div class="name">Upload shop logo(vendors only)</div>
                            <div class="value">
                                <input type="file" id="myFile" name="filename">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" id="pwd" name="pwd">
                            </div>
                        </div>
                        

                            </form>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn--radius-2 btn--blue-2" type="submit">Register</button>
                            
                        </div>
</div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>
    </div>
    </form>
</body>
</html>
