{
    "id": "0cde9ba7-7e0c-4f2a-815b-5fa53a22cd00",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "oEnemy",
    "eventList": [
        {
            "id": "f575779b-561f-42db-9668-42590c281d87",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "0cde9ba7-7e0c-4f2a-815b-5fa53a22cd00"
        },
        {
            "id": "20840691-ff12-496d-8881-8b013aa124d0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "0cde9ba7-7e0c-4f2a-815b-5fa53a22cd00"
        },
        {
            "id": "a2e37a3b-517a-46f1-96c3-16b10f220ecc",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "0cde9ba7-7e0c-4f2a-815b-5fa53a22cd00"
        }
    ],
    "maskSpriteId": "e83d7174-4c76-45e4-aa85-7609546da1ce",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "fac2b8e8-df0f-4cae-9b12-cd7384dbe9a5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "vsp",
            "varType": 0
        },
        {
            "id": "ec38fcf5-c01f-4564-85ba-f4fa58c341f9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.2",
            "varName": "grv",
            "varType": 0
        },
        {
            "id": "f23624cc-c4be-421b-ac1a-4120ca3acd0b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2.5",
            "varName": "walksp",
            "varType": 0
        },
        {
            "id": "1fa0d950-1f0e-465b-b03f-c8e019967ed7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "walksp",
            "varName": "hsp",
            "varType": 0
        },
        {
            "id": "b73d0ddc-295a-44fc-a1ab-47d787d75b60",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "0123a0c3-f96d-4438-b43b-c4eacdeff1ba",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "flash",
            "varType": 0
        },
        {
            "id": "7cb66e21-8a3d-4aeb-bce3-7eb8a2871120",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hitfrom",
            "varType": 0
        },
        {
            "id": "1c20b7d6-dc24-4454-b316-69a91a79a40b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "size",
            "varType": 0
        },
        {
            "id": "f33e82ac-1235-47bb-9356-7c41c33b9299",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "afraidofheights",
            "varType": 3
        },
        {
            "id": "af7bd787-f30e-43b2-9749-e261ced6e396",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "grounded",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "bbabb6e1-502c-4a67-97e8-f9e19f7da92c",
    "visible": true
}