<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use App\Repository\CustomerRepository;

class CustomerController extends AbstractController
{


    private $customerRepository;
    
    public function __construct(CustomerRepository $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }

    #[Route('/customer', name: 'customer')]
    public function index(): Response
    {
        return $this->json([
            'message' => 'Welcome to your new controller!',
            'path' => 'src/Controller/CustomerController.php',
        ]);
    }


    #[Route('/customers', name: 'get_all_customer')]
    public function getAllCustomers(): JsonResponse
    {
        $customers = $this->customerRepository->findAll();
        $data = [];
        foreach ($customers as $customer) {
            $data[] = [
                'id' => $customer->getId(),
                'firstName' => $customer->getfirstName(),
                'lastName' => $customer->getlastName(),
                'email' => $customer->getemail(),
                'phoneNumber' => $customer->getphoneNumber(),
            ];
        }
        return new JsonResponse($data, Response::HTTP_OK);
    }


  
}
