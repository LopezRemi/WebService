<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Customer;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\CustomerRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class CustomerController extends AbstractController
{
    private $customerRepository;

    public function __construct(CustomerRepository $customerRepository)
    {
        $this->customerRepository = $customerRepository;
    }

    #[Route('/customer/{id}', name: 'get_customer', methods:["GET"])]
    public function getCustomer(int $id): JsonResponse
    {
        $customer = $this->customerRepository->findOneBy(["id" => $id]);
            $data = [
                "id" => $customer->getId(),
                "firstName" => $customer->getFirstName(),
                "lastName" => $customer->getLastName(),
                "email" => $customer->getEmail(),
                "phoneNumber" => $customer->getPhoneNumber()
            ];
        return new JsonResponse($data,Response::HTTP_OK);
    }

    #[Route('/customers', name: 'get_all_customer', methods:["GET"])]
    public function getAllCustomers(): JsonResponse
    {
        //$customers = $event->getRepository(Customer::class)->findAll();
        $customers = $this->customerRepository->findAll();
        $data = [];
        foreach($customers as $customer){
            $data[] = [
                "id" => $customer->getId(),
                "firstName" => $customer->getFirstName(),
                "lastName" => $customer->getLastName(),
                "email" => $customer->getEmail(),
                "phoneNumber" => $customer->getPhoneNumber()
            ];
        }
        return new JsonResponse($data,Response::HTTP_OK);
    }
    #[Route('/customer/add', name: 'customer_add', methods:["POST"])]
    public function addCustomers(Request $request): JsonResponse
    {
        $data = json_decode($request->getContent(),true);

        $firstName = $data["firstName"];
        $lastName = $data["lastName"];
        $email = $data["email"];
        $phoneNumber = $data["phoneNumber"];

        if (empty($firstName) || empty($lastName) || empty($email) || empty($phoneNumber) ){
            throw new NotFoundHttpException("Expecting mandatory parameters");
        }
        $this->customerRepository->saveCustomer($firstName,$lastName,$email,$phoneNumber);
        return new JsonResponse(["status" => "Customer Created!"],Response::HTTP_CREATED);
    }

}