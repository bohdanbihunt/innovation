<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\Currency;
use App\Repository\CurrencyRepository;

class CurrencyController extends AbstractController
{
    public function show(CurrencyRepository $repository) : Response
    {
        $jsonContent = file_get_contents('http://api.nbp.pl/api/exchangerates/tables/a/?format=json');
        $jsonArray = json_decode($jsonContent, true);
        $rates = $jsonArray[0]['rates'];
        
        $entityManager = $this->getDoctrine()->getManager();
        
        foreach ($rates as $rate) {
            $entity = $repository->findOneByCode($rate['code']);
            
            if (!$entity) {
                $entity = new Currency();
            }
            
            $entity->setName($rate['currency']);
            $entity->setCurrencyCode($rate['code']);
            $entity->setExchangeRate(floatval($rate['mid']));
            $entityManager->persist($entity);
        }
        
        $entityManager->flush();
        
        dump('OK'); exit;
    }
}
