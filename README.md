# Pension Detail Micro Service

To run this service in your local, clone the repository and open any IDE like `Eclipse,VS Code,IntelliJ,etc..` and run `mvn clean install` in the terminal and after successful completion run the application as `Spring Boot App`.

This service provides two functionalities as below,

1. Pensioner Details based on aadhaar number
2. List of all Pensioners ( This previlage is only allowed for an `admin` user)

A total of 20 records are included.

## Resources

You need to have Postman, lombook.jar installed

To make a health check on this service, hit @GET `http://localhost:8200/pensioner/manage/health`

This service always need Authorization for returning Pensioner Details

So, always include Authorization in the header for any request to this service

sample Authorization header

`Authorization :- Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTY2MTMzNzk3MCwiaWF0IjoxNjYxMzM2MTcwfQ.sWL6aHruCUHUwWollCxiGXtMYcDogsL3AifI13pum4AqW3w0_vCcy7CsxZvP9jeQWRF4j8__DSSe6i3SidVXug`

To access the Pensioner Details based on Aadhaar number hit @GET `http://localhost:8200/pensioner/api/v1/findPensionerDetailByAadhaar/398501170207` with valid Authorization header

The response is as below

    {
        "aadharNumber": 398501170207,
        "name": "Prakash Yashwanth",
        "dateOfBirth": "1998-07-23",
        "pan": "LBCPS1775N",
        "salaryEarned": 31000.0,
        "allowances": 1000.0,
        "pensionType": "family",
        "bank": {
            "name": "Axis Bank",
            "bankType": "private",
            "accountNumber": "1028786573"
        }
    }

To access all Pensioners Details, hit @GET `http://localhost:8200/pensioner/api/v1/findAllPensionerDetails` with valid Authorization header

In this service, a CVV file is used to store the data for 20 Pensioners which can be accessed at [Pensioner Details](https://github.com/PrakashYashwanth/pension-detail-micro-service/blob/main/src/main/resources/PensionerDetails.csv)

Kudos, you just accessed the Pension Details based on Aadhaar number with proper Authorization.

The Front end for this service is as below

1)[Pension Management Portal](https://github.com/PrakashYashwanth/pension-management-portal)
