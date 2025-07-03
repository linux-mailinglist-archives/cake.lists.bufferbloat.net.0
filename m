Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B4DAF75D3
	for <lists+cake@lfdr.de>; Thu,  3 Jul 2025 15:35:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 652B53CB42;
	Thu,  3 Jul 2025 09:35:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751549744;
	bh=D8JnZfOIHUFXK+6PuTDR2Xxwhg0WAJzhXCc/ZAFogMU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=c8HgcKV/CzjZhotIn9MsKeJmBwxXOr6a090Bkf2E/T8C4s2o8ia+EhWWyKyCWBvQQ
	 A3QLbgtfQdJISyruYoGT99tD+MiGM+shIVC6LJCGGyE63VzvkeDP7tERJRcn3VeKFo
	 bmRr41acutm+QAmxBa9XmoEaiHCMmw9gfY45B+9MmN2OT4zgZkAIzzNx3w0Js5Pa+k
	 0eXSa7aeFq4gvvTIMzwDSCr5yzvcC5hTV3lWfsIYtuK1lDx2/ch0F+zZWIFIdM5k0I
	 wz7hWPNgzO7FPosaUUWdXQ8OXDwH1mKYKlwFsoloOJ8sS58VOznYZzEw0NJGsJG3DX
	 r3+0rjfDvpZEw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 56D493B2A4
 for <cake@lists.bufferbloat.net>; Thu,  3 Jul 2025 09:35:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1751549741;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a+w31SBzpx20AQVT5u5Pj5TY/qHbG3BfdlMP+1tjTIk=;
 b=GhGe50BYCvVlcDaVtr8EGY/r7NE/chU6iWxhE12eDO1MQJoeNGR+3FEfnks66ppmFQW6Og
 yIEk44cgk4QSWwAoVrxVtAv8Xe+nQzmm7qwlMGhDTJreEC9x6QfODFoDZwTAY4A7RfW6hf
 uLZ5fbhvdVaiC5LjcolozPPyMV0dsaM=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-226-bZgJlFHrOkePrcC1HKiG2Q-1; Thu, 03 Jul 2025 09:35:40 -0400
X-MC-Unique: bZgJlFHrOkePrcC1HKiG2Q-1
X-Mimecast-MFC-AGG-ID: bZgJlFHrOkePrcC1HKiG2Q_1751549739
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-32b3ba8088fso34764091fa.1
 for <cake@lists.bufferbloat.net>; Thu, 03 Jul 2025 06:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751549739; x=1752154539;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a+w31SBzpx20AQVT5u5Pj5TY/qHbG3BfdlMP+1tjTIk=;
 b=BjqMm1g5opFQdmFkd8rTq5+AJvp82rEO1U3QQWoaiQatCz0yao5bx1n0VCJpYStHKG
 Imq4CmVfzQ+HnX2yv6y+YRFrVC4VidMgyTadWkJDwrqDjetiPdpQ6fAbY1zdOPRJUK0/
 NrWS4tqd755KzlVafSee1EnNpG9/AnmW+3m6nHbwgW1g/m9AE3kP04R9mHoZrPOJOpQY
 3LNCeT+2hFlsnBgEJAK0YXzdOoAremuxRZk5747QNUw2M5GMGZDGpFA7i7S39AB/a/C8
 bu2K4qAnb4SBVSpo6GX3P4QQLlPkD92DQfGRE+BaJmnmuwu68PrsgK955SjRGbzb34Sw
 Ke3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEDvubyDbJTwKGI77xOY2kAdAbbtR5Tf/RFX8A3awGZi5Msh8oUz7CvRDzuXoJmApteg9m@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxiQqODkcXJb/MxFdMtRE+0HXMb382XqX7ds7Mg9TErZHuVs7pB
 mU84ZhPjES8TBY3mmkvPaTsTX7Z3Kzo+xPvESiJ8lz5+Lb/22JRbG9SFItS1IZpjs8zgg9Hnsy6
 Tg55zNYFCB0N52eFNv2a9cZJGnyTgKwF9v5NeJPH/glnEFnTwxNg+IJnfAkktar0=
X-Gm-Gg: ASbGncvdzRL1Hds+6bWjFAYsWRwxE+2l3KD+4L7bIh25zXJbYnhUXv85jjP8oiMEXYP
 BCwGp/HJ0ZtWyQrsixL2YTVkOOKgMBs2xZ1HF4keMSSx5GGG6VcLjLzP4jSXpiWfyNlTkmSDjq2
 IJZ+6SA9ig7wvop84AUXEC8VVOpqEQ7+kMv0GLUjFlHpu6jO1SLCbTLle0VVxZzJe40rOCvN5Wp
 dOPC+m4eb4C3SWZaOuChUjwGXAMAeVQpYbhMHzDllqkB9DiBOy+rJlgm+lgYfaAhmZtx0qYRmhd
 9hHkblgdYaPavDanDg2c7aepKEMijmAGIVp4uIT+zUn69iI=
X-Received: by 2002:a2e:be89:0:b0:32b:7149:9396 with SMTP id
 38308e7fff4ca-32e0fd18fe6mr8228031fa.41.1751549738983; 
 Thu, 03 Jul 2025 06:35:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQaqzYM0ICxZ0BcYvjzIBIgaPPoPD7CoeNzD4IOdnJqDmOWKXFznuKZROMVSn5ZIRHwy1dDw==
X-Received: by 2002:a2e:be89:0:b0:32b:7149:9396 with SMTP id
 38308e7fff4ca-32e0fd18fe6mr8227821fa.41.1751549738530; 
 Thu, 03 Jul 2025 06:35:38 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-32cd2ec6592sm21550691fa.57.2025.07.03.06.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jul 2025 06:35:38 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 3747B1B383C6; Thu, 03 Jul 2025 15:35:36 +0200 (CEST)
To: Fengyuan Gong <gfengyuan@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 edumazet@google.com, "David S . Miller" <davem@davemloft.net>
In-Reply-To: <20250702160741.1204919-1-gfengyuan@google.com>
References: <20250702160741.1204919-1-gfengyuan@google.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 03 Jul 2025 15:35:36 +0200
Message-ID: <87zfdl8kif.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7jci2MvpWovD2Vx2cHqFTn9AlUlpI5IwJFeYuMeyb7A_1751549739
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [PATCH net-next] net: account for encap headers in qdisc
	pkt len
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Fengyuan Gong <gfengyuan@google.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 cake@lists.bufferbloat.net, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RmVuZ3l1YW4gR29uZyA8Z2Zlbmd5dWFuQGdvb2dsZS5jb20+IHdyaXRlczoKCj4gUmVmaW5lIHFk
aXNjX3BrdF9sZW5faW5pdCB0byBpbmNsdWRlIGhlYWRlcnMgdXAgdGhyb3VnaAo+IHRoZSBpbm5l
ciB0cmFuc3BvcnQgaGVhZGVyIHdoZW4gY29tcHV0aW5nIGhlYWRlciBzaXplCj4gZm9yIGVuY2Fw
c3VsYXRpb25zLiBBbHNvIHJlZmluZSBuZXQvc2NoZWQvc2NoX2Nha2UuYwo+IGJvcnJvd2VkIGZy
b20gcWRpc2NfcGt0X2xlbl9pbml0KCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGZW5neXVhbiBHb25n
IDxnZmVuZ3l1YW5AZ29vZ2xlLmNvbT4KCkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK
