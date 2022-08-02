
Connect-AzAccount
Get-AzSubscription
Select-AzSubscription "QA - rbPulse"

Get-AzConsumptionUsageDetail -StartDate 2022-04-01 -EndDate 2022-04-31 | Select-Object AccountName,AdditionalInfo,AdditionalProperties,BillableQuantity,BillingPeriodId,BillingPeriodName,ConsumedService,CostCenter,Currency,DepartmentName,Id,InstanceId,InstanceLocation,InstanceName,InvoiceId,InvoiceName,IsEstimated,MeterDetails,MeterId,Name,PretaxCost,Product,SubscriptionGuid,SubscriptionName,Tags,Type,UsageEnd,UsageQuantity,UsageStart `
| ConvertTo-Csv -NoTypeInformation `
| Set-Content C:\Badri\QA_2020_Final_April.csv
