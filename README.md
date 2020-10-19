# practice_svelte

## intro

### Svelte는 무엇인가?

- **반응형** 웹 앱 및 인터페이스 생성을 위한 컴파일러
- 사이트의 일부 또는 섹션을 사용하거나 이를 사용하여 전체 웹 사이트를 만들 수 있습니다. (SPA)

브라우저가 데이터에 따라 즉각적으로 반응함!

### 다른 프레임워크와 다른 점은?

- Svelte는 프레임워크가 아닌 컴파일러입니다.
- Svelte는 빌드시 프로덕션용 코드를 단일 바닐라JS 번들로 컴파일합니다.
- 추가 스크립트 또는 라이브러리가 프로덕션에 제공되지 않습니다.
- 종종 웹 사이트가 더 빠르게 실행됩니다.

---

## 2020-10-19

스벨트에서는 `<button on:click={handleClick} />` 이런식으로 작성하면 html에 렌더링되면서 이 함수들이 바로 실행된다.

그래서 인라인 함수를 만들 수 있다. `<button on:click={() => handleClick(person.id)} />` 이렇게 작성하면 자동으로 함수가 호출되지 않는다.

## 2020-10-16

js의 for문이나 배열을 반복할 수있는 방법을 사용해서 반복하는 것이아닌 html 템플릿에서 반복문을 쓰는 것 이 부분이 스벨트에서 조금 특이한 부분이라 생각한다. 그리고 배열을 반복하려할때 배열의 값이 없다면 이라는 조건을 또 걸어 줄 수 있는 것이 신기했다.

```js
let a = [];

if (a.length != 0) {
  a.forEach(e => {});
}
```

이것을 엄청나게 간단하게

```svelt
<main>
  {#each people as person (person.id)}
    <div>
      <h4>{person.name}</h4>
      <p>{person.age} years old, {person.bletColor} belt.</p>
    </div>
  {:else}
    <p>There are no people to show...</p>
  {/each}
</main>
```

👏👏👏👏👏 신기...

## 2020-10-15

`$: fullName = value1 + value2` 이렇게 두가지의 값을 가지고있다면 하나가 업데이트되면 fullName이 업데이트 된다.

`$: console.log(fullName)` 이렇게하면 fullName이 업데이트 될때마다 실행되는 마법!

```svelte
$: {
  console.log('test');
  console.log('test');
}
```

이런 방식으로도 사용가능!

## 2020-10-14

- `bind:value`라는 속성을 통해서 `on:input={}` `value={}`라는 것을 바인딩 가능하다. 양방향 바인딩

