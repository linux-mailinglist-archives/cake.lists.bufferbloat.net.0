Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0100BA0967E
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 16:55:56 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D00383CB39;
	Fri, 10 Jan 2025 10:55:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736524554;
	bh=/PZc/xqJxCTOdWGv5sq56wjVaXXqEm/0vwjoSNv4M/U=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=JXJo03QkOrle05GTC4QP0RdUK8dr6QvD9+vgrtpTwlv50kRjcibt4I10tZqzgoD2l
	 KN+I96i/+OIfVgJWrstY78pdJ558ux5TCUe/qAGBsRIozykL/6r6egiq5b4lxiAhba
	 sQO0SqlSu3JOfznYrFnPJEfnkKajWtWWBt3QsDLCBIfBVkSPfpAs/yXBWa3jeL6q2y
	 KslqtsGP8HksAon0X6NF2sJYO24B5ol3l3VQPp0bt8WBybt2RL/6qJFjCu41SP3VW+
	 UMkszO2OGpg+iVpnn9SRg/ih5PWlHl6wmgWfwfbN05trPg4YRPvZeERygcrcABDH+o
	 yvjN8uSdaWzCA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B32E63B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 10:55:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736524553;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0Aufuv6tvqgTXjQty6QjFpekc0/qqApFRYxi5TMKIBM=;
 b=G9ycY8UNeEgRKwinQauy/w8Iyzy9Q6nL4RbHD0j/R7F/IS6nlD+ycHAaB8grBdZA0lB7T4
 ywbwSv+kh2r4jlFiDrr0Z1DFVFegqAznIN2+QKY5cX81XHzsSOcKYrkvc1louSzClUwu/G
 +iMY0crhWh4Op/DSWDFpJzxx1EY5ty0=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-427-9tWxBQekOlq0O7X1fletiA-1; Fri, 10 Jan 2025 10:55:52 -0500
X-MC-Unique: 9tWxBQekOlq0O7X1fletiA-1
X-Mimecast-MFC-AGG-ID: 9tWxBQekOlq0O7X1fletiA
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-aaf8396f65fso223808566b.0
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 07:55:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736524551; x=1737129351;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0Aufuv6tvqgTXjQty6QjFpekc0/qqApFRYxi5TMKIBM=;
 b=HnWBO/iEQOgBCdmGoJWL+dWx7phCRt5bya/Cc1tMsyhEvSYVycKGZLAhU3Dt5JDmbs
 QpH/8FlEOseOj4zlzqvqvHHpm7St16Io+JXwis1I6MVmhCrS08zipekEq78yEd8PY+tP
 OAVfjt/myUo88Zfrqh05Lb6NO0zL2RnDoC4ekQabhYUI1IWFm8pZx2vv+yUtvm0kHyh2
 dwmXg0Q/cDeB1iarcHYaq4zTR8iA380gji50pserGsQDzDTxFqNNOMIMuP2DNIPLZRts
 2rF0GXTD4EJhmJwm+09+v0iJLtmoIx0LS/G48J3GntjcIiuz2fNvB3F1JAlTvTW21/jM
 aq3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxr9aEYWaC5C3c8gAABv0lViviJT+topQq0dI0/RAdOR54dySnmBnJ7no/6NezfD7jTSYG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzlv+9TqWRekryf8u9EUZMSGzkMvtaoE/4WopCIlaTy2gpEMbPO
 rQw/V6ZW7DMAdBSclKutZerfNKkgUhpIoSvUdMIDFzwii+pTS/Ro0mz69weJ0vZDTx3mncX5Jw8
 BaPQxdsjNlroY/3GZHhNXzN9XTFWzrxFoetNmt7jk4GcXWRRVpt1xOwwQcTg=
X-Gm-Gg: ASbGncsMjmSCSwsuPJvz1B39G34iz+I9n9lQPNR2yeu4b/Bx/oUH/fJlZCQMpNd6zHf
 5xawqT7RMhxWnG8kVBJY4ojHV/s//eqJwdV4plTE3Uhl66UyVWO3Lb7knhJ97u36UofTJ6ulSmf
 qArpKpLlT0PsvbaToeFC60Z3H0Km6rGcGdfNI2XeqrZ+GVhIw5sND+kwatk08qQ9d813xpzPGun
 vL5gKyj0/b090mu8YfS56qAv9kMnDxGz1eSll8UDUvthRx53ziYBw==
X-Received: by 2002:a17:907:7ea2:b0:aa6:becf:b26a with SMTP id
 a640c23a62f3a-ab2ab66d9a0mr910802766b.9.1736524550857; 
 Fri, 10 Jan 2025 07:55:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5OdaYAzvp03kbItYQpgN/xe5SQSBZSqelB3xOFsA419/d2P50AcFvXRlJ2iXRNzYQchALsg==
X-Received: by 2002:a17:907:7ea2:b0:aa6:becf:b26a with SMTP id
 a640c23a62f3a-ab2ab66d9a0mr910800666b.9.1736524550473; 
 Fri, 10 Jan 2025 07:55:50 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab2c95af187sm180710466b.142.2025.01.10.07.55.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2025 07:55:49 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E7675177E571; Fri, 10 Jan 2025 16:55:48 +0100 (CET)
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>
Date: Fri, 10 Jan 2025 16:55:30 +0100
Message-ID: <20250110155531.300303-1-toke@redhat.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CYxmSheNnIfm_0xjfTZAAteinEfhRIoOXX78jThrnEI_1736524551
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
	Windows and Zoom
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
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: netdev@vger.kernel.org,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net, Eric Dumazet <edumazet@google.com>,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgoKQ2FrZSdzIGRpZmZzZXJ2NCBt
b2RlIGF0dGVtcHRlZCB0byBmb2xsb3cgdGhlIElFVEYgd2VicnRjClFvUyBtYXJraW5nIHN0YW5k
YXJkcywgUkZDODgzNy4KCkl0IHR1cm5zIG91dCBXaW5kb3dzIFFvUyBjYW4gb25seSB1c2UgQ1Mw
LCBDUzEsIENTNSwgYW5kIENTNy4KClpvb20gZGVmYXVsdHMgdG8gdXNpbmcgQ1M1IGZvciB2aWRl
byBhbmQgc2NyZWVuIHNoYXJpbmcgdHJhZmZpYy4KCkJ1bXAgQ1M0LCBDUzUsIGFuZCBOUUIgdG8g
dGhlIHZpZGVvIHRpbiAoMikgaW4gZGlmZnNlcnY0IG1vZGUsIGZvcgptb3JlIGJhbmR3aWR0aCBh
bmQgbG93ZXIgcHJpb3JpdHkuCgpUaGlzIGFsc28gYmV0dGVyIGFsaWducyB3aXRoIGhvdyBXaUZp
IHByZXNlbnRseSB0cmVhdHMgQ1M1IGFuZCBOUUIuCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIFRhaHQg
PGRhdmUudGFodEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiA8dG9rZUByZWRoYXQuY29tPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXgg
NDhkZDhjODg5MDNmLi4yYTkyODhkNGI4NzMgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfY2Fr
ZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0zMjgsOCArMzI4LDggQEAgc3RhdGlj
IGNvbnN0IHU4IGRpZmZzZXJ2NFtdID0gewogCTEsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCiAJMiwg
MCwgMiwgMCwgMiwgMCwgMiwgMCwKIAkyLCAwLCAyLCAwLCAyLCAwLCAyLCAwLAotCTMsIDAsIDIs
IDAsIDIsIDAsIDIsIDAsCi0JMywgMCwgMCwgMCwgMywgMCwgMywgMCwKKwkyLCAwLCAyLCAwLCAy
LCAwLCAyLCAwLAorCTIsIDAsIDAsIDAsIDIsIDAsIDMsIDAsCiAJMywgMCwgMCwgMCwgMCwgMCwg
MCwgMCwKIAkzLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAogfTsKLS0gCjIuNDcuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=
