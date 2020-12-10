# Support Zoom Rails Bubble Tea App

A Rails app for creating, modifying, or removing bubble tea stores, and bubble teas.

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

#### GET `stores/:id/owners/:id`

Get the owner's name for a specific store.

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-18-nzpdu-m86zr.jpg)
</details>

## Stores

#### GET `/stores`

View all stores, and their details (location, owner, bubble teas available, etc)

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-20-p41x7-z6wvs.jpg)
</details>

#### GET `/stores/:id`

View a specific store and its details

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-25-0zw2b-pwii3.jpg)
</details>

#### POST `/stores`

Create a new store, and associate it with an existing owner

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-21-mvi6g-nqxcn.jpg)
</details>

#### PATCH `/stores/:id`

Modify an existing store's attribute(s)

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-30-8c4ev-atpip.jpg)
</details>

#### DELETE `/stores/:id`

Delete an existing store

<details>
<summary>Example response</summary>

Delete store with `id = 52`:

![](https://screenshot.click/09-23-1ta7a-gl0e7.jpg)
</details>

## Bubble Teas

#### GET `/bubble_teas`

View all bubble tea drinks, and their details (flavor, size, price)

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-40-l3t1e-azqgc.jpg)
</details>

####  GET `/stores/:id/bubble_teas`

View all bubble tea drinks, and their details (flavor, size, price), for a specific store

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-07-bqpm5-2balw.jpg)

</details>

#### GET `/bubble_teas/:id` or GET `/stores/:id/bubble_teas/:id`

View a specific bubble tea drink and its details

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-42-79tug-7a034.jpg)
</details>

#### POST `/bubble_teas` or POST `stores/:id/bubble_teas`

Create a new bubble tea. If a `store_id` isn't included, and the address is `stores/:id/bubble_teas`, then it will be added to the store with id = `:id`.

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-11-oapja-2fafu.jpg)
</details>

#### PATCH `/bubble_teas/:id` or PATCH `/stores/:id/bubble_teas/:id`

Modify an existing bubble tea's attribute(s)

<details>
<summary>Example input and response</summary>

![](https://screenshot.click/09-11-sep9n-0hebm.jpg)
</details>

#### DELETE `/bubble_teas/:id` or DELETE `/stores/:id/bubble_teas/:id`

Delete an existing bubble tea drink

<details>
<summary>Example response</summary>

![](https://screenshot.click/09-51-dsdu3-nu255.jpg)
</details>
