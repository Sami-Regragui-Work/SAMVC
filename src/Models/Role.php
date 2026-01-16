<?php

namespace App\Models;

use App\enumTypes\RoleName;

class Role
{
    private readonly RoleName $name;
    private ?string $description;

    private array $users = [];

    public function __construct(array $data, $user)
    {
        $this->setName($data['name']);
        $this->description = $data['description'] ?? null;

        $this->users[] = $user;
    }
    public function getName(): RoleName
    {
        return $this->name;
    }
    public function getDescription(): ?string
    {
        return $this->description;
    }
    
    public function setName(string $name): void
    {
        $this->name = RoleName::from($name);
    }
    public function setDescription(?string $description): void
    {
        $this->description = $description;
    }

    public function addUser(User $user): void
    {
        $this->users[] = $user;
    }
}
