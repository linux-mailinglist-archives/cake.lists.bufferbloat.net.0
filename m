Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF428622EE
	for <lists+cake@lfdr.de>; Sat, 24 Feb 2024 07:35:38 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6138F3CB43;
	Sat, 24 Feb 2024 01:35:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708756537;
	bh=loShJaqbAuLIKGOXaQSk6hTJhgSTbXvQVZNHvNpzBgo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=aJUSPE9JxHySqp8xpF9b24DrKN6ZXx+Mk4qqho9MEC901UaP5FhfCQyih/2KmYbrK
	 mbo+8d3yfWuIv0NajlqoXAaZls1PsGnKPzb4UK2V/9z/qq9tVFwqYbGs6jXGpEjQr5
	 RYCS7iCmoaPA4h6ruL2K3ykUSasfgbVN4iVwGFbfm8bHwVt+uc3iUhzTiOz63j0aNa
	 8RzKQe+W7t2HuwSCR/2tgjD/pCEdasHbhGcVlYCi+SE9n6ygzWwZKyw2B1E2Kg5Ue+
	 ot6Vhleo52Hl70MAjw2gDNeqlQIXSHtFlXzdHXLHvu54wapQx6gs9UJ8sPTIfm/OIe
	 N4uVtqrvQTVOg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 92E843B2A4
 for <cake@lists.bufferbloat.net>; Sat, 24 Feb 2024 01:35:35 -0500 (EST)
Received: by mail-oi1-x22a.google.com with SMTP id
 5614622812f47-3c0485fc8b8so1049520b6e.3
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 22:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708756534; x=1709361334; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Oz/Cqt3kSejL12p2v9gakkRHfRb6SKb5F+YOZ+dO1co=;
 b=OVNpIl1+iUiOhglsnI5zieaV2gG/7UzUJ3yr+jn5q5XlTlBdCW6nCSjgXc/WzlwYAR
 o9TCGX5rQh74QfSpfDEGLWMaIZl/ZRISg0+RdsAWuXZtqz9GcQeV9jeIpkwyLuHW3487
 edjW2Z7BYRuBthpEri/PFx+ic7Io/Ooe12kXdRu4acpKVevrIMDCHGwnvanjt6whHXK1
 elErt49xaZujsUiT3SBVg0A3ilIBVqc/9OHwv1QD8iTHRMRslExr1Hiazodv5EAa5PqV
 uor+HCBsyuXpmr3aNnPRYd8Q4CMSxRTUp8cj/57v5UsDhzfBdA1eZcTFQTI+OPEIP6K2
 s+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708756534; x=1709361334;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Oz/Cqt3kSejL12p2v9gakkRHfRb6SKb5F+YOZ+dO1co=;
 b=dJM2xRM7WpFlkl4ukf9Nd4wW6n9oa7cw+q61MWEBEsYbAGdc+LhXR4+phQdAsUCY+F
 DtxxMefxrcezK+66KVZdJ9vbG5IEl8LloCVwAfSG0I4ugZyYyn3HXaBRYocWo0N3Fmh3
 9Fa3AOmVklHu0e6spkebabgybsYHP1LoSdbxilXubzCgNcqpepDPESDJP1hZ+EluVxg8
 08TZ7Twki+6h8CblK6N5ne2GyAjM1zuzlbSJOPgXXlnCBekPFtbSUbe3OgiXObG3sfpY
 0hLQJBJxWVuJNBlXvUB/4RXh7a6h4yC137wFRs3vL6CJjuqw+s5pg88cz4KBJW/Rfaj9
 jrJA==
X-Gm-Message-State: AOJu0YxXgOdjph+Z5TUy/uWBpYF71Yk5rfQuHhOJjbB7qSydjY5d7lK0
 sRh2+hNBxUOpFy2bXTT16Jm0VO+6DwrZn3yO4jKolNrM5jdMxZl3mwuZPu7wLL/ndfL+wxjTqnR
 QBWWfjNk/62a6Lv5xkNxmSESuh1aohpTC
X-Google-Smtp-Source: AGHT+IGRCnw2H3bQPVmBuMxbytVtVUIUfpgeDISKlgzwApP1auWcV3/loGfbuyFyJzQgrcEsbAT6VlTLTi5BLPzdOT8=
X-Received: by 2002:a05:6808:124b:b0:3c0:4129:946b with SMTP id
 o11-20020a056808124b00b003c04129946bmr1812664oiv.46.1708756534471; Fri, 23
 Feb 2024 22:35:34 -0800 (PST)
MIME-Version: 1.0
References: <CANypexR=orWau0cyS_vXFu5RggObuaw5b6MAcJ7Y=W45gQYgCw@mail.gmail.com>
In-Reply-To: <CANypexR=orWau0cyS_vXFu5RggObuaw5b6MAcJ7Y=W45gQYgCw@mail.gmail.com>
Date: Fri, 23 Feb 2024 22:35:25 -0800
Message-ID: <CANypexRsKWvwBsq4jPJ5jN7xhZH4ECDofFALOhjvvu_24Tbc6A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] Nanog l4s video
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Content-Type: multipart/mixed; boundary="===============1764901465427009818=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1764901465427009818==
Content-Type: multipart/alternative; boundary="0000000000003eb05306121ae279"

--0000000000003eb05306121ae279
Content-Type: text/plain; charset="UTF-8"

Off topic, but awesome and I think you'll enjoy it

https://youtu.be/c2jiqkpw4VY?si=ju-H9ivyNAFBM_R0

On Fri, Feb 23, 2024, 20:57 dave seddon <dave.seddon.ca@gmail.com> wrote:

> https://youtu.be/E7okBZ8NfQ8?si=Ip4Lxo1g1Xx7oy4Z
>

--0000000000003eb05306121ae279
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Off topic, but awesome and I think you&#39;ll enjoy it=C2=
=A0<div dir=3D"auto"><br></div><div dir=3D"auto"><a href=3D"https://youtu.b=
e/c2jiqkpw4VY?si=3Dju-H9ivyNAFBM_R0">https://youtu.be/c2jiqkpw4VY?si=3Dju-H=
9ivyNAFBM_R0</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Feb 23, 2024, 20:57 dave seddon &lt;<a hr=
ef=3D"mailto:dave.seddon.ca@gmail.com">dave.seddon.ca@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><a href=3D"ht=
tps://youtu.be/E7okBZ8NfQ8?si=3DIp4Lxo1g1Xx7oy4Z" target=3D"_blank" rel=3D"=
noreferrer">https://youtu.be/E7okBZ8NfQ8?si=3DIp4Lxo1g1Xx7oy4Z</a></div>
</blockquote></div>

--0000000000003eb05306121ae279--

--===============1764901465427009818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1764901465427009818==--
