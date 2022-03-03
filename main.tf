module "m" {
  source = "./module"
  foo    = "bar"
}
output "m" { value = module.m }
