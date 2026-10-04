
resource "aws_ecr_repository" "ecr_site" {
  name                 = "site_prod"
  image_tag_mutability = "MUTABLE"
  force_delete         = true  # Allows terraform destroy to remove non-empty repo


  #corrections to error finded by Checkov:
  image_scanning_configuration {
    scan_on_push = true
  }

  
}



#ECR (Elastic Container Registry): serve pra armazenar imagens na AWS.
