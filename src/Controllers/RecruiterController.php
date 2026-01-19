<?php

namespace App\Controllers;

use App\Interfaces\DashboardInterface;
use App\Services\AuthService;
use App\View;

class RecruiterController implements DashboardInterface
{
    private AuthService $authService;

    public function __construct()
    {
        $this->authService = new AuthService();
    }

    public function dashboard(): void
    {
        $user = $this->authService->getCurrentUser();
        View::render('recruiter/dashboard.twig', ['user' => $user]);
    }
}
