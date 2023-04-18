# TODO APP

This is the solution to the QA Tech challenge

## Most important changes

1. I have changed the code in EditDogForm.js to set min=0. Since then, price can not be negative anymore.
[Price can not be negative anymore](./images/min_0.png)

2. Added id to <tr> and added new column: ID

3. Added condition to Edit form, to make sure that user can not set empty values during Edit.
[Condition to ensure values are not empty](./images/edit_dog_if.png)

4. Updated a method of ID generation. Previous implementation allowed duplicate IDs in case if existing dog e.g. with id 5 was deleted and then another was added.

Now it's:
```
	const addDog = dog => {
		dog.id = dogs[dogs.length - 1].id + 1
		setDogs([ ...dogs, dog ])
	}
```
See the screenshots.

Here are the duplicate IDs (previous implementation):
[Duplicate IDs coming from the old implementation](./images/old_ids.png)

Here are the correct IDs (new implementation):
[Correct ID coming from the new implementation](./images/new_ids.png)