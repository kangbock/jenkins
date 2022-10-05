# resource "aws_route53_zone" "lkb_dns" {
#   name = "kb97.xyz"
# }

# resource "aws_route53_record" "lkb_record" {
#   allow_overwrite = true
#   name            = "kb97.xyz"
#   ttl             = 172800
#   type            = "NS"
#   zone_id         = aws_route53_zone.lkb_dns.zone_id

#   records = [
#     "ns1.kb97.xyz",
#     aws_route53_zone.lkb_dns.name_servers[0],
#     aws_route53_zone.lkb_dns.name_servers[1],
#     aws_route53_zone.lkb_dns.name_servers[2],
#   ]
# }

resource "aws_route53_record" "www" {
  zone_id = "Z0781084UAMIACCAK5HJ"
  name    = "www.kb97.xyz"
  type    = "A"
  alias {
    name                   = aws_alb.lkb_ALB_web.dns_name
    zone_id                = aws_alb.lkb_ALB_web.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "name" {
  zone_id = "Z0781084UAMIACCAK5HJ"
  name    = "@.kb97.xyz"
  type    = "A"
  alias {
    name                   = aws_alb.lkb_ALB_web.dns_name
    zone_id                = aws_alb.lkb_ALB_web.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "ns1" {
  zone_id = "Z0781084UAMIACCAK5HJ"
  name    = "ns1.kb97.xyz"
  type    = "A"
  alias {
    name                   = aws_alb.lkb_ALB_web.dns_name
    zone_id                = aws_alb.lkb_ALB_web.zone_id
    evaluate_target_health = true
  }
}