<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($title) ? htmlspecialchars($title) . ' - ' : ''; ?>Admin | PAMEL LMS</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: { sans: ['Inter', 'sans-serif'] },
                    colors: {
                        brand: {
                            50:  '#eff6ff',
                            100: '#dbeafe',
                            400: '#60a5fa',
                            500: '#1a56db',
                            600: '#1447c0',
                            700: '#1040b0',
                            900: '#0c2d6b',
                        },
                        navy: {
                            DEFAULT: '#0a1628',
                            light: '#1a3a6b',
                            dark: '#050b14'
                        }
                    }
                }
            }
        }
    </script>
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f8fafc; }
        .sidebar-link { transition: all 0.2s; color: #94a3b8; }
        .sidebar-link:hover { color: #ffffff; background: rgba(255,255,255,0.05); }
        .sidebar-link.active { background: #1a56db; color: #ffffff; box-shadow: 0 4px 12px -2px rgba(26, 86, 219, 0.3); }
        .sidebar-link.active i { color: #ffffff; }
        ::-webkit-scrollbar { width: 4px; }
        ::-webkit-scrollbar-track { background: transparent; }
        ::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 10px; }
    </style>
</head>
<body class="antialiased text-slate-800">
    <div class="flex min-h-screen overflow-hidden">
        
        <!-- Sidebar -->
        <aside class="w-64 bg-navy hidden md:flex md:flex-col flex-shrink-0 z-40 border-r border-white/5">
            <!-- Logo Area -->
            <div class="p-6 pb-2">
                <a href="/manager" class="flex items-center gap-3">
                    <div class="w-8 h-8 bg-brand-500 rounded-lg flex items-center justify-center shadow-lg shadow-brand-500/20">
                        <span class="text-white font-black text-sm">P</span>
                    </div>
                    <div>
                        <h1 class="text-white font-black text-sm leading-none tracking-tight">PAMEL LMS</h1>
                        <p class="text-[9px] text-slate-500 font-bold uppercase tracking-widest mt-1">Maritime Training</p>
                    </div>
                </a>
            </div>

            <!-- Profile Area -->
            <div class="px-6 py-6">
                <div class="flex items-center gap-3">
                    <div class="w-9 h-9 rounded-full bg-brand-600 flex items-center justify-center text-white font-black text-[10px] shadow-sm">
                        <?= mb_strtoupper(mb_substr($_SESSION['username'] ?? 'AD', 0, 2)) ?>
                    </div>
                    <div class="min-w-0">
                        <p class="text-white font-bold text-xs truncate leading-none"><?= htmlspecialchars($_SESSION['username'] ?? 'Danello Arango') ?></p>
                        <div class="flex items-center gap-1.5 mt-1.5">
                            <span class="w-1.5 h-1.5 rounded-full bg-emerald-500"></span>
                            <span class="text-[9px] text-slate-500 font-bold uppercase tracking-wider">Admin</span>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="flex-1 overflow-y-auto px-4 pb-8 space-y-6">
                <!-- Main Nav -->
                <nav class="space-y-1">
                    <a href="/manager" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                        <i class="fas fa-home text-sm w-5 text-center"></i>
                        <span>Dashboard</span>
                    </a>
                    <a href="/manager/lms/courses" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                        <i class="fas fa-book text-sm w-5 text-center"></i>
                        <span>Catálogo LMS</span>
                    </a>
                    <a href="/manager/users/me" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                        <i class="fas fa-user text-sm w-5 text-center"></i>
                        <span>Mi Perfil</span>
                    </a>
                </nav>

                <!-- E-LEARNING Section -->
                <div>
                    <h3 class="text-[9px] font-black text-slate-600 uppercase tracking-[0.2em] px-3 mb-2">E-Learning</h3>
                    <nav class="space-y-1">
                        <a href="/manager/lms/courses" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-graduation-cap text-sm w-5 text-center"></i>
                            <span>Cursos</span>
                        </a>
                        <a href="/manager/lms/students" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-user-graduate text-sm w-5 text-center"></i>
                            <span>Estudiantes</span>
                        </a>
                        <a href="/manager/lms/quizzes" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-vial-circle-check text-sm w-5 text-center"></i>
                            <span>Quizzes</span>
                        </a>
                        <a href="/manager/lms/categories" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-tags text-sm w-5 text-center"></i>
                            <span>Categorías LMS</span>
                        </a>
                    </nav>
                </div>

                <!-- E-COMMERCE Section -->
                <div>
                    <h3 class="text-[9px] font-black text-slate-600 uppercase tracking-[0.2em] px-3 mb-2">Comercio</h3>
                    <nav class="space-y-1">
                        <a href="/manager/products" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-box-archive text-sm w-5 text-center"></i>
                            <span>Productos</span>
                        </a>
                        <a href="/manager/categories" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-folder-tree text-sm w-5 text-center"></i>
                            <span>Categorías Prod.</span>
                        </a>
                        <a href="/manager/orders" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-receipt text-sm w-5 text-center"></i>
                            <span>Pedidos</span>
                        </a>
                    </nav>
                </div>

                <!-- SERVICES Section -->
                <div>
                    <h3 class="text-[9px] font-black text-slate-600 uppercase tracking-[0.2em] px-3 mb-2">Servicios</h3>
                    <nav class="space-y-1">
                        <a href="/manager/admission-requests" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-file-signature text-sm w-5 text-center"></i>
                            <span>Solicitudes</span>
                        </a>
                        <a href="/manager/satisfaction-surveys" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-poll text-sm w-5 text-center"></i>
                            <span>Encuestas</span>
                        </a>
                    </nav>
                </div>

                <!-- SYSTEM Section -->
                <div>
                    <h3 class="text-[9px] font-black text-slate-600 uppercase tracking-[0.2em] px-3 mb-2">Sistema</h3>
                    <nav class="space-y-1">
                        <a href="/manager/users" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-users text-sm w-5 text-center"></i>
                            <span>Usuarios</span>
                        </a>
                        <a href="/manager/email-settings" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-paper-plane text-sm w-5 text-center"></i>
                            <span>Email SMTP</span>
                        </a>
                        <a href="/manager/plugins" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-puzzle-piece text-sm w-5 text-center"></i>
                            <span>Plugins</span>
                        </a>
                        <a href="/" target="_blank" class="sidebar-link flex items-center gap-3 px-3 py-2.5 rounded-lg text-xs font-semibold">
                            <i class="fas fa-globe text-sm w-5 text-center"></i>
                            <span>Ver Sitio Web</span>
                        </a>
                    </nav>
                </div>
            </div>

            <!-- Footer Area -->
            <div class="p-4 border-t border-white/5">
                <a href="/manager/logout" class="flex items-center gap-3 px-3 py-3 rounded-lg text-xs font-bold text-slate-500 hover:text-white hover:bg-white/5 transition-all">
                    <i class="fas fa-sign-out-alt text-sm w-5 text-center"></i>
                    <span>Cerrar Sesión</span>
                </a>
            </div>
        </aside>
        
        <!-- Main Content -->
        <div class="flex-1 flex flex-col h-screen overflow-hidden">
            <!-- Header Header -->
            <header class="bg-white/80 backdrop-blur-md border-b border-slate-100 py-3.5 px-8 sticky top-0 z-30">
                <div class="flex justify-between items-center">
                    <div>
                        <h2 class="text-[10px] font-black text-slate-800 tracking-wider uppercase">
                            <?= htmlspecialchars($title ?? 'Gestión') ?>
                        </h2>
                        <p class="text-[9px] text-slate-400 font-bold uppercase tracking-tight"><?= date('l, d \d\e F \d\e Y') ?></p>
                    </div>
                    <div class="flex items-center gap-4">
                        <div class="px-3 py-1 rounded-full bg-brand-50 text-brand-600 text-[9px] font-black uppercase tracking-widest flex items-center gap-2 border border-brand-100">
                            <span class="w-1.5 h-1.5 rounded-full bg-brand-500"></span>
                            Admin
                        </div>
                    </div>
                </div>
            </header>
            
            <!-- Dynamic Content -->
            <main class="flex-1 overflow-y-auto p-8">
                <?= $content ?>
            </main>
        </div>
    </div>

    <script>
        // Highlighting
        const currentPath = window.location.pathname;
        document.querySelectorAll('.sidebar-link').forEach(link => {
            const href = link.getAttribute('href');
            if (href === currentPath || (currentPath.startsWith(href) && href !== '/manager')) {
                link.classList.add('active');
            }
        });
    </script>
</body>
</html>
