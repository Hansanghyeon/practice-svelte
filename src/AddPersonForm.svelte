<script>
  let name;
  let beltColor;
  let age;
  // let fighting = false;
  // let sneaking = false;
  // let running = false;
  let skills = [];

  const handleSubmit = () => {
    console.log(name, beltColor, age, skills);
  };
</script>

<form on:submit|preventDefault={handleSubmit}>
  <input type="text" placeholder="name" bind:value={name} />
  <input type="text" placeholder="belt color" bind:value={beltColor} />
  <input type="number" placeholder="age" bind:value={age} />
  <!-- svelte-ignore a11y-label-has-associated-control -->
  <label>Skills:</label>
  <!-- <input type="checkbox" checked={fighting} />fighting<br />
  <input type="checkbox" checked={sneaking} />sneaking<br />
  <input type="checkbox" checked={running} />running<br /> -->
  <input type="checkbox" bind:group={skills} value="fighting" />fighting<br />
  <input type="checkbox" bind:group={skills} value="sneaking" />sneaking<br />
  <input type="checkbox" bind:group={skills} value="running" />running<br />
  <label>Belt Color:</label>
  <select bind:value={beltColor}>
    <option value="black">black</option>
    <option value="orange">orange</option>
    <option value="brown">brown</option>
    <option value="white">white</option>
  </select>
  <button>Add Person</button>
</form>
