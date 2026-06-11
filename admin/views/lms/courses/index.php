<div class="mb-8 flex flex-col md:flex-row md:items-center justify-between gap-4">
    <div>
        <h1 class="text-3xl font-black text-slate-800">Gestión de Cursos</h1>
        <p class="text-slate-500 font-medium"><?= count($courses) ?> cursos en el sistema</p>
    </div>
    <a href="/manager/lms/courses/create" class="inline-flex items-center gap-2 bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-2xl font-bold transition shadow-lg shadow-blue-600/20">
        <i class="fas fa-plus"></i> Nuevo Curso
    </a>
</div>

<!-- Search & Filters (Exact match to screenshot) -->
<div class="bg-white rounded-[2rem] border border-slate-100 shadow-sm p-3 mb-8">
    <div class="flex flex-col md:flex-row gap-3">
        <div class="flex-1 relative">
            <i class="fas fa-search absolute left-5 top-1/2 -translate-y-1/2 text-slate-300"></i>
            <input type="text" placeholder="Buscar por título o categoría..." class="w-full pl-12 pr-6 py-3 rounded-xl bg-slate-50 border-none text-sm font-semibold text-slate-600 focus:ring-4 focus:ring-blue-500/10 outline-none transition-all">
        </div>
        <select class="px-6 py-3 rounded-xl bg-slate-50 border-none text-sm font-bold text-slate-600 focus:ring-4 focus:ring-blue-500/10 outline-none transition-all">
            <option>Todos</option>
            <option>Publicados</option>
            <option>Borradores</option>
        </select>
    </div>
</div>

<!-- Table (Exact match to screenshot) -->
<div class="bg-white rounded-[2rem] border border-slate-100 shadow-sm overflow-hidden">
    <div class="overflow-x-auto">
        <table class="w-full text-left table-fixed">
            <thead>
                <tr class="bg-white border-b border-slate-50">
                    <th class="w-1/3 px-8 py-5 text-[10px] font-black text-slate-400 uppercase tracking-[0.1em]">Curso</th>
                    <th class="w-40 px-6 py-5 text-[10px] font-black text-slate-400 uppercase tracking-[0.1em] text-center">Estado</th>
                    <th class="w-56 px-6 py-5 text-[10px] font-black text-slate-400 uppercase tracking-[0.1em] text-center">Contenido</th>
                    <th class="px-8 py-5 text-[10px] font-black text-slate-400 uppercase tracking-[0.1em] text-right">Acciones</th>
                </tr>
            </thead>
            <tbody class="divide-y divide-slate-50">
                <?php foreach ($courses as $course): ?>
                <tr class="hover:bg-slate-50/30 transition-colors">
                    <td class="px-8 py-5">
                        <div class="flex items-center gap-4">
                            <div class="w-10 h-10 rounded-full bg-blue-900 flex items-center justify-center text-white font-black text-xs shadow-sm flex-shrink-0">
                                <?= strtoupper(substr($course['title'], 0, 1)) ?>
                            </div>
                            <div class="min-w-0">
                                <a href="/manager/lms/courses/<?= $course['id'] ?>/show" class="font-bold text-slate-700 hover:text-blue-600 transition-colors block text-[13px] leading-tight truncate">
                                    <?= htmlspecialchars($course['title']) ?>
                                </a>
                                <p class="text-[10px] text-slate-400 font-bold uppercase tracking-wider mt-0.5 truncate"><?= htmlspecialchars($course['category_name'] ?? 'IMO COURSES') ?></p>
                                <?php if (!empty($course['product_name'])): ?>
                                <span class="inline-flex items-center gap-1 mt-1 px-2 py-0.5 rounded-full text-[9px] font-bold <?= $course['product_status'] === 'active' ? 'bg-blue-50 text-blue-600' : 'bg-rose-50 text-rose-500' ?>">
                                    <i class="fas fa-link" style="font-size:7px"></i>
                                    <?= htmlspecialchars($course['course_code'] ?? '') ?>
                                    &bull; <?= $course['product_status'] === 'active' ? 'activo' : 'inactivo' ?>
                                </span>
                                <?php endif; ?>
                            </div>
                        </div>
                    </td>
                    <td class="px-6 py-5 text-center">
                        <?php 
                        $statusColors = [
                            'published' => 'bg-emerald-50 text-emerald-600',
                            'draft' => 'bg-amber-50 text-amber-600',
                            'archived' => 'bg-slate-100 text-slate-500'
                        ];
                        $statusLabels = [
                            'published' => 'Publicado',
                            'draft' => 'Borrador',
                            'archived' => 'Archivado'
                        ];
                        ?>
                        <span class="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full text-[9px] font-black uppercase tracking-widest <?= $statusColors[$course['status']] ?? 'bg-slate-100' ?>">
                            <span class="w-1 h-1 rounded-full <?= $course['status'] === 'published' ? 'bg-emerald-500' : ($course['status'] === 'draft' ? 'bg-amber-500' : 'bg-slate-400') ?>"></span>
                            <?= $statusLabels[$course['status']] ?? $course['status'] ?>
                        </span>
                    </td>
                    <td class="px-6 py-5">
                        <div class="flex items-center justify-center gap-4">
                            <div class="flex items-center gap-1.5">
                                <i class="fas fa-book-open text-[10px] text-blue-600"></i>
                                <span class="text-[10px] font-bold text-slate-700"><?= $course['lesson_count'] ?? '0' ?> lec.</span>
                            </div>
                            <div class="flex items-center gap-1.5">
                                <i class="fas fa-vial text-[10px] text-amber-500"></i>
                                <span class="text-[10px] font-bold text-slate-700"><?= $course['quiz_count'] ?? '0' ?> quiz</span>
                            </div>
                            <div class="flex items-center gap-1.5">
                                <i class="fas fa-users text-[10px] text-emerald-600"></i>
                                <span class="text-[10px] font-bold text-slate-700"><?= $course['student_count'] ?? '0' ?> est.</span>
                            </div>
                        </div>
                    </td>
                    <td class="px-8 py-5 text-right">
                        <div class="flex items-center justify-end gap-2">
                            <a href="/manager/lms/courses/<?= $course['id'] ?>/edit" class="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-slate-50 text-slate-500 text-[9px] font-black uppercase tracking-widest hover:bg-slate-100 transition-all border border-slate-100">
                                <i class="fas fa-edit text-[10px]"></i> Editar
                            </a>
                            <a href="/manager/lms/students?course_id=<?= $course['id'] ?>" class="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-emerald-50 text-emerald-600 hover:bg-emerald-600 hover:text-white transition-all text-[9px] font-black uppercase tracking-widest border border-emerald-100">
                                <i class="fas fa-user-graduate text-[10px]"></i> Estudiantes
                            </a>
                            <a href="/manager/lms/courses/<?= $course['id'] ?>/lessons/create" class="px-3 py-1.5 rounded-lg bg-blue-50 text-blue-600 hover:bg-blue-600 hover:text-white transition-all text-[9px] font-black uppercase tracking-widest border border-blue-100">
                                + Lección
                            </a>
                            <a href="/manager/lms/courses/<?= $course['id'] ?>/quizzes/create" class="px-3 py-1.5 rounded-lg bg-amber-50 text-amber-600 hover:bg-amber-600 hover:text-white transition-all text-[9px] font-black uppercase tracking-widest border border-amber-100">
                                + Quiz
                            </a>
                        </div>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
