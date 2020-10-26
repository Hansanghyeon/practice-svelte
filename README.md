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

## 2020-10-26

- once - 이벤트가 한 번만 발생할 수 있는지 확인 (처리기 제거)
- preventDefault - 기본 작업 방지 (run e.preventDefault())
- self - 클릭 한 요소가 타겟 인 경우에만 이벤트를 시작합니다.
 
`<div class="backdrop" class:promo={isPromo} on:click|self>` 이렇게 self를 통해서 해당요소에서만 발생하는 이벤트를 감지 실행

`<button on:click|once={toggleModal}>Open Modal</button>` 이렇게 하면 해당 `toggleModal`이라는 함수는 한번만 실행하게 할 수 있다.


## 2020-10-25

스벨트에서 컴포넌트의 속성값과 매개변수값이 같으면 요약해서 작성해도된다.

`<Modal showModal={showModal} />` === `<Modal {showModal} />`

자식컴포넌트에서 `<Modal on:click />` 이렇게 설정하고 사용하는 쪽에서 해당 속성에 이벤트를 전달하면 사용하도록 지정할 수 있다.

리액트에서는 함수를 받아서 실행하는 방법으로 구현했었는데 그냥 이벤트를 사용하는 쪽에서 전달해서 사용해버리니까 이부분이 편리한 것같았다.

아직 활용단계로 사용해보지는 않았지만

## 2020-10-23

`<Model message="Hey, I am a prop value" />` 이런 방식으로 리액트나 뷰와 동일하게 프롭스를 전달할 수 있다.

사용하는 쪽에서는 `export let message;`이렇게 외부의 값을 가져올 수 있게 설정할 수 있다.

`export let message = 'Deafult value';` 이런 방식으로 기본값을 설정할 수도 있다.

## 2020-10-22

퍼블릭에서 설정하는 Glboal css가 아닌 각각의 스벨트 파일에 작성되는 스타일 파일들을 컴파일되어 해당하는 컴포넌트에 유니크한 클래스이름을 부여하고 거기에 맞는 스타일을 적용해준다.

번들 css를 확인해보면 좀더 자게하게 살펴볼 수 있음

태그의 속성을 조건문으로 사용해서 부여할 수 있음

```svelte
<div class="backdrop" class:promo={isPromo}>
```

위처럼 하면 promo라는 클레스가 `isPromo` 참이라면 작성될 것이다.

## 2020-10-21

스벨트에서 컴포넌트로서 사용하는 방법

script 태그에서 `import Modal from './Modal.svelte'` 이런 방식으로 불러오고 리액트에서 처럼 사용한다. JSX!

## 2020-10-20

스벨트에서 조건문을 사용하는 방법

```svelte
{#if num > 20}
  <p>Greater than 20</p>
{:else if num > 5}
  <p>Greater than 5</p>
{:else}
  <p>Not greater than 5</p>
{/if}
```

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

