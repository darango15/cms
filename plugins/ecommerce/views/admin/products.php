<div>
    <div class="mb-6 flex justify-between items-center">
        <div>
            <h1 class="text-3xl font-bold text-gray-900">Products / Courses</h1>
            <p class="text-gray-600 mt-1">Manage all maritime training courses</p>
        </div>
        <a href="/manager/products/create" class="bg-gradient-to-r from-cyan-500 to-blue-600 hover:from-cyan-600 hover:to-blue-700 text-white font-bold py-3 px-6 rounded-lg transition transform hover:scale-105 shadow-lg">
            <i class="fas fa-plus mr-2"></i>Add New Course
        </a>
    </div>

    <!-- Search & Filters -->
    <form method="GET" action="/manager/products" class="bg-white rounded-xl shadow-sm border border-gray-100 p-4 mb-4">
        <div class="flex flex-col sm:flex-row gap-3">
            <!-- Search -->
            <div class="flex-1 relative">
                <i class="fas fa-search absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 text-sm"></i>
                <input type="text" name="search"
                       value="<?php echo htmlspecialchars($filters['search'] ?? ''); ?>"
                       placeholder="Buscar por nombre o código..."
                       class="w-full pl-9 pr-4 py-2 border border-gray-300 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-cyan-500">
            </div>
            <!-- Status filter -->
            <select name="status" class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-cyan-500">
                <option value="">Todos los estados</option>
                <option value="active"   <?php echo ($filters['status'] ?? '') === 'active'   ? 'selected' : ''; ?>>Activo</option>
                <option value="inactive" <?php echo ($filters['status'] ?? '') === 'inactive' ? 'selected' : ''; ?>>Inactivo</option>
            </select>
            <!-- Category filter -->
            <select name="category_id" class="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-cyan-500">
                <option value="">Todas las categorías</option>
                <?php foreach ($categories as $cat): ?>
                    <option value="<?php echo $cat['id']; ?>"
                        <?php echo ((string)($filters['category_id'] ?? '')) === (string)$cat['id'] ? 'selected' : ''; ?>>
                        <?php echo htmlspecialchars($cat['name']); ?>
                    </option>
                <?php endforeach; ?>
            </select>
            <!-- Buttons -->
            <button type="submit" class="bg-cyan-500 hover:bg-cyan-600 text-white px-4 py-2 rounded-lg text-sm font-medium transition">
                <i class="fas fa-filter mr-1"></i>Filtrar
            </button>
            <?php if (!empty($filters)): ?>
                <a href="/manager/products" class="bg-gray-100 hover:bg-gray-200 text-gray-600 px-4 py-2 rounded-lg text-sm font-medium transition flex items-center">
                    <i class="fas fa-times mr-1"></i>Limpiar
                </a>
            <?php endif; ?>
        </div>
        <?php if ($total > 0 && !empty($filters)): ?>
            <p class="text-xs text-gray-500 mt-2">
                <i class="fas fa-info-circle mr-1"></i><?php echo $total; ?> resultado(s) encontrado(s)
            </p>
        <?php endif; ?>
    </form>

    <div class="bg-white shadow-lg rounded-2xl overflow-hidden">
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gradient-to-r from-cyan-500 to-blue-600 text-white">
                    <tr>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Image</th>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Course Name</th>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Category</th>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Stock</th>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Status</th>
                        <th class="px-6 py-4 text-left text-xs font-bold uppercase tracking-wider">Actions</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <?php foreach ($products as $product): ?>
                    <tr class="hover:bg-gray-50 transition">
                        <!-- Image -->
                        <td class="px-6 py-4 whitespace-nowrap">
                            <?php if (!empty($product['image'])): ?>
                                <img src="<?php echo htmlspecialchars($product['image']); ?>" 
                                     alt="<?php echo htmlspecialchars($product['name']); ?>"
                                     class="w-20 h-20 object-cover rounded-lg border-2 border-gray-200 shadow-sm"
                                     onerror="this.src='data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 width=%22100%22 height=%22100%22%3E%3Crect fill=%22%230ea5e9%22 width=%22100%22 height=%22100%22/%3E%3Ctext fill=%22%23fff%22 x=%2250%25%22 y=%2250%25%22 text-anchor=%22middle%22 dy=%22.3em%22 font-size=%2212%22%3ENo Image%3C/text%3E%3C/svg%3E'">
                            <?php else: ?>
                                <div class="w-20 h-20 bg-gray-200 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-image text-gray-400 text-2xl"></i>
                                </div>
                            <?php endif; ?>
                        </td>
                        
                        <!-- Course Name -->
                        <td class="px-6 py-4">
                            <div>
                                <div class="text-sm font-bold text-gray-900 mb-1">
                                    <?php echo htmlspecialchars($product['name']); ?>
                                </div>
                                <?php if (!empty($product['course_code'])): ?>
                                    <div class="text-xs text-gray-500 font-mono bg-gray-100 inline-block px-2 py-1 rounded">
                                        <i class="fas fa-barcode mr-1"></i>
                                        <?php echo htmlspecialchars($product['course_code']); ?>
                                    </div>
                                <?php endif; ?>
                            </div>
                        </td>
                        
                        <!-- Category -->
                        <td class="px-6 py-4 whitespace-nowrap">
                            <?php if (!empty($product['category_name'])): ?>
                                <span class="inline-flex items-center px-3 py-1 rounded-full text-xs font-medium bg-purple-100 text-purple-800">
                                    <i class="fas <?php echo $product['category_icon'] ?? 'fa-folder'; ?> mr-1"></i>
                                    <?php echo htmlspecialchars($product['category_name']); ?>
                                </span>
                            <?php else: ?>
                                <span class="text-gray-400 text-xs">-</span>
                            <?php endif; ?>
                        </td>
                        
                        <!-- Stock -->
                        <td class="px-6 py-4 whitespace-nowrap">
                            <div class="flex items-center">
                                <span class="text-sm font-medium text-gray-700">
                                    <?php echo $product['stock']; ?>
                                </span>
                                <?php if ($product['stock'] < 10): ?>
                                    <i class="fas fa-exclamation-triangle text-red-500 ml-2" title="Low stock"></i>
                                <?php endif; ?>
                            </div>
                        </td>
                        
                        <!-- Status -->
                        <td class="px-6 py-4 whitespace-nowrap">
                            <span class="px-3 py-1 inline-flex text-xs leading-5 font-semibold rounded-full <?php echo $product['status'] === 'active' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'; ?>">
                                <i class="fas <?php echo $product['status'] === 'active' ? 'fa-check-circle' : 'fa-times-circle'; ?> mr-1"></i>
                                <?php echo ucfirst($product['status']); ?>
                            </span>
                        </td>
                        
                        <!-- Actions -->
                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                            <div class="flex items-center space-x-3">
                                <a href="/manager/products/<?php echo $product['id']; ?>/edit" 
                                   class="text-cyan-600 hover:text-cyan-900 inline-flex items-center">
                                    <i class="fas fa-edit mr-1"></i>Edit
                                </a>
                                <form action="/manager/products/<?php echo $product['id']; ?>/delete" method="POST" class="inline" onsubmit="return confirm('Are you sure you want to delete this course?')">
                                    <button type="submit" class="text-red-600 hover:text-red-900 inline-flex items-center">
                                        <i class="fas fa-trash mr-1"></i>Delete
                                    </button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        
        <?php if (empty($products)): ?>
            <div class="text-center py-12 bg-gray-50">
                <i class="fas fa-box-open text-6xl text-gray-300 mb-4"></i>
                <p class="text-gray-500 text-lg">No products found.</p>
                <a href="/manager/products/create" class="mt-4 inline-block text-cyan-600 hover:text-cyan-800 font-medium">
                    <i class="fas fa-plus mr-2"></i>Create your first course
                </a>
            </div>
        <?php endif; ?>
    </div>

    <!-- Pagination -->
    <?php
        $queryBase = http_build_query(array_filter([
            'search'      => $filters['search'] ?? '',
            'status'      => $filters['status'] ?? '',
            'category_id' => $filters['category_id'] ?? '',
        ]));
        $queryBase = $queryBase ? '&' . $queryBase : '';
    ?>
    <?php if ($totalPages > 1): ?>
        <div class="mt-6 flex items-center justify-between bg-white px-6 py-4 rounded-lg shadow">
            <!-- Results info -->
            <div class="text-sm text-gray-700">
                Showing 
                <span class="font-medium"><?php echo (($currentPage - 1) * $perPage) + 1; ?></span>
                to 
                <span class="font-medium"><?php echo min($currentPage * $perPage, $total); ?></span>
                of 
                <span class="font-medium"><?php echo $total; ?></span>
                results
            </div>

            <!-- Pagination buttons -->
            <div class="flex items-center space-x-2">
                <!-- Previous button -->
                <?php if ($currentPage > 1): ?>
                    <a href="?page=<?php echo $currentPage - 1; ?><?php echo $queryBase; ?>" 
                       class="px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700 hover:bg-gray-50 transition">
                        <i class="fas fa-chevron-left mr-1"></i> Previous
                    </a>
                <?php else: ?>
                    <span class="px-4 py-2 bg-gray-100 border border-gray-200 rounded-lg text-sm font-medium text-gray-400 cursor-not-allowed">
                        <i class="fas fa-chevron-left mr-1"></i> Previous
                    </span>
                <?php endif; ?>

                <!-- Page numbers -->
                <div class="hidden md:flex space-x-1">
                    <?php
                    $startPage = max(1, $currentPage - 2);
                    $endPage = min($totalPages, $currentPage + 2);
                    
                    // First page
                    if ($startPage > 1): ?>
                        <a href="?page=1<?php echo $queryBase; ?>" class="px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700 hover:bg-gray-50 transition">
                            1
                        </a>
                        <?php if ($startPage > 2): ?>
                            <span class="px-2 py-2 text-gray-500">...</span>
                        <?php endif; ?>
                    <?php endif;
                    
                    // Page numbers
                    for ($i = $startPage; $i <= $endPage; $i++): ?>
                        <?php if ($i == $currentPage): ?>
                            <span class="px-4 py-2 bg-gradient-to-r from-cyan-500 to-blue-600 text-white rounded-lg text-sm font-bold shadow">
                                <?php echo $i; ?>
                            </span>
                        <?php else: ?>
                            <a href="?page=<?php echo $i; ?><?php echo $queryBase; ?>" class="px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700 hover:bg-gray-50 transition">
                                <?php echo $i; ?>
                            </a>
                        <?php endif; ?>
                    <?php endfor;
                    
                    // Last page
                    if ($endPage < $totalPages): ?>
                        <?php if ($endPage < $totalPages - 1): ?>
                            <span class="px-2 py-2 text-gray-500">...</span>
                        <?php endif; ?>
                        <a href="?page=<?php echo $totalPages; ?><?php echo $queryBase; ?>" class="px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700 hover:bg-gray-50 transition">
                            <?php echo $totalPages; ?>
                        </a>
                    <?php endif; ?>
                </div>

                <!-- Mobile page indicator -->
                <div class="md:hidden px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700">
                    Page <?php echo $currentPage; ?> of <?php echo $totalPages; ?>
                </div>

                <!-- Next button -->
                <?php if ($currentPage < $totalPages): ?>
                    <a href="?page=<?php echo $currentPage + 1; ?><?php echo $queryBase; ?>" 
                       class="px-4 py-2 bg-white border border-gray-300 rounded-lg text-sm font-medium text-gray-700 hover:bg-gray-50 transition">
                        Next <i class="fas fa-chevron-right ml-1"></i>
                    </a>
                <?php else: ?>
                    <span class="px-4 py-2 bg-gray-100 border border-gray-200 rounded-lg text-sm font-medium text-gray-400 cursor-not-allowed">
                        Next <i class="fas fa-chevron-right ml-1"></i>
                    </span>
                <?php endif; ?>
            </div>
        </div>
    <?php endif; ?>
</div>
