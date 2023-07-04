<?php

namespace App\Service;

class UploadImageService
{
    public function upload($uploadedFile, String $path, $fileName): void
    {
        if ($uploadedFile) {

            $uploadedFile->move(
                $path,
                $fileName
            );
        }
    }
}