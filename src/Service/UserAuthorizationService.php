<?php

namespace App\Service;

use App\Entity\User;
use Symfony\Bundle\SecurityBundle\Security;
use Exception;
use Symfony\Component\Security\Http\Attribute\IsGranted;

class UserAuthorizationService
{
    private $security;

    public function __construct(Security $security)
    {
        $this->security = $security;
    }

    public function checkUserAuthorization(User $user): void
    {   
        $currentUser = $this->security->getUser();

        if ($currentUser->getId() !== $user->getId()) {
            throw new Exception("Vous n'avez pas l'autorisation de modifier ce compte.");
        }
    }
}