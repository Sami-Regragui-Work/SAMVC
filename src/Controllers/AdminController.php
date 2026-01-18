<?php

namespace App\Controllers;

use App\Services\AuthService;

class AdminController
{
    private AuthService $authService;

    public function __construct()
    {
        $this->authService = new AuthService();
    }

    public function dashboard(): void
    {
        $user = $this->authService->getCurrentUser();
        require_once __DIR__ . '/../Views/admin/dashboard.php';
    }
}
