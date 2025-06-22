Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F725AF9A41
	for <lists+cake@lfdr.de>; Fri,  4 Jul 2025 20:01:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7EE353CB46;
	Fri,  4 Jul 2025 14:01:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751652073;
	bh=/FyOXl8ua5cswQbEDDOsQWoRBvoStm+4ycWXipHJrHA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=FxIGKCOl2iR2QBjCn9DTm8CLgYc9a+l0EU6rnLkkoNS0f1C62fbeWwQGFCXS1A1Kp
	 J6FeMGYEpUGq3R9mAeq6mGRZX9vA91DOftzZhagU3av3aY9VeSUVcQMsTg0TKx31qk
	 NUwNn3MKX9MeeIGuU4dtGhfcqoGWDfcWo7aCRG5W/yzvfHoX6EH83Vr3GS2mODVpUN
	 V9r23aK9wzoGj8KQbNutExwvom2i28ZCZg542ttcJtxqwZPVyYjLoAqetyHNWTGKcm
	 BfBrWnmF2iJlbTFiEyXeRvrXf2WdsHoM9H80UknB4oKY399gLoqgQMNlRMvc82cnAA
	 ul/PsP63wlnrg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 623103B2A4;
 Sun, 22 Jun 2025 14:37:10 -0400 (EDT)
Received: by mail-qk1-x734.google.com with SMTP id
 af79cd13be357-7d0976776dcso418137485a.2; 
 Sun, 22 Jun 2025 11:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750617430; x=1751222230; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=H854+UApTlHsFwM19EwNu4m9f9Av+kCLuhBNlxPZtps=;
 b=N2N6LdkcLW3V3Es83i6HSq3NYn4a0NcduJCRaA/39v/UFG96lEc3LB00cUf371H8Ws
 VsRF9/OKuTfiNJaMR2eBJDLqOtTrXo7OOKC5TYsaPrbjF1dQbqGRKXtXO0PyXKQSk7j2
 wgG569H9BP8d012nLNYLgV+F/n1gBSBv6g1sjxFUzc4ythWFo+ApWS7gt5BRR3sQdsLH
 NcvCl3nSYvfVHMHehrxl/nt+fxrdzWHOjcCwSPJibGoEEF9LVreyQ5MXjrmkyvoYl2L/
 uIWjMtB8hzfYlMPo4J87v2ejfIDFP7TDS1BLXja3qPoOF3TDVeNkdgIEkud9Pk7mQ41A
 nsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750617430; x=1751222230;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=H854+UApTlHsFwM19EwNu4m9f9Av+kCLuhBNlxPZtps=;
 b=Gxb6qLeLnE3K0jjcRdtf8r7XwTDBoubTrCNLxG2h4ImJ9v+5fstKT3EJwtiA/d7sl/
 /dGw7wfliHN6lzrjbEZqmSsDbCULM9Y15x4oG7S+Pi7KGyXvx1MYn2/k5ePq1hcH+FTq
 EGRB9OkzX4O2RLOPIAdnaZx9E8R8idBENAW2lcbl5E5SDNcdZxP5zdmWdsN2e2Ec6AwA
 CnylQpHOIY7qsdaUB8EOQcoEkeiS+F8mHPQq+kutXmuAJT3jb8jcKAgqjspGf1GxKENE
 JJEUfUYByd0ZauKlxS1SVVJBOXhsHxDPChONDLHCz3d3Ua5QVtyvyS1Meb8hC1yet36s
 AUBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8skBczV81fvrJvk2skp+/YItHqvNRNZUZtZt61TsL5AoVQvfu9tz6RVeBWAKtGHTY+KVM@lists.bufferbloat.net,
 AJvYcCVMRliqG4lHgiG+lxZQor8pvWTZiWDaFU+tHnROA/kUNcnIZNyuOIyGbPAiBfcy/urr3hteto8=@lists.bufferbloat.net,
 AJvYcCWTu7Ci6cftOrQGnebuL8+MjMJxhyGgqyoYDOFw6dow1nDEefb1e6Lt+LenqLI9jX1R0+l8DLU2dUFt@lists.bufferbloat.net,
 AJvYcCXaGgbWRpnFj/FmSIvAEbdAvM1HQ3nAoQrcceC2Oat1aqGtxe2f3mjfvhinRwRJhoFH0Ys7hATIpk8=@lists.bufferbloat.net,
 AJvYcCXm3RoE8bRJbDeqzLYaR1Htvtd6LFDr2Ukr7ow7F7DjsT3gP/KQYBJSk42+VmVK654tiFdlqQ==@lists.bufferbloat.net,
 AJvYcCXo+K5Ew3KGx0iF7fnWakATx1pbiLoId6n2avgKXX+Exe9hiE7OvR78KrM6MaK4MwM9VwLWO2o=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzimM7sySSnTpjwl1gWR8KchgUAWmsAe0n/FzPRNUfN2/B5hUd0
 /7Cc4F324TLCdBD6c1E1IcCS8kfApfRFCBchc9gBlNKZaAwmLxe7t7TSynq4moRiGno43qk2EHn
 ZdkHxVhPfQ91PysDLV8d+B3yQzrDR1hI=
X-Gm-Gg: ASbGncsvY/i0009fQj7NpwFcbCe1T1ILsMmdMvB6HvgvdB5Rlgkj30HpjmWUsqeFuso
 nWYb6OZrMpCshpBKmlZ1vtNxD+GG9Yit0+TmNcqOdG8Ejtx3J73eRGDhLIpdDb8xq8jM9STPfzd
 CrKsTY3yYcBn0rX4hrj5KhJCRW+oGkUD81w5OtLw2+iyE=
X-Google-Smtp-Source: AGHT+IGW7FhYETjALfNaIlE5TdYOCsZWOYCOHAJD+wcaCky1x1bIqd45eS/EI+kzKVKaFXIOykKjfzFtPNt+IaAv088=
X-Received: by 2002:a05:620a:24d5:b0:7d3:8dd1:e13c with SMTP id
 af79cd13be357-7d3f9947bc0mr1320419785a.38.1750617429691; Sun, 22 Jun 2025
 11:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOh_VSdHr37nmVtTMqBErA5p4dhzpaCS6gGiPowQcms_-Q@mail.gmail.com>
In-Reply-To: <CAJUtOOh_VSdHr37nmVtTMqBErA5p4dhzpaCS6gGiPowQcms_-Q@mail.gmail.com>
Date: Sun, 22 Jun 2025 20:36:58 +0200
X-Gm-Features: AX0GCFvquTdtxO4wtIWkR6hGVPgtWqGkl44qDTyJl81XwcD8lKLbztQV-X09T4k
Message-ID: <CAKFn1SF4mU_iwvRu0BpYitiAzXnkXF2gneS94pDZyPe9qimpwQ@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailman-Approved-At: Fri, 04 Jul 2025 14:01:12 -0400
Subject: Re: [Cake] [Codel] Please,
 co-sign Dave Taht's nomination for Jonathan B. Postel Service Award
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
From: =?UTF-8?Q?Roger_J=C3=B8rgensen?= via Cake <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?Q?Roger_J=C3=B8rgensen?= <rogerj@gmail.com>
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, l4s-discuss@ietf.org,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============6281995994225694790=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6281995994225694790==
Content-Type: multipart/alternative; boundary="00000000000008d20306382d6257"

--00000000000008d20306382d6257
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

On Thu, Jun 19, 2025 at 9:43=E2=80=AFPM Frantisek Borsik <frantisek.borsik@=
gmail.com>
wrote:

> Hello to all,
>
> It's my great pleasure to send out this email. Dave's nomination is ready
> to be co-signed *HERE
> <https://docs.google.com/document/d/1hRtD9xE6H9cJGQaKIXHi_f_HpoRNK4-4-lS1=
ZwYacXU/edit?tab=3Dt.0>*
> (Google Docs).
> <snip>
>

I was very unsure if I should sign it or not, but then again. I see traces
of his work everywhere and it's hard to grasp the impact he have had on the
internet.
From the very early days when I ran a beta release of codel as a router on
an ISP back when I could do that :-) It gave us improved latency and with
just changing the variables I got other features out of it that was very
usefull back then - and all of this with improved latency and stable
throughput. Today I see traces of his work in most of the products we are
deploying. It is hard to see someone more worthy for such a nomination, and
it is sad he isn't around to see it for himself.



--=20


Roger J=C3=B8rgensen
rogerj@gmail.com

--00000000000008d20306382d6257
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">All,</div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 19,=
 2025 at 9:43=E2=80=AFPM Frantisek Borsik &lt;<a href=3D"mailto:frantisek.b=
orsik@gmail.com">frantisek.borsik@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello to a=
ll,</div><div><br></div><div>It&#39;s my great pleasure to send out this em=
ail. Dave&#39;s nomination is ready to be co-signed <b><a href=3D"https://d=
ocs.google.com/document/d/1hRtD9xE6H9cJGQaKIXHi_f_HpoRNK4-4-lS1ZwYacXU/edit=
?tab=3Dt.0" target=3D"_blank">HERE</a></b> (Google Docs).</div><div>&lt;sni=
p&gt;</div></div></blockquote><div><br></div><div>
<div>I was very unsure if I should sign it or not, but then again. I see
 traces of his work everywhere and it&#39;s hard to grasp the impact he hav=
e
 had on the internet.</div><div>From the very early days when I ran a beta =
release of codel as a router on an ISP back when I could do that :-) It gav=
e us improved latency=20
and with just changing the variables I got other features out of it that wa=
s very usefull back then - and all of this with improved latency and stable=
 throughput. Today I see traces of his work in most of the products we are =
deploying. It is hard to see someone more worthy for such a nomination, and=
 it is sad he isn&#39;t around to see it for himself.</div><div><br></div><=
/div></div><div><br clear=3D"all"></div><br><span class=3D"gmail_signature_=
prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><br><br>Roger J=C3=B8rgensen<br><a href=3D"mailto:rogerj@gmail.com=
" target=3D"_blank">rogerj@gmail.com</a><br></div></div></div>

--00000000000008d20306382d6257--

--===============6281995994225694790==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6281995994225694790==--
