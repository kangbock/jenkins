resource "aws_key_pair" "lkb_key" {
  key_name = "lkb-key"
  #    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+XVP2klvaHZ8MSxHt4FMOxGwkyBTcbvIVRsYpjrg1kkPENtKx/C0GTh+po2hO6SMvxIVnQ5mbZaC28w5ofsYfmjKq+airsJC5WaPay3CJqIkYN+mwiKJVig59Gc7qEI32zSiHp4+Osu/FonUOa7RIKOa4cykLJFIS1VtDD9p/xyrKUf+VMw57/gca6rtQN2LYhuhZZwiDCk4fmyYgqZykNsQE6ldpVijjgrypZGThJlioXtnnC7meguGF7Lm7HjNcIyJgxeiX5k1zDrCa6YZ14tyrT94f2uVc4xGHYiCeHRjcOpgQ3nOUZIHfAIAUU8STNiUoQlnOLmY1hwInALDZc0sRyXUJqiL82ozyIYM+NRqjdP6baTELvdLJc4nNorRLYM/vHBtHjZoaKDPo1Aln71/gvonyup3lwUCWUC17wEiP2XezemBziwT+een1ebj+UxKq1dRsVp50aSaA0qbEFLWyKj2afYFQLVEwqOTAVhjuOK1FtUE8HhA3MuVHyJs= user@DESKTOP-7EQF3M8"
  public_key = file("../../../Users/user/.ssh/lkb1.pub")
}
