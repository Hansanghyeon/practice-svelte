<script>
  let firstName = "sanghyeon";
  let lastName = "Han";
  let beltColor = "Orange";

  $: fullName = `${firstName} ${lastName}`;
  $: {
    console.log(fullName);
    console.log(beltColor);
  }

  const handleClick = () => {
    beltColor = "Orange";
  };
  const handleInput = (e) => {
    beltColor = e.target.value;
  };
</script>

<style>
  main {
    text-align: center;
    padding: 1em;
    max-width: 240px;
    margin: 0 auto;
  }
  h1 {
    color: #ff3e00;
    text-transform: uppercase;
    font-size: 4em;
    font-weight: 100;
  }
  @media (min-width: 640px) {
    main {
      max-width: none;
    }
  }
</style>

<main>
  <h1>{fullName} - {beltColor} belt</h1>
  <p style="color: {beltColor}">Belt Color: {beltColor}</p>
  <input type="text" bind:value={firstName} />
  <input type="text" bind:value={lastName} />
  <input type="text" bind:value={beltColor} />
</main>
