<div class="mb-8">
    <div class="flex items-center gap-4">
        <a href="/manager/lms/courses" class="w-10 h-10 rounded-full bg-white border border-slate-100 flex items-center justify-center text-slate-400 hover:text-blue-600 transition shadow-sm">
            <i class="fas fa-arrow-left"></i>
        </a>
        <div>
            <h1 class="text-3xl font-black text-slate-800">Editar Curso</h1>
            <p class="text-sm text-slate-500 font-medium">Modifica los detalles generales de <?= htmlspecialchars($course['title']) ?></p>
        </div>
    </div>
</div>

<form action="/manager/lms/courses/<?= $course['id'] ?>/update" method="POST" class="max-w-4xl mx-auto">
    <div class="bg-white rounded-[2.5rem] shadow-xl shadow-slate-200/50 border border-slate-50 overflow-hidden">
        <div class="p-10 space-y-8">
            <!-- Título -->
            <div>
                <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Título del Curso <span class="text-rose-500">*</span></label>
                <input type="text" name="title" value="<?= htmlspecialchars($course['title']) ?>" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-bold text-slate-700 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all" required>
            </div>

            <!-- Descripción -->
            <div>
                <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Descripción</label>
                <textarea name="description" rows="8" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-medium text-slate-600 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all"><?= htmlspecialchars($course['description'] ?? '') ?></textarea>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Categoría -->
                <div>
                    <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Categoría</label>
                    <select name="category_id" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-bold text-slate-700 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all">
                        <?php foreach ($categories as $cat): ?>
                        <option value="<?= $cat['id'] ?>" <?= (int)$course['category_id'] === (int)$cat['id'] ? 'selected' : '' ?>><?= htmlspecialchars($cat['name']) ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <!-- Nivel -->
                <div>
                    <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Nivel</label>
                    <select name="level" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-bold text-slate-700 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all">
                        <option value="beginner" <?= ($course['level'] ?? '') === 'beginner' ? 'selected' : '' ?>>Principiante</option>
                        <option value="intermediate" <?= ($course['level'] ?? '') === 'intermediate' ? 'selected' : '' ?>>Intermedio</option>
                        <option value="advanced" <?= ($course['level'] ?? '') === 'advanced' ? 'selected' : '' ?>>Avanzado</option>
                    </select>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Precio -->
                <div>
                    <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Precio (USD)</label>
                    <div class="relative">
                        <span class="absolute left-6 top-1/2 -translate-y-1/2 text-slate-400 font-bold">$</span>
                        <input type="number" name="price" step="0.01" value="<?= $course['price'] ?? '0.00' ?>" class="w-full pl-10 pr-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-bold text-slate-700 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all">
                    </div>
                </div>
                <!-- Estado -->
                <div>
                    <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-3 px-1">Estado</label>
                    <select name="status" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-base font-bold text-slate-700 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all">
                        <option value="draft" <?= $course['status'] === 'draft' ? 'selected' : '' ?>>Borrador</option>
                        <option value="published" <?= $course['status'] === 'published' ? 'selected' : '' ?>>Publicado</option>
                        <option value="archived" <?= $course['status'] === 'archived' ? 'selected' : '' ?>>Archivado</option>
                    </select>
                </div>
            </div>

            <!-- Otros Toggles -->
            <div class="space-y-4">
                <label class="flex items-center gap-4 p-5 rounded-2xl bg-emerald-50 border border-emerald-100 cursor-pointer group transition-all hover:bg-emerald-100/50">
                    <input type="checkbox" name="is_free" class="w-5 h-5 rounded border-emerald-300 text-emerald-600 focus:ring-emerald-500/20" <?= (float)$course['price'] == 0 ? 'checked' : '' ?>>
                    <span class="text-sm font-bold text-emerald-700">Marcar como curso gratuito (ignora el precio al inscribirse)</span>
                </label>
                
                <label class="flex items-center gap-4 p-5 rounded-2xl bg-violet-50 border border-violet-100 cursor-pointer group transition-all hover:bg-violet-100/50">
                    <input type="checkbox" name="has_survey" class="w-5 h-5 rounded border-violet-300 text-violet-600 focus:ring-violet-500/20">
                    <span class="text-sm font-bold text-violet-700">Habilitar formulario de satisfacción al finalizar el curso</span>
                </label>
            </div>

            <!-- Imagen de Portada -->
            <div>
                <label class="block text-xs font-black text-slate-400 uppercase tracking-widest mb-4 px-1">Imagen de Portada</label>
                <div class="space-y-4">
                    <?php if ($course['image']): ?>
                    <div class="relative w-full h-64 rounded-3xl overflow-hidden border-4 border-white shadow-lg">
                        <img src="<?= htmlspecialchars($course['image']) ?>" class="w-full h-full object-cover">
                    </div>
                    <?php endif; ?>
                    
                    <div class="relative group">
                        <input type="text" name="image" value="<?= htmlspecialchars($course['image'] ?? '') ?>" class="w-full px-6 py-4 rounded-2xl border border-slate-100 bg-slate-50 text-sm font-medium text-slate-600 focus:ring-4 focus:ring-blue-500/10 focus:border-blue-500 outline-none transition-all" placeholder="URL de la imagen">
                        <div class="mt-4 border-2 border-dashed border-slate-200 rounded-[2rem] p-10 text-center hover:border-blue-400 transition-colors cursor-pointer bg-slate-50/50">
                            <i class="fas fa-cloud-upload-alt text-4xl text-slate-300 mb-3 group-hover:text-blue-500 transition-colors"></i>
                            <p class="text-sm font-bold text-slate-500">Haz clic para subir o arrastra una imagen</p>
                            <p class="text-[10px] text-slate-400 uppercase tracking-widest mt-1">JPG, PNG o WebP — máx. 2MB recomendado</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="p-10 bg-slate-50/50 border-t border-slate-100 flex items-center justify-between gap-4">
            <button type="button" onclick="history.back()" class="px-8 py-4 rounded-2xl bg-white border border-slate-100 text-slate-500 font-black uppercase tracking-widest text-xs hover:bg-slate-100 transition-all">
                Cancelar
            </button>
            <button type="submit" class="px-12 py-4 rounded-2xl bg-blue-600 text-white font-black uppercase tracking-widest text-xs shadow-xl shadow-blue-500/30 hover:bg-blue-700 hover:-translate-y-0.5 transition-all">
                Guardar Cambios
            </button>
        </div>
    </div>
</form>
