<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder

            ->add('name', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Enter your email',
                ],
                'label' => 'Name:',
            ])

            ->add('date', null, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'label' => 'Date and Time:',
            ])

            ->add('description', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the event description '
                ],
                'label' => 'event description:',
            ])

            ->add('image', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Paste the URL of your image:',
                ],
            ])
            ->add('capacity', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the capacity of the event:',
                ],
                'label' => 'capacity:',
            ])

            ->add('email', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the email contact of the event:',
                ],
                'label' => 'email:',
            ])

            ->add('phone_number', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the phone of the event organizer:',
                ],
                'label' => 'phone_number:',
            ])

            ->add('address', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the address of the event:',
                ],
                'label' => 'address:',
            ])
            ->add('URL', null, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'enter the URL of the event:',
                ]
            ])
            ->add('type',  ChoiceType::class, [
                'choices'  => [
                    'Music' => "music",
                    'Sport' => "sport",
                    'Education' => "education",
                    'Adventure' => "adventure",
                    'Art' => "art",
                ],
                'attr' => [
                    'class' => 'form-control mt-3',
                ],
                "placeholder" => "Choice"

            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
