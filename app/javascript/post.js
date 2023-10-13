document.addEventListener('DOMContentLoaded', () => {
  const likeButtons = document.querySelectorAll('.like-button, .unlike-button');

  likeButtons.forEach((button) => {
    button.addEventListener('ajax:success', (event) => {
      const response = event.detail[0];
      const likeCount = response.count;

      const postId = button.dataset.postId;
      const likeCountElement = document.querySelector(`#like-count-${postId}`);

      if (likeCountElement) {
        likeCountElement.textContent = `${likeCount} likes`;
      }
    });
  });
});
