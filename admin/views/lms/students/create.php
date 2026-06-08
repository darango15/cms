<div class="mb-6 flex items-center gap-4">
    <a href="/manager/lms/students" class="w-10 h-10 rounded-full bg-white border border-gray-100 flex items-center justify-center text-gray-400 hover:text-blue-600 transition shadow-sm">
        <i class="fas fa-arrow-left"></i>
    </a>
    <div>
        <h1 class="text-2xl font-bold text-gray-800">Inscribir Estudiante</h1>
        <p class="text-sm text-gray-500">Asigna manualmente un estudiante a un curso</p>
    </div>
</div>

<form action="/manager/lms/students/store" method="POST" class="max-w-2xl">
    <div class="bg-white rounded-xl shadow-sm border border-gray-100 p-6 space-y-6">
        <div>
            <label class="block text-sm font-bold text-gray-700 mb-1">Seleccionar Estudiante</label>
            <select name="student_id" required class="w-full px-4 py-2 rounded-lg border border-gray-200 focus:border-blue-500 outline-none transition select2">
                <option value="">-- Seleccionar --</option>
                <?php foreach ($students as $s): ?>
                <option value="<?= $s['id'] ?>"><?= htmlspecialchars($s['name']) ?> (<?= htmlspecialchars($s['email']) ?>)</option>
                <?php endforeach; ?>
            </select>
        </div>

        <div>
            <label class="block text-sm font-bold text-gray-700 mb-1">Seleccionar Curso</label>
            <select name="course_id" required class="w-full px-4 py-2 rounded-lg border border-gray-200 focus:border-blue-500 outline-none transition">
                <option value="">-- Seleccionar --</option>
                <?php foreach ($courses as $c): ?>
                <option value="<?= $c['id'] ?>"><?= htmlspecialchars($c['title']) ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <div class="bg-blue-50 p-4 rounded-xl border border-blue-100 flex gap-3">
            <i class="fas fa-info-circle text-blue-500 mt-1"></i>
            <p class="text-xs text-blue-700 leading-relaxed">
                Al inscribir manualmente a un estudiante, este tendrá acceso inmediato al curso desde su panel personal. No se generará ningún cobro ni factura por esta acción manual.
            </p>
        </div>

        <div class="pt-4">
            <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white font-black px-8 py-3.5 rounded-xl shadow-lg transition transform hover:-translate-y-0.5">
                Confirmar Inscripción
            </button>
        </div>
    </div>
</form>
