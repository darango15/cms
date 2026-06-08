<div class="space-y-6">
    <div class="sm:flex sm:items-center sm:justify-between">
        <div>
            <h1 class="text-3xl font-bold text-gray-900 tracking-tight">Users</h1>
            <p class="mt-2 text-sm text-gray-600">Gestión de usuarios registrados en la plataforma.</p>
        </div>
        <div class="mt-4 sm:mt-0">
            <a href="/manager/users/create" class="inline-flex items-center px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition-all">
                <i class="fas fa-user-plus mr-2"></i>
                Crear Usuario
            </a>
        </div>
    </div>

    <?php if (isset($_GET['success'])): ?>
    <div class="rounded-md bg-green-50 p-4 border-l-4 border-green-400 mb-6">
        <div class="flex">
            <div class="flex-shrink-0">
                <i class="fas fa-check-circle text-green-400"></i>
            </div>
            <div class="ml-3">
                <p class="text-sm font-medium text-green-800"><?php echo htmlspecialchars($_GET['success']); ?></p>
            </div>
        </div>
    </div>
    <?php endif; ?>

    <?php if (isset($_GET['error'])): ?>
    <div class="rounded-md bg-red-50 p-4 border-l-4 border-red-400 mb-6">
        <div class="flex">
            <div class="flex-shrink-0">
                <i class="fas fa-exclamation-circle text-red-400"></i>
            </div>
            <div class="ml-3">
                <p class="text-sm font-medium text-red-800"><?php echo htmlspecialchars($_GET['error']); ?></p>
            </div>
        </div>
    </div>
    <?php endif; ?>

    <div class="bg-white shadow-sm border border-gray-200 rounded-xl overflow-hidden">
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th scope="col" class="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider">User</th>
                        <th scope="col" class="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider">Role</th>
                        <th scope="col" class="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider">Status</th>
                        <th scope="col" class="px-6 py-4 text-left text-xs font-semibold text-gray-500 uppercase tracking-wider">Registered</th>
                        <th scope="col" class="px-6 py-4 text-right text-xs font-semibold text-gray-500 uppercase tracking-wider">Actions</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <?php foreach ($users as $user): ?>
                    <tr class="hover:bg-gray-50 transition-colors duration-150">
                        <td class="px-6 py-4 whitespace-nowrap">
                            <div class="flex items-center">
                                <div class="h-10 w-10 flex-shrink-0 rounded-full bg-gradient-to-br from-indigo-500 to-purple-600 flex items-center justify-center text-white font-bold text-lg shadow-sm">
                                    <?php echo strtoupper(substr($user['name'] ?? $user['email'], 0, 1)); ?>
                                </div>
                                <div class="ml-4">
                                    <div class="text-sm font-semibold text-gray-900"><?php echo htmlspecialchars($user['name'] ?? 'N/A'); ?></div>
                                    <div class="text-sm text-gray-500"><?php echo htmlspecialchars($user['email']); ?></div>
                                </div>
                            </div>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <?php 
                            $role = $user['role'] ?? 'customer';
                            $roleColors = [
                                'admin' => 'bg-purple-100 text-purple-700 ring-1 ring-purple-200',
                                'editor' => 'bg-blue-100 text-blue-700 ring-1 ring-blue-200',
                                'customer' => 'bg-green-100 text-green-700 ring-1 ring-green-200'
                            ];
                            $roleColor = $roleColors[$role] ?? $roleColors['customer'];
                            ?>
                            <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium <?php echo $roleColor; ?>">
                                <?php echo ucfirst($role); ?>
                            </span>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap">
                            <?php 
                            $status = $user['status'] ?? 'active';
                            $statusColors = [
                                'active' => 'bg-emerald-100 text-emerald-700 ring-1 ring-emerald-200',
                                'inactive' => 'bg-rose-100 text-rose-700 ring-1 ring-rose-200'
                            ];
                            $statusColor = $statusColors[$status] ?? $statusColors['active'];
                            ?>
                            <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium <?php echo $statusColor; ?>">
                                <span class="h-1.5 w-1.5 rounded-full mr-1.5 <?php echo $status === 'active' ? 'bg-emerald-500' : 'bg-rose-500'; ?>"></span>
                                <?php echo ucfirst($status); ?>
                            </span>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                            <div class="flex items-center">
                                <i class="far fa-calendar-alt mr-2 text-gray-400"></i>
                                <?php echo date('M d, Y', strtotime($user['created_at'])); ?>
                            </div>
                        </td>
                        <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium space-x-2">
                            <!-- Toggle Status -->
                            <a href="/manager/users/<?php echo $user['id']; ?>/toggle-status" 
                               class="inline-flex items-center p-2 border border-gray-300 shadow-sm text-xs font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 transition-all"
                               title="<?php echo $status === 'active' ? 'Inactivate' : 'Activate'; ?>">
                                <i class="fas <?php echo $status === 'active' ? 'fa-user-slash text-amber-500' : 'fa-user-check text-emerald-500'; ?>"></i>
                            </a>

                            <!-- Edit -->
                            <a href="/manager/users/<?php echo $user['id']; ?>/edit" 
                               class="inline-flex items-center p-2 border border-blue-300 shadow-sm text-xs font-medium rounded-md text-blue-700 bg-blue-50 hover:bg-blue-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transition-all font-bold"
                               title="Edit User">
                                <i class="fas fa-edit"></i>
                            </a>

                            <!-- Delete -->
                            <form action="/manager/users/<?php echo $user['id']; ?>/delete" method="POST" class="inline-block" onsubmit="return confirm('Are you sure you want to delete this user? This action cannot be undone.');">
                                <button type="submit" 
                                        class="inline-flex items-center p-2 border border-rose-300 shadow-sm text-xs font-medium rounded-md text-rose-700 bg-rose-50 hover:bg-rose-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-rose-500 transition-all"
                                        title="Delete User">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </form>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <?php if ($totalPages > 1): ?>
        <div class="bg-white px-4 py-4 flex items-center justify-between border-t border-gray-200 sm:px-6">
            <div class="flex-1 flex justify-between sm:hidden">
                <a href="?page=<?php echo max(1, $currentPage - 1); ?>" class="relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50"> Previous </a>
                <a href="?page=<?php echo min($totalPages, $currentPage + 1); ?>" class="ml-3 relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50"> Next </a>
            </div>
            <div class="hidden sm:flex-1 sm:flex sm:items-center sm:justify-between">
                <div>
                    <p class="text-sm text-gray-700">
                        Showing <span class="font-medium"><?php echo ($currentPage - 1) * 10 + 1; ?></span> to <span class="font-medium"><?php echo min($currentPage * 10, $totalUsers); ?></span> of <span class="font-medium"><?php echo $totalUsers; ?></span> results
                    </p>
                </div>
                <div>
                    <nav class="relative z-0 inline-flex rounded-md shadow-sm -space-x-px" aria-label="Pagination">
                        <a href="?page=<?php echo max(1, $currentPage - 1); ?>" class="relative inline-flex items-center px-2 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                            <span class="sr-only">Previous</span>
                            <i class="fas fa-chevron-left h-5 w-5 flex items-center justify-center"></i>
                        </a>
                        <?php 
                        $start = max(1, $currentPage - 2);
                        $end = min($totalPages, $currentPage + 2);
                        for ($i = $start; $i <= $end; $i++): 
                        ?>
                            <a href="?page=<?php echo $i; ?>" class="relative inline-flex items-center px-4 py-2 border <?php echo $i === $currentPage ? 'bg-indigo-50 border-indigo-500 text-indigo-600 z-10' : 'bg-white border-gray-300 text-gray-500 hover:bg-gray-50'; ?> text-sm font-medium"> <?php echo $i; ?> </a>
                        <?php endfor; ?>
                        <a href="?page=<?php echo min($totalPages, $currentPage + 1); ?>" class="relative inline-flex items-center px-2 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                            <span class="sr-only">Next</span>
                            <i class="fas fa-chevron-right h-5 w-5 flex items-center justify-center"></i>
                        </a>
                    </nav>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>
</div>
