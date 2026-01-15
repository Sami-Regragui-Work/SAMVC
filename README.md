```
SAMVC/
├── public/
│   └── index.php                    # Point d'entrée unique
│
├── src/
│   ├── Controllers/
│   │   ├── AuthController.php       # Gestion inscription/connexion
│   │   ├── CandidateController.php  # Dashboard candidat
│   │   ├── RecruiterController.php  # Dashboard recruteur
│   │   └── AdminController.php      # Dashboard admin
│   │
│   ├── Services/
│   │   └── AuthService.php          # Logique métier auth
│   │
│   ├── Models/
│   │   ├── User.php                 # Entité User
│   │   └── Role.php                 # Entité Role
│   │
│   ├── Repositories/
│   │   ├── UserRepository.php       # Persistence User
│   │   └── RoleRepository.php       # Persistence Role
│   │
│   ├── Views/
│   │   ├── auth/
│   │   │   ├── login.php
│   │   │   └── register.php
│   │   ├── candidate/
│   │   │   └── dashboard.php
│   │   ├── recruiter/
│   │   │   └── dashboard.php
│   │   ├── admin/
│   │   │   └── dashboard.php
│   │   └── errors/
│   │       └── 403.php
│   │
│   ├── Router.php                   # Gestion des routes
│   └── Database.php                 # Connexion PDO
│
├── config/
│   └── database.php                 # Configuration BDD
│
├── sql/
│   ├── ddl.sql                   # Script de création des tables
│   └── dml.sql                   # Script de l'insertion
│
└── README.md
```