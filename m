Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B027BBAC25F
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 10:59:40 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B8FC470E561;
	Tue, 30 Sep 2025 10:59:39 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=MzyigUlo
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759222779;
 b=V3m7E1xhJF5oUibINqRSgejw72g+YdKrOM6+UPOKYHsQ95TqjOToNBJtmt2H+7Z0ZyDrJ
 lSlsZV0cG5hz5oMWU1FXk6WLLJtA8ou9YEll7gwWMWSEHw4lqYaQpY2A45wQS3Z002Ab2V2
 b3zQGsjpTNYtJuqR0W0wNic5C7E2LkI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759222779; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Jjuvtt+4K9p6FOy8Vc4n6gtd4vMlYP8cEh6h7RpTe4c=;
 b=j8XtXYL/nLw+errLycvFnw5us+tZcLtdAo/hI752K7G2onT+ge77SYjl3PQg5h6gQf7J+
 wyf5LZXFQdz9jo5NaRfH03yZueg5tDqUckryL4olQd/P5DbA4foHQo1HX4DefIa41xlAOmR
 M+dMsC7kpn6jk6zdkdGJaIaJAZhxS0M=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
	by mail.toke.dk (Postfix) with ESMTPS id 2C58270E548
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 10:59:36 +0200 (CEST)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-363cb0cd8a1so64333711fa.2
        for <cake@lists.bufferbloat.net>;
 Tue, 30 Sep 2025 01:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759222774; x=1759827574;
 darn=lists.bufferbloat.net;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qXTbqi4dylGIsI7CyS40AXhSdbwzvJLzbv9McGctoU=;
        b=MzyigUlo7MU/iBjnPU6vGRL3601LsvXvpnwGCtbtwAWDPrMirS44ERqR5brLmibUtV
         5nKPXxQbx+3WTZ3IzhkEBWK07C0f2rJgPihvixttDKZKn8qtC56/GjR1MDP5D6vNB3Py
         EJpf4rmuKlkLlS7ZzqerfkLd8Hl+LeV4G+G/nO3VqpIePQNhuxmKw86L6h8B8RrUlr4H
         NekhMAukzx+/tyfMdXC0dpGWCfEHsLgDHMIHp81BIR4fRHpzHTLwT/OvDLRx/B4EkbQc
         pN3elGaOZ/FK/HbG5gPfm+9jetvaTPMQKtWtWuqCWbDOS8EMPh8NoRnnQK2Yoln3Id+D
         Vigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759222774; x=1759827574;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qXTbqi4dylGIsI7CyS40AXhSdbwzvJLzbv9McGctoU=;
        b=EbhcV8rdbcdkXoXw8+kJ3k2EiQ0QDZGfqeY/lmGCYNoPoUY8JQUCptzziWkHOm06Kt
         FDSHMHxie72TqOXvS0coscZK5CXXy5//TmqgHpyMqkfoJ+VDwldZK8uFRiAgS5EOF5pO
         tTdX9AL62ymm9xkaLcmITKSnoyu49rJY8yECIA6agT6Mnhih/o1SU8VIkTUeKyaDALPz
         eejeBqFaillqHTxLPEqmMOjrWUEQVE4Iifp4aoe58KWIeVqYJ1i4SkJ80W6yLdMTnWDn
         7osA1bnjZVrtbq+AaNexggUYPJZTldQB6dctqLdkN3sB3iXbLr3rg4QRsXPwOiM53YDS
         eOLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNpvFZuqxLWLa5KYXVRDx0nVW227DJqStkUKkNEDbijWDccI3vguxd4AdfRjHGuA8C8g9l@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxSU9oyqe1Tk1fxE84dIecjchoOxlqT7dkn3/APv+7gjCWieIUV
	yaJx0C911uuGuP9XlU1Neur4Ka6NxPxB4P7aa++1OvYNVQE5mIEPQbk3
X-Gm-Gg: ASbGncvRVAGXsPz/IIWMHH0ebn97R4RYBi+F3Cq3jWlEjaNnI0PcgYCAXEaBXEgtcgD
	OCF0a2TWE8+cyU5Ts2FvR2iWMJOZI/aHJuuBM84dB9oCkYvudLWxzs6te5REUKWfNRaUNr+BRoe
	76/tSpgrbWK9QCnA0Kqq7DlLEFsEEp66VHYGgKXkA/uHVqWXUG4hm0mov1bofuI4ujr4wpd2SD6
	YuGM7NTOuuIU67jed8NmOex7sdctBoUyyhpo6+DNMJXGp3K+HeeTGnzVba+WDv+rlnUaxAy/zKR
	A4p7fRUBP3VFghGBzudOEki74+vIvsq68Bujv7exNfErEnUGmKJSORRoooPqAwDoDPt4d7L+uQJ
	vTtCs4i5Nkk55TmZjQ7lCH7lF7V0cdHwhD1TC1SS7A0JPScyzsc6jyveSkoGP0hcbZdh5Mkhk4O
	ptGBJiedu/aAFwq5z6iiWGG2M4IYamLG/DoaFpNQ==
X-Google-Smtp-Source: 
 AGHT+IEI47svfh7EpGaGMveVKszURamGUBG0djE5opnuJN6JqYaPrMBNXMInVZBkveI8PPDCZJU2Bg==
X-Received: by 2002:a2e:9a15:0:b0:36e:8b37:b43c with SMTP id
 38308e7fff4ca-36f7e78ad95mr72691631fa.22.1759222773676;
        Tue, 30 Sep 2025 01:59:33 -0700 (PDT)
Received: from smtpclient.apple (37-219-197-32.nat.bb.dnainternet.fi.
 [37.219.197.32])
        by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-36fb4e398fcsm31720141fa.25.2025.09.30.01.59.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Sep 2025 01:59:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de>
Date: Tue, 30 Sep 2025 11:59:32 +0300
Cc: dave seddon <dave.seddon.ca@gmail.com>,
 David Lang <david@lang.hm>,
 m@jaap.pro,
 "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 Frantisek Borsik <frantisek.borsik@gmail.com>
Message-Id: <D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
 <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
 <C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Message-ID-Hash: LOA6FKZ547J2NQQUQLFVW7Z5QS67HK5P
X-Message-ID-Hash: LOA6FKZ547J2NQQUQLFVW7Z5QS67HK5P
X-MailFrom: chromatix99@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/D0B5EA4D-B238-44F5-93BB-2CD4E6D1CBB8@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On 30 Sep, 2025, at 9:09 am, Sebastian Moeller <moeller0@gmx.de> wrote:
> 
> I would really like to see some tc -s qdisc output from this network under load, as that should be informative if any twaeks are necessary at all.

I think the point is that this is a conference/event network that will be set up transiently.  By the time you get a realistic workload to measure the behaviour of, you're in production.

 - Jonathan Morton
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
