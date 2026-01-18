<?php

namespace App\Controllers;

use App\Services\AuthService;
use App\View;

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
        View::render('admin/dashboard.twig', ['user' => $user]);
    }
}
