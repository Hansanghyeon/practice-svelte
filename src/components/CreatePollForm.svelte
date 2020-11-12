<script>
  let fields = { question: "", answerA: "", answerB: "" };
  function submitHandler() {
    console.log(fields);
  }
</script>

<style>
  form {
    width: 400px;
    margin: 0 auto;
    text-align: center;
  }
  .form-field {
    margin: 18px;
  }
  input {
    width: 100%;
    border-radius: 6px;
  }
  label {
    margin: 10px auto;
    text-align: left;
  }
</style>

<form on:submit|preventDefault={submitHandler}>
  <div class="form-field">
    <label>
      Poll Question:
      <input type="text" bind:value={fields.question} />
    </label>
  </div>
  <div class="form-field">
    <label> Answer A: <input type="text" bind:value={fields.answerA} /> </label>
  </div>
  <div class="form-field">
    <label> Answer B: <input type="text" bind:value={fields.answerB} /> </label>
  </div>
  <button type="submit">Add Poll</button>
</form>
