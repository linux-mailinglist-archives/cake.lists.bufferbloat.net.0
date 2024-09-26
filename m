Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BC476987B1A
	for <lists+cake@lfdr.de>; Fri, 27 Sep 2024 00:22:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EBA513CB45;
	Thu, 26 Sep 2024 18:21:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727389315;
	bh=4Bz+NudWjbZ8iXMmavhzu8nwdtuK79cFEVNhCZROgSw=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=OPehTLB8HzUmYgcFvLfaaf/pzPqKVoOmuj5C5dBVocxmOn26Oq38wzdwjWh3NC232
	 PEma1XY9y7r7daYy0RwbWqcxgky84euH7MYBtnlNwnmclzhjelL8M8HBzUsEy4e8gg
	 //Djfh+TM0d+X1k3PYGNZG54SlF773Ycx21pFZasvC4+PV5gGGcN3FzZwGFVON5GHb
	 58kIx37AMBz1CXWLJEwhIMhxaCawAT6mF0IDBKLzG1mZeGcHh5p4hZBbjT790NxJci
	 tUnGB5l6Yu/y8asXEOUGCx0apku5kXBDWESr5CyPLjxsq9FGUo6BQiAhM22n6CMk6e
	 2e+L36CSxmXnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com
 [IPv6:2607:f8b0:4864:20::c34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8AFA53CB38;
 Thu, 26 Sep 2024 18:21:54 -0400 (EDT)
Received: by mail-oo1-xc34.google.com with SMTP id
 006d021491bc7-5daa93677e1so768128eaf.3; 
 Thu, 26 Sep 2024 15:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727389313; x=1727994113; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cHF2Qam2gVnXaa+Gi8xXnWRSpkuaOQ5Dm55y2O1ClzY=;
 b=nMXbV7CxVJyVdOaVM4Z1MawsnXhjfoxjur0h/HOuJJtnllgU0itsnqJtOL2JSzPA3b
 tS4emnwpaXVpaef5ITyQcTn2s6eAejT2SUEn7eXdpQKfFwficuGV7Pyd/8ILBw5LawPf
 yg7U9GKEk/mwrNz41zhj/KKRtgjtl4RAZ+vSms3J81pVHyxDZRkBqKogC7xTQCtL/LOz
 DFUonV1/GaBJihR0+IB7cPRK4FiqYv49sUWMixYIx2weMahhhw+K7KCodrkPy6FiEs1M
 ANstmCSk5VM2kwxpAsfOJyHxdKWUWs7EfSU9W2l40ipfPAkFy99OeFYamgCqEtykQOY7
 NWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727389313; x=1727994113;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cHF2Qam2gVnXaa+Gi8xXnWRSpkuaOQ5Dm55y2O1ClzY=;
 b=gYldQ8PScuIcVoEirSYGx+vl0SH5Muki9kvH621rak5aoyvfYTW8YU2SQRMZvdYn8j
 0/OuAjx5Jpo5dUNBqKwyPuMOgmq0kpSRZPRxpsei60Ut9x8PQc9BRi/Uz8oSPtzoscbg
 yzhzflGZRKzLIKOaS8HZFeFuvfjg/K7VubjulsVhk9f8alwHgWBc8URfIXKHIHysnIst
 I+ixOFdjllrGumYNfHaNl8DFS6NUQbJF3PyFUJU2mNYdOhohKD3M8+rsghoNzdhLmijf
 TkXp8Gok+jLBLVySZfyxKrTvtDWZg/0d2rhumvXYGGjmKjAYsXJeOdv0Q4Uz0Iey1wbO
 /ZPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUy0vXMb4U/kfUByhpkyrzofh9LVaAN2M++R6x6eNPsB3jeRQfEXhxyWGbYoZlI52zgEjT@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwtUEZUcc/OHYyogPMoQBg8/YuMi9WC3qBXv2GT/5qVEk+8yzhb
 vA8XQ+xPmBkSy7nH/kiz1vZgb4AIdJXGu/mz4V9Oaq4RK2KYbjSLFcn0RMdp4p5rKOatSB8C94Z
 RmpWXQl56kwRjHTLgOTVqcYw9J7MfF1sn
X-Google-Smtp-Source: AGHT+IFY4W9JfyvfvAmCiyraBMo4fwRQzcGFpd0Xg8ERDtiN71ddJRGU28JmRbzl2TOjvwCPu/3UHthJ+y0amDUsgM4=
X-Received: by 2002:a05:6870:970e:b0:255:2e14:3d9d with SMTP id
 586e51a60fabf-28710a06e17mr1493223fac.5.1727389313077; Thu, 26 Sep 2024
 15:21:53 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 26 Sep 2024 15:21:39 -0700
Message-ID: <CAA93jw46jpOcMYTb9vmyw6ywAvMkmQb3jnmbu4G-2k97PyrjmA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] bbr vs all the aqms, cake winning...
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: multipart/mixed; boundary="===============7124372794922995203=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7124372794922995203==
Content-Type: multipart/alternative; boundary="000000000000651a1206230d2ad3"

--000000000000651a1206230d2ad3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lots of flent, too:

https://journals.plos.org/plosone/article/file?id=3D10.1371/journal.pone.03=
04609&type=3Dprintable

--=20
Dave T=C3=A4ht CSO, LibreQos

--000000000000651a1206230d2ad3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Lots of flent, too:<div><br clear=3D"all"><=
div><a href=3D"https://journals.plos.org/plosone/article/file?id=3D10.1371/=
journal.pone.0304609&amp;type=3Dprintable">https://journals.plos.org/ploson=
e/article/file?id=3D10.1371/journal.pone.0304609&amp;type=3Dprintable</a><b=
r></div><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div=
></div></div>

--000000000000651a1206230d2ad3--

--===============7124372794922995203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7124372794922995203==--
