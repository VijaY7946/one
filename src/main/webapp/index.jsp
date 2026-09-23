<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · modern e‑commerce</title>

  <!-- Google Fonts & Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    /* ========== FRESH & VIBRANT PALETTE ========== */
    :root {
      --bg: #f9f7f4;
      --bg-card: #ffffff;
      --primary: #1e1e2f;
      --primary-light: #2e2e42;
      --accent: #f97316;        /* warm orange */
      --accent-light: #fff0e5;
      --accent-dark: #ea580c;
      --muted: #6b6b7c;
      --muted-light: #9d9daf;
      --surface: #f1eeea;
      --success: #0f9d8f;
      --warning: #f59e0b;
      --radius: 24px;
      --radius-sm: 14px;
      --shadow: 0 8px 28px rgba(0, 0, 0, 0.04), 0 2px 8px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 20px 48px rgba(249, 115, 22, 0.12), 0 8px 20px rgba(0, 0, 0, 0.04);
      --transition: 0.3s cubic-bezier(0.2, 0, 0, 1);
      --container: 1280px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html { scroll-behavior: smooth; }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      padding-bottom: 0;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }
    input { font-family: inherit; }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ========== UTILITIES ========== */
    .sr-only {
      position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
      overflow: hidden; clip: rect(0,0,0,0); border: 0;
    }

    /* ========== BUTTONS (modern & friendly) ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      letter-spacing: -0.01em;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      box-shadow: 0 8px 18px -6px rgba(249, 115, 22, 0.4);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 16px 28px -8px rgba(249, 115, 22, 0.5);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      transform: translateY(-3px);
      box-shadow: 0 14px 24px -8px rgba(0,0,0,0.2);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      color: #fff;
      border-color: rgba(255,255,255,0.25);
      backdrop-filter: blur(8px);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.2);
      border-color: rgba(255,255,255,0.5);
      transform: translateY(-3px);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(30,30,47,0.12);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-3px);
    }

    /* ========== HEADER ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      transition: box-shadow 0.2s;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 14px 0;
      min-height: 78px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.03em;
      color: var(--primary);
      flex-shrink: 0;
    }
    .brand i { font-size: 28px; color: var(--accent); }
    .brand .accent { color: var(--accent); font-weight: 800; }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
      background: var(--surface);
      padding: 4px;
      border-radius: 60px;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 20px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
      white-space: nowrap;
    }
    nav.main-nav li a i { font-size: 14px; }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: #fff;
      color: var(--primary);
      box-shadow: 0 4px 12px rgba(0,0,0,0.04);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-shrink: 0;
    }
    .icon-btn {
      width: 48px;
      height: 48px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 20px;
      color: var(--muted);
      transition: var(--transition);
      background: transparent;
    }
    .icon-btn:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 800;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2.5px solid #fff;
      box-shadow: 0 2px 8px rgba(249,115,22,0.4);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 8px 0 22px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
      margin-right: 6px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 5px rgba(249,115,22,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 14px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 10px 12px;
      color: var(--muted);
      font-size: 16px;
      transition: var(--transition);
      border-radius: 50%;
    }
    .search-wrap button:hover { color: var(--accent); background: rgba(249,115,22,0.08); }

    .mobile-toggle {
      display: none;
      width: 48px; height: 48px;
      border-radius: 50%;
      font-size: 22px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }
    .mobile-toggle:hover { background: var(--accent-light); color: var(--accent); }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0,0,0,0.03);
      padding: 18px 0 24px;
      box-shadow: 0 20px 30px -10px rgba(0,0,0,0.05);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 16px;
      padding: 14px 20px;
      border-radius: var(--radius-sm);
      font-weight: 600;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a i { width: 24px; color: var(--accent); font-size: 18px; }
    #mobileMenu ul li a:hover { background: var(--accent-light); }

    /* ========== HERO (refreshed, warm gradient) ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 70px 0;
      border-radius: 40px;
      overflow: hidden;
      margin: 24px 28px 0;
      background: linear-gradient(135deg, #1e1e2f 0%, #2e2e42 100%);
      box-shadow: 0 30px 50px -20px rgba(0,0,0,0.3);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
      mix-blend-mode: luminosity;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 2; }
    .hero .badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(249,115,22,0.2);
      color: #ffb07c;
      padding: 8px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(249,115,22,0.3);
      margin-bottom: 20px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 58px;
      font-weight: 700;
      color: #fff;
      line-height: 1.15;
      max-width: 700px;
      margin-bottom: 20px;
      letter-spacing: -0.02em;
      text-shadow: 0 4px 20px rgba(0,0,0,0.2);
    }
    .hero p {
      color: rgba(255,255,255,0.85);
      font-size: 18px;
      max-width: 560px;
      margin-bottom: 36px;
      line-height: 1.6;
      font-weight: 400;
    }
    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ========== SECTIONS ========== */
    .section { padding: 70px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 44px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 34px;
      font-weight: 800;
      letter-spacing: -0.02em;
      color: var(--primary);
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 6px;
      font-size: 16px;
      font-weight: 400;
    }
    .section-header .view-all {
      font-weight: 700;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 15px;
      transition: var(--transition);
      white-space: nowrap;
      padding: 8px 18px;
      border-radius: 40px;
      background: var(--accent-light);
    }
    .section-header .view-all:hover {
      gap: 12px;
      background: var(--accent);
      color: #fff;
    }

    /* ========== CATEGORIES (more tactile) ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 14px 22px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 68px;
      height: 68px;
      border-radius: 24px;
      background: var(--accent-light);
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 28px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(0.96) rotate(2deg);
    }
    .cat-card h4 {
      font-size: 16px;
      font-weight: 700;
      letter-spacing: -0.01em;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 4px;
      font-weight: 500;
    }

    /* ========== PRODUCTS (clean and airy) ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 26px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.45s cubic-bezier(0.2,0,0,1);
    }
    .product-card:hover .img-wrap img { transform: scale(1.06); }
    .product-card .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: #fff;
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 800;
      letter-spacing: 0.3px;
      text-transform: uppercase;
      box-shadow: 0 6px 14px rgba(249,115,22,0.3);
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: #1e1e2f;
      box-shadow: 0 6px 14px rgba(245,158,11,0.3);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 16px;
      right: 16px;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: rgba(255,255,255,0.95);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(8px);
      box-shadow: 0 4px 12px rgba(0,0,0,0.04);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.1);
    }
    .product-card .body {
      padding: 20px 20px 14px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--accent);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 700;
      background: var(--accent-light);
      display: inline-block;
      padding: 4px 12px;
      border-radius: 30px;
      align-self: flex-start;
    }
    .product-card .body h5 {
      font-size: 16px;
      font-weight: 700;
      line-height: 1.35;
      letter-spacing: -0.01em;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      margin-top: 4px;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 800;
      font-size: 20px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
      font-weight: 500;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 13px;
      color: #f5a623;
      margin-top: 2px;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 500;
    }
    .product-card .footer {
      padding: 0 20px 20px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 14px;
      border-radius: 40px;
      background: var(--primary);
      color: #fff;
      font-weight: 700;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border: 2px solid var(--primary);
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      border-color: var(--accent);
      transform: scale(1.02);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
      border-color: var(--success);
    }

    /* ========== DEAL (sleek & urgent) ========== */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: 32px;
      overflow: hidden;
      box-shadow: var(--shadow-hover);
      border: 2px solid rgba(249,115,22,0.1);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 380px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 52px 54px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      background: linear-gradient(145deg, #ffffff 0%, #fefcf9 100%);
    }
    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--warning);
      color: #1e1e2f;
      padding: 8px 20px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 18px;
      box-shadow: 0 8px 16px -6px rgba(245,158,11,0.3);
    }
    .deal-wrap .deal-content h3 {
      font-size: 36px;
      font-weight: 800;
      margin-bottom: 10px;
      letter-spacing: -0.02em;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 24px;
      font-size: 16px;
      line-height: 1.6;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 40px;
      font-weight: 800;
      color: var(--primary);
      display: flex;
      align-items: baseline;
      gap: 12px;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 500;
      color: var(--muted-light);
      text-decoration: line-through;
    }
    .deal-wrap .deal-content .stock {
      font-size: 15px;
      color: var(--muted);
      margin: 6px 0 22px;
      font-weight: 500;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
      font-weight: 800;
    }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 20px 0 28px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 12px 0;
      border-radius: 18px;
      min-width: 80px;
      text-align: center;
      box-shadow: 0 10px 18px -8px rgba(0,0,0,0.3);
    }
    .timer-box .num {
      font-size: 30px;
      font-weight: 800;
      line-height: 1.2;
      letter-spacing: -0.02em;
    }
    .timer-box .label {
      font-size: 11px;
      opacity: 0.75;
      text-transform: uppercase;
      letter-spacing: 0.8px;
      font-weight: 600;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 12px 4px 24px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 6px; }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 60px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: 28px;
      padding: 32px 32px 28px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
      transform: translateY(-4px);
    }
    .testimonial-card .stars {
      color: #f5a623;
      font-size: 18px;
      letter-spacing: 3px;
      margin-bottom: 14px;
    }
    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.7;
      color: var(--primary);
      margin-bottom: 22px;
      font-style: italic;
      font-weight: 450;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author .avatar {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
      border: 2px solid #fff;
      box-shadow: 0 4px 12px rgba(0,0,0,0.06);
    }
    .testimonial-card .author .name {
      font-weight: 700;
      font-size: 15px;
      letter-spacing: -0.01em;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
      font-weight: 500;
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary) 0%, #2e2e42 100%);
      border-radius: 40px;
      padding: 56px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: 0 30px 50px -20px rgba(0,0,0,0.4);
      border: 1px solid rgba(255,255,255,0.05);
    }
    .newsletter-wrap .text h3 {
      font-size: 32px;
      font-weight: 800;
      letter-spacing: -0.02em;
      margin-bottom: 6px;
    }
    .newsletter-wrap .text p {
      opacity: 0.8;
      font-size: 16px;
      font-weight: 400;
      max-width: 360px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 520px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 220px;
      padding: 18px 26px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255,255,255,0.1);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
      backdrop-filter: blur(4px);
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 18px 38px;
      font-weight: 700;
      box-shadow: 0 12px 24px -8px rgba(249,115,22,0.5);
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
    }
    #newsletterMsg {
      margin-top: 16px;
      font-size: 14px;
      font-weight: 500;
      opacity: 0.9;
      width: 100%;
    }

    /* ========== FOOTER ========== */
    footer {
      margin-top: 30px;
      padding: 60px 0 32px;
      border-top: 1px solid rgba(0,0,0,0.03);
      background: #ffffff;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 48px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 15px;
      max-width: 300px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 18px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-3px);
    }
    .footer-grid .col h5 {
      font-weight: 800;
      font-size: 15px;
      margin-bottom: 20px;
      color: var(--primary);
      letter-spacing: -0.01em;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
      font-weight: 500;
    }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: 1px solid rgba(0,0,0,0.03);
      color: var(--muted-light);
      font-size: 14px;
      font-weight: 500;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 40px; }
      .hero h1 { font-size: 48px; }
    }

    @media (max-width: 992px) {
      .hero h1 { font-size: 38px; }
      .hero { min-height: 420px; margin: 20px 20px 0; padding: 50px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 280px; }
      .deal-wrap .deal-content { padding: 36px 32px; }
      .newsletter-wrap { padding: 40px 36px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 180px; }
      .section-header .title-group h2 { font-size: 30px; }
    }

    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 18px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 16px; }
      .section-header .title-group h2 { font-size: 26px; }
      .deal-wrap .deal-content h3 { font-size: 28px; }
      .deal-wrap .deal-content .price-big { font-size: 32px; }
      .timer-box { min-width: 64px; padding: 10px 0; }
      .timer-box .num { font-size: 24px; }
      .footer-grid { grid-template-columns: 1fr; gap: 32px; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 20px; }
      .brand i { font-size: 24px; }
      .search-wrap { min-width: 140px; padding: 0 6px 0 16px; }
      .search-wrap input { font-size: 13px; padding: 10px 0; }
      .icon-btn { width: 44px; height: 44px; font-size: 18px; }
      .cart-count { width: 20px; height: 20px; font-size: 10px; }
      .testimonial-card { flex: 0 0 300px; padding
