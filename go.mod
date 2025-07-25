<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AIS IT Support</title>
  <style>
    body { margin:0; font-family:Arial,sans-serif; background:#f5f7fa; color:#222; }
    header, section, footer { max-width:800px; margin:auto; padding:40px 20px; }
    .hero { background:linear-gradient(to right,#1f3b73,#3b4e6c); color:#fff; text-align:center; padding:60px 20px; }
    .hero h1{font-size:2.4em;margin-bottom:0.3em;} .hero p{font-size:1.1em;margin-bottom:1em;}
    .hero button{padding:12px 24px;background:#4c8eda;color:#fff;border:none;border-radius:6px;cursor:pointer;}
    .services { display:flex; flex-wrap:wrap; gap:20px; justify-content:space-between; }
    .service { flex: 1 1 calc(48% - 20px); background:#fff; padding:20px; border-radius:8px; box-shadow:0 2px 6px rgba(0,0,0,0.1); cursor:pointer; }
    .services img { width:100%; height:auto; display:block; margin-bottom:10px; border-radius:4px; }
    .modal { display:none; position:fixed; z-index:10; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,0.8); }
    .modal-content { position:relative; margin:5% auto; width:90%; max-width:600px; }
    .modal-content img { width:100%; height:auto; border-radius:8px; }
    .close { position:absolute; top:10px; right:10px; color:#fff; font-size:30px; font-weight:bold; cursor:pointer; }
    @media (max-width:600px){ .service{flex:1 1 100%;} }
  </style>
</head>
<body>

<header class="hero">
  <h1>AIS IT Support</h1>
  <p>Надёжное IT‑обслуживание и системное администрирование для вашего бизнеса</p>
  <button onclick="document.getElementById('contact').scrollIntoView({behavior:'smooth'})">Связаться с нами</button>
</header>

<section>
  <h2>Услуги</h2>
  <div class="services">
    <div class="service" data-img="service1">
      <img src="" alt="Настройка серверов">
      <h3>Настройка серверов</h3>
    </div>
    <div class="service" data-img="service2">
      <img src="" alt="Обслуживание сетей">
      <h3>Обслуживание сетей</h3>
    </div>
    <div class="service" data-img="service3">
      <img src="" alt="Безопасность">
      <h3>Безопасность</h3>
    </div>
    <div class="service" data-img="service4">
      <img src="" alt="Резервное копирование">
      <h3>Резервное копирование</h3>
    </div>
    <div class="service" data-img="service5">
      <img src="" alt="Удалённая поддержка">
      <h3>Удалённая поддержка</h3>
    </div>
  </div>
</section>

<!-- Модальное окно -->
<div class="modal" id="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <img id="modal-img" src="" alt="">
  </div>
</div>

<section>
  <h2>О нас</h2>
  <p>7+ лет опыта, сертификация Linux Foundation и Windows Server. Индивидуальный подход и надёжная поддержка.</p>
</section>

<section>
  <h2>Отзывы клиентов</h2>
  <blockquote>«Работаем с AIS уже больше года. Сервера и сеть работают как часы!» — Алексей</blockquote>
  <blockquote>«Удалённо восстановили данные после сбоя. Спасибо!» — Тимур</blockquote>
</section>

<section id="contact">
  <h2>Связаться с нами</h2>
  <form>
    <input type="text" placeholder="Имя" required><br>
    <input type="email" placeholder="Email" required><br>
    <textarea placeholder="Сообщение" rows="4" required></textarea><br>
    <button type="submit">Отправить</button>
  </form>
  <p><strong>Телефон:</strong> +7 777 123 4567<br>
     <strong>Email:</strong> support@ais-it.kz<br>
     <strong>Telegram / WhatsApp:</strong> @ais_support</p>
</section>

<footer>
  © 2025 AIS IT Support
</footer>

<script>
  const serviceImages = {
    service1: 'https://via.placeholder.com/600x400?text=Серверы',
    service2: 'https://via.placeholder.com/600x400?text=Сети',
    service3: 'https://via.placeholder.com/600x400?text=Безопасность',
    service4: 'https://via.placeholder.com/600x400?text=Резервное+копирование',
    service5: 'https://via.placeholder.com/600x400?text=Удалённая+поддержка',
  };
  document.querySelectorAll('.service').forEach(div => {
    const img = div.querySelector('img');
    const key = div.getAttribute('data-img');
    img.src = serviceImages[key];
    div.addEventListener('click', () => {
      document.getElementById('modal-img').src = serviceImages[key];
      document.getElementById('modal').style.display = 'block';
    });
  });
  function closeModal() {
    document.getElementById('modal').style.display = 'none';
  }
  window.onclick = e => { if (e.target.id === 'modal') closeModal(); };
</script>

</body>
</html>

