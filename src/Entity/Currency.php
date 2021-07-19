<?php

namespace App\Entity;

use App\Repository\CurrencyRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Uid\Uuid;

/**
 * @ORM\Entity(repositoryClass=CurrencyRepository::class)
 */
class Currency
{
    /**
     * @ORM\Id
     * @ORM\Column(type="uuid", unique=true)
     */
    private $id;
    
    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $name;
    
    /**
     * @ORM\Column(type="integer", length=255, nullable=true)
     */
    private $currency_code;
    
    /**
     * @ORM\Column(type="integer", length=50, nullable=true)
     */
    private $exchange_rate;
    
    public function __construct()
    {
        $this->id = Uuid::v4();
    }

    public function getId(): Uuid
    {
        return $this->id;
    }
    
    public function getName(): ?string
    {
        return $this->name;
    }
    
    public function setName(string $name = null): self
    {
        $this->name = $name;
        
        return $this;
    }
    
    public function getCurrencyCode(): ?string
    {
        return $this->currency_code;
    }
    
    public function setCurrencyCode(string $currency_code = null): self
    {
        $this->currency_code = $currency_code;
        
        return $this;
    }
    
    public function getExchangeRate(): ?integer
    {
        return $this->exchange_rate;
    }
    
    public function setExchangeRate(integer $exchange_rate = null): self
    {
        $this->exchange_rate = $exchange_rate;
        
        return $this;
    }
}
