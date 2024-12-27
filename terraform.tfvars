virtual_machines = {
    "vm-1" = {
      vm_name      = "example-debian-11-1vm" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "debian11disk-1vm" # Название диска
      template     = "fd8qh3qqmbq35jn5920n" # ID образа ОС для использования
    },
    "vm-2" = {
      vm_name      = "example-debian-11-2vm" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "debian11disk-2vm" # Название диска
      template     = "fd8qh3qqmbq35jn5920n" # ID образа ОС для использования
    }
    "vm-3" = {
      vm_name      = "example-debian-11-3vm" # Имя ВМ
      vm_desc      = "Описание для инженеров. Его видно только здесь"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "debian11disk-3vm" # Название диска
      template     = "fd8qh3qqmbq35jn5920n" # ID образа ОС для использования
    }
}

yc_token     = "y0__wgBEI-u9AIYwd0TIJGe2-wREIqjjaAr_CFTKzPf7fZqeBQgjYA"
yc_cloud_id  = "b1gb86tgrl4guu4asr3m"
yc_folder_id = "b1gml008cs1pvd84rc23"

