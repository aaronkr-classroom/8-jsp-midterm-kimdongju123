<!-- confetti.jsp -->
<div class="wrapper">
  <% for (int i = 0; i < 150; i++) { %>
    <div class="confetti confetti-<%= i %>"></div>
  <% } %>
</div>

<style>
  .wrapper {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
    z-index: 1000;
  }

  .confetti {
    position: absolute;
    width: 10px;
    height: 20px;
    background-color: var(--confetti-color, #FFD700);
    animation: confetti-fall 4s linear infinite;
  }

  @keyframes confetti-fall {
    0% {
      transform: translateY(-100vh) rotate(0deg);
      opacity: 1;
    }
    100% {
      transform: translateY(100vh) rotate(360deg);
      opacity: 0.5;
    }
  }

  /* 랜덤하게 confetti의 애니메이션 속도와 위치 조정 */
  <% for (int i = 0; i < 150; i++) { %>
    .confetti-<%= i %> {
      left: <%= (int) (Math.random() * 100) %>%;
      animation-delay: <%= (Math.random() * 2) %>s;
      animation-duration: <%= 3 + (Math.random() * 2) %>s;
      background-color: hsl(<%= (int) (Math.random() * 360) %>, 100%, 50%);
    }
  <% } %>
</style>
