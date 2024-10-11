select var_value  from cmz_static_variables csv2 where var_name = 'feature_flags'

update cmz_static_variables csv2 set var_value = '[
   {
      "feature_name":"AZURE_SETUP",
      "enabled":false
   },
   {
      "feature_name":"DEMO_MODE",
      "enabled":true,
      "conditions":{
         "customers":[
            212155,
            211236,
            212273,
            212358,
            212581,
            212599
         ]
      }
   },
   {
      "feature_name":"RUNBOOKS",
      "enabled":true,
      "conditions":{
         "customers":[
            212208,
            211236
         ]
      }
   },
   {
      "feature_name":"MODERNIZE",
      "enabled":true,
      "conditions":{
         "customers":[
            212273,
            212358,
            211154,
            212599
         ]
      }
   },
   {
      "feature_name":"MP_APP_INTERCONNECTIVITY",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            212212,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   },
   {
      "feature_name":"MP_APP_CATALOG",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            212212,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   },
   {
      "feature_name":"MP_GRAPH_VIEW",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   }
]
' where var_name = 'feature_flags'


--DEV
[
	{
		"feature_name" : "SETTINGS",
		"enabled" : true
	},
	{
		"feature_name" : "ASSESSMENT_DETAILS",
		"enabled" : true
	},
	{
		"feature_name" : "INVENTORY_SETTINGS",
		"enabled" : true
	},
	{
		"feature_name" : "AGENT_SETUP",
		"enabled" : true
	},
	{
		"feature_name" : "AZURE_SETUP",
		"enabled" : false
	},
	{
		"feature_name" : "VCENTER_SETUP",
		"enabled" : true
	},
	{
		"feature_name" : "USER_MANAGEMENT",
		"enabled" : true
	},
	{
		"feature_name" : "USER_PROFILE",
		"enabled" : true
	},
	{
		"feature_name" : "EDIT_USER_PROFILE",
		"enabled" : true
	},
	{
		"feature_name" : "MFA_SETUP",
		"enabled" : true
	},
	{
		"feature_name" : "EXTERNAL_DATA",
		"enabled" : false
	}
]


--STAGING

[
  {
    "feature_name": "AZURE_SETUP",
    "enabled": true,
    "conditions": {
      "customers": [
        210303
      ]
    }
  },
  {
    "feature_name": "MP_APP_INTERCONNECTIVITY",
    "enabled": true,
    "conditions": {
      "customers": [
        210303,
        210298
      ]
    }
  },
  {
    "feature_name": "MP_GRAPH_VIEW",
    "enabled": true,
    "conditions": {
      "customers": [
        210303,
        210298
      ]
    }
  },
  {
    "feature_name": "RUNBOOKS",
    "enabled": true,
    "conditions": {
      "customers": [
        210298
      ]
    }
  },
  {
    "feature_name": "IMA_AZURE",
    "enabled": true,
    "conditions": {
      "customers": [
        210298
      ]
    }
  }
]
--PROD

[
   {
      "feature_name":"AZURE_SETUP",
      "enabled":false
   },
   {
      "feature_name":"DEMO_MODE",
      "enabled":true,
      "conditions":{
         "customers":[
            212155,
            211236,
            212273,
            212358,
            212581,
            212599
         ]
      }
   },
   {
      "feature_name":"RUNBOOKS",
      "enabled":true,
      "conditions":{
         "customers":[
            212208,
            211236
         ]
      }
   },
   {
      "feature_name":"MODERNIZE",
      "enabled":true,
      "conditions":{
         "customers":[
            212273,
            212358,
            211154,
            212599
         ]
      }
   },
   {
      "feature_name":"MP_APP_INTERCONNECTIVITY",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            212212,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   },
   {
      "feature_name":"MP_APP_CATALOG",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            212212,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   },
   {
      "feature_name":"MP_GRAPH_VIEW",
      "enabled":true,
      "conditions":{
         "customers":[
            210509,
            211519,
            212155,
            212208,
            211236,
            211985,
            212126,
            211147,
            211009,
            211954,
            211855,
            211954
         ]
      }
   }
]
