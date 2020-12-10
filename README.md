# Support Zoom Rails Bubble Tea App

Built a Rails app for looking up bubble tea stores in any city.

# API Usage

Run the server (using `dev server`), and use something like [Postman](https://www.postman.com/) to make API calls.

## Owners

#### GET `/owners` 

View all owners of a bubble tea store, and a list of stores that they own.

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-27-5riei-ce3sd.jpg)
</details>

#### GET `owners/:id`

View all stores that belong to a specific owner 

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-30-82v73-b4zjk.jpg)
</details>

## Store

#### GET `/stores`

View all stores, and their details (location, owner, etc)

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-33-2zvwr-f22dg.jpg)
</details>

#### GET `/stores/:id`

View a specific store and its details

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-34-26945-hchk9.jpg)
</details>

#### POST `/stores`

Create a new store, and associate it with an existing owner

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-35-yv0h3-t2pvx.jpg)
</details>

#### PATCH `/stores/:id`

Modify an existing store's attribute(s)

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-37-sxp4w-b855f.jpg)
</details>

#### DELETE `/stores/:id`

Delete an existing store

<details>
<summary>Example response</summary>

Delete store with `id = 51`:

![](https://screenshot.click/09-38-tr9ik-b88c2.jpg)
</details>









## Bubble Tea

#### GET `/bubble_teas`

View all bubble tea drinks, and their details (flavor, size, price)

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-40-l3t1e-azqgc.jpg)
</details>

#### GET `/bubble_teas/:id`

View a specific bubble tea drink and its details

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-42-79tug-7a034.jpg)
</details>

#### POST `/bubble_teas`

Create a new bubble tea

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-51-qckyp-taggu.jpg)
</details>

#### PATCH `/bubble_teas/:id`

Modify an existing bubble tea's attribute(s)

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-49-zsrmo-2n0ey.jpg)
</details>

#### DELETE `/bubble_teas/:id`

Delete an existing store

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-51-dsdu3-nu255.jpg)
</details>
