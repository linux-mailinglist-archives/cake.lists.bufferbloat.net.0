Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C40C8D8CB
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:09 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 6F1689D3EBB;
	Thu, 27 Nov 2025 10:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764235868;
	bh=ylSdbGg0EBQXpErvLKNdv9VF72/kE8ZlsegsshFAZVg=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=c+7YLPp84+MMoNVsOSAT0FybQZFc4dbDUic96Licv2bLpjO+wbX0FxxsyVzIBiTQ3
	 hTwV7wQCz0urd855jENqsKPgfi3WR1/yg11F8fEu6hGOLV5OOm7iAxQCwqdtPHU6+S
	 wYuVTttIwVkEFzI/kvSBz2uifGJTF13VDZCx3Bkq1NpIw21TVPD0phhog1DDu3i9I+
	 b40fmBKI7LN2MwkZ5SUrXfQXOLuGjqLEK/OlGS5uTeo2yqs0DE3UeDEgWqA15Q90NC
	 +0wV5SxVNgdmE3997u7IcjjiEFp2H4R1plUE3S4YTtN+UzoxHjjFJZtabsHIKTd0PH
	 8m9hvfEUaztTQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235868;
 b=nC3D1ETVcy0FWMuD2/WP/FzAhhHqCRnJm+q4fX9tNnYENCFFLyBOPLVpj4xI2XY2nGMlY
 UC5ErCP6X2ALoq+ENL3QEpdpNFGqFpyp7rWhpwIHDLHfSTs9tgkwM7HRxVftbdMA0hueL2q
 xojnLJrRzb3DIc/4fhM2pDlqDMwYkwU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235868; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ylSdbGg0EBQXpErvLKNdv9VF72/kE8ZlsegsshFAZVg=;
 b=xvbha3AB1D8T2vofg5wTJHJuCgwqvxGeSEefUYfK708zu8VEXSn+vlOwpJTi70MvZGSRu
 +veoFdRYDaYASqK/9HKzfCOH+SB84ngYgsqma/Y1slvIsq9pnzWgvrjtUb6LJsGSZ8EtPSA
 95x1JOS2TqG8LtneJ9saG8fBTZYNeEk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com;
 arc=none;
 dmarc=pass header.from=redhat.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=redhat.com
 policy.dmarc=quarantine
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.toke.dk (Postfix) with ESMTPS id DEA749D3E9A
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 10:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764235863;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=E60FusnjaWKyDTcqd2Ucw8i35mzOSjUwjHju705sQz8=;
	b=GmA5OWiJwYbfCQahpiVoLWGC3faPUf0itDsiJUHGNXwYQc6U13pCHb9M9DRxQy1bUxqzjg
	VdkcPGTmJ5ZMs/NigRsd3geFR3CI6Mogu7zdduUWZzaH2ZXHBAUWak5cgsmQibX0awj7iB
	EbE4Dza1VlkT81OSkCDbcgbROIKwv5o=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-126-qrZkReJKNxuWrSugevTxXg-1; Thu, 27 Nov 2025 04:31:01 -0500
X-MC-Unique: qrZkReJKNxuWrSugevTxXg-1
X-Mimecast-MFC-AGG-ID: qrZkReJKNxuWrSugevTxXg_1764235860
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b70b2a89c22so182058866b.0
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 01:31:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764235860; x=1764840660;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E60FusnjaWKyDTcqd2Ucw8i35mzOSjUwjHju705sQz8=;
        b=DOrQn0XjJzu8EbdLwNsNPfkkDwm4g4ggcPlwil3hEqPedgL6PVLQM0po/sZ/uP05kw
         xfgGsMFgQXAaR77GKB4qRzlIWRloi7Kfz/N6I+gj39GeuDT9TYkPzczvEwxLtI92AgE0
         GL8wLAik6snvf5p2eRP9V9ebtxgIu7/OjIGV0OMfZ7TqJLpw8Z/KE0+7vC0UYH/BJ565
         X8D5Oxa8tPCLRzR/1fY3OydC4Pnn4Cois+kMZgNEdkpCpqEBS71wjL1m4Hq6AEBGAZaO
         qFuX/0a/XN+1hBpH35bMzolJrgzsLAKwJrSbZRuZc2bD/dDdOlwaIZO+HHADH/nOhMHl
         +Ang==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkHI4Ozi/8rjFQttrborpV1LXEjkn389+LXOwufZvpLCcMApsTMwibMs6kPs9l1KdiExDl@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzzQ14NnZcGECR3wP53aFtUB2tMl9oCknVjTkYsxsSga82s0oMo
	rq1A/fXxnQuxuDn15PAa2/hlo5CfIBhy9DaJejA2Wf4pZoIQqkM7gmrAVGIxpVrx5R1TbwxsLhI
	/M5graSXkUXCsOU+JFtIut5S3mkewDPrcW0GdGKsdnSDM3OXSAIfdNXDTAdIUmk4=
X-Gm-Gg: ASbGncuEYA7oTatLMDgRUNMpf/vZmL6UQ4VCOYPdZSPuvPotGdKSQgEAscCPcHZSlqc
	HuF8vZQaCV6hhJTb4VKBLZ6vq4Dqhbh7rt4PnUxt1sxjkirekuaUZpozdyb3TGOdi+tmO8OY6L7
	P1BpyV1hr7NQAtX9qfa9otV2UPrL6t8s2nrtW875uiS/50cK49ARx/t8t6VlBNickXFdUnq6fyf
	QGDH3Bx9XYJojbsH9LLCNJePP7TCqKZiKRwMJMWh5L0lQnNwOpSnANxT28i2iIJ9Vge0/TL4pvr
	xJcf5btuxZZ6R10XBCYiCIuhXZEylAx8e4VBQ2DeimQICv8HLtyzuMuOUcKM0v7R+mf58WjCTy7
	2mVb3yvqAAEe8PFvtX+q+jrFhaypAdZdm1w==
X-Received: by 2002:a17:907:3da4:b0:b70:aebe:2ef7 with SMTP id
 a640c23a62f3a-b765728545fmr3170284766b.14.1764235860321;
        Thu, 27 Nov 2025 01:31:00 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IE3sUvqhruznd5pnch2PwROt4cOlY0ITalJQcsHWtNSDozz8sbyEsacuL0sZIlWxjjx48+meQ==
X-Received: by 2002:a17:907:3da4:b0:b70:aebe:2ef7 with SMTP id
 a640c23a62f3a-b765728545fmr3170280466b.14.1764235859822;
        Thu, 27 Nov 2025 01:30:59 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f59aecbdsm105044266b.38.2025.11.27.01.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 01:30:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4076A3956FF; Thu, 27 Nov 2025 10:30:57 +0100 (CET)
Date: Thu, 27 Nov 2025 10:30:50 +0100
Message-Id: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEoaKGkC/3XNQQrCMBAF0KuUrB1JxlZaV4LgAdyKizSZ2CBNb
 RJLpfTuhgqCoMvPn/9mYoG8pcB22cQ8DTbYzqWAq4ypRrorgdUpM+RY8IojtD0oeSMIjxp6bYM
 CpQ2vi0qjoYKl3d2TseNinpmjCI7GyC6paWyInX8uz07Hw3LwhjH/AQ8COOQbybdcCyFQ7j3pR
 sa16trFG8SHSPVfQqIxQss6L0vzRczz/AL4H//WAQEAAA==
X-Change-ID: 20250902-mq-cake-sub-qdisc-cdf0b59d2fe5
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: b4 0.14.3
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZNMymHGzY9W-HvncNMHhOLVyyEIqRhJk53wIIsf2tC8_1764235860
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: UMXXVIWER7IVBSBQYPPUASGW2RFYOM3C
X-Message-ID-Hash: UMXXVIWER7IVBSBQYPPUASGW2RFYOM3C
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Transfer-Encoding: base64

VGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNjaF9j
YWtlIHNjaGVkdWxlciwNCmNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMgaXQgcG9z
c2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQpvZiBzY2hfY2FrZSBhY3Jvc3MgbXVsdGlw
bGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5mb3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0KcmF0ZSBvbiB0
aGUgaW50ZXJmYWNlLg0KDQpUaGUgYXBwcm9hY2ggdGFrZW4gaW4gdGhpcyBwYXRjaCBzZXJpZXMg
aXMgdG8gaW1wbGVtZW50IGEgc2VwYXJhdGUgcWRpc2MNCmNhbGxlZCAnY2FrZV9tcScsIHdoaWNo
IGlzIGJhc2VkIG9uIHRoZSBleGlzdGluZyAnbXEnIHFkaXNjLCBidXQgZGlmZmVycw0KaW4gYSBj
b3VwbGUgb2YgYXNwZWN0czoNCg0KLSBJdCB3aWxsIGFsd2F5cyBpbnN0YWxsIGEgY2FrZSBpbnN0
YW5jZSBvbiBlYWNoIGhhcmR3YXJlIHF1ZXVlIChpbnN0ZWFkDQogIG9mIHVzaW5nIHRoZSBkZWZh
dWx0IHFkaXNjIGZvciBlYWNoIHF1ZXVlIGxpa2UgJ21xJyBkb2VzKS4NCg0KLSBUaGUgY2FrZSBp
bnN0YW5jZXMgb24gdGhlIHF1ZXVlcyB3aWxsIHNoYXJlIHRoZWlyIGNvbmZpZ3VyYXRpb24sIHdo
aWNoDQogIGNhbiBvbmx5IGJlIG1vZGlmaWVkIHRocm91Z2ggdGhlIHBhcmVudCBjYWtlX21xIGlu
c3RhbmNlLg0KDQpEb2luZyB0aGluZ3MgdGhpcyB3YXkgZG9lcyBpbmN1ciBhIGJpdCBvZiBjb2Rl
IGR1cGxpY2F0aW9uIChyZXVzaW5nIHRoZQ0KJ21xJyBxZGlzYyBjb2RlKSwgYnV0IGl0IHNpbXBs
aWZpZXMgdXNlciBjb25maWd1cmF0aW9uIGJ5IGNlbnRyYWxpc2luZw0KYWxsIGNvbmZpZ3VyYXRp
b24gdGhyb3VnaCB0aGUgY2FrZV9tcSBxZGlzYyAod2hpY2ggYWxzbyBzZXJ2ZXMgYXMgYW4NCm9i
dmlvdXMgd2F5IG9mIG9wdGluZyBpbnRvIHRoZSBtdWx0aS1xdWV1ZSBhd2FyZSBiZWhhdmlvdXIp
LiBUaGUgY2FrZV9tcQ0KcWRpc2MgdGFrZXMgYWxsIHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gcGFy
YW1ldGVycyBhcyB0aGUgY2FrZSBxZGlzYy4NCg0KQW4gZWFybGllciB2ZXJzaW9uIG9mIHRoaXMg
d29yayB3YXMgcHJlc2VudGVkIGF0IHRoaXMgeWVhcidzIE5ldGRldmNvbmY6DQpodHRwczovL25l
dGRldmNvbmYuaW5mby8weDE5L3Nlc3Npb25zL3RhbGsvbXEtY2FrZS1zY2FsaW5nLXNvZnR3YXJl
LXJhdGUtbGltaXRpbmctYWNyb3NzLWNwdS1jb3Jlcy5odG1sDQoNClRoZSBwYXRjaCBzZXJpZXMg
aXMgc3RydWN0dXJlZCBhcyBmb2xsb3dzOg0KDQotIFBhdGNoIDEgZmFjdG9ycyBvdXQgdGhlIHNj
aF9jYWtlIGNvbmZpZ3VyYXRpb24gdmFyaWFibGVzIGludG8gYQ0KICBzZXBhcmF0ZSBzdHJ1Y3Qg
dGhhdCBjYW4gYmUgc2hhcmVkIGJldHdlZW4gaW5zdGFuY2VzLg0KDQotIFBhdGNoIDIgYWRkcyB0
aGUgYmFzaWMgY2FrZV9tcSBxZGlzYywgYmFzZWQgb24gdGhlIG1xIGNvZGUNCg0KLSBQYXRjaCAz
IGFkZHMgY29uZmlndXJhdGlvbiBzaGFyaW5nIGFjcm9zcyB0aGUgY2FrZSBpbnN0YW5jZXMgaW5z
dGFsbGVkDQogIHVuZGVyIGNha2VfbXENCg0KLSBQYXRjaCA0IGFkZHMgdGhlIHNoYXJlZCBzaGFw
ZXIgc3RhdGUgdGhhdCBlbmFibGVzIHRoZSBtdWx0aS1jb3JlIHJhdGUNCiAgc2hhcGluZw0KDQpB
IHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQgYXdhcmUgb2YgdGhlIGNha2VfbXEgcWRpc2Mg
aXMgaW5jbHVkZWQgYXMNCmEgc2VwYXJhdGUgcGF0Y2ggYXMgcGFydCBvZiB0aGlzIHNlcmllcy4N
Cg0KLS0tDQpDaGFuZ2VzIHNpbmNlIFJGQzoNCg0KLSBEcm9wIHRoZSBzeW5jX3RpbWUgcGFyYW1l
dGVyIGZvciBub3cgYW5kIGFsd2F5cyB1c2UgdGhlIDIwMCB1cyB2YWx1ZS4NCiAgV2UgYXJlIHBs
YW5uaW5nIHRvIGV4cGxvcmUgYXV0by1jb25maWd1cmF0aW9uIG9mIHRoZSBzeW5jIHRpbWUsIHNv
DQogIHRoaXMgaXMgdG8gYXZvaWQgY29tbWl0dGluZyB0byBhIFVBUEkuIElmIG5lZWRlZCwgYSBw
YXJhbWV0ZXIgY2FuIGJlDQogIGFkZGVkIGJhY2sgbGF0ZXIuDQotIEtlZXAgdGhlIHRjIHlhbWwg
c3BlYyBpbiBzeW5jIHdpdGggdGhlIG5ldyBzdGF0cyBtZW1iZXINCi0gUmViYXNlIG9uIG5ldC1u
ZXh0DQotIExpbmsgdG8gUkZDOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwOTI0LW1x
LWNha2Utc3ViLXFkaXNjLXYxLTAtNDNhMDYwZDExMTJhQHJlZGhhdC5jb20NCg0KLS0tDQpDaGFu
Z2VzIGluIHYyOg0KLSBSZWJhc2Ugb24gdG9wIG9mIG5ldC1uZXh0LCBpbmNvcnBvcmF0aW5nIEVy
aWMncyBjaGFuZ2VzDQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NTExMjQtbXEtY2FrZS1zdWItcWRpc2MtdjEtMC1hMmZmMWRhYjQ4OGZAcmVkaGF0LmNvbQ0KDQot
LS0NCkpvbmFzIEvDtnBwZWxlciAoMSk6DQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBzaGFy
ZSBzaGFwZXIgc3RhdGUgYWNyb3NzIHN1Yi1pbnN0YW5jZXMgb2YgY2FrZV9tcQ0KDQpUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gKDMpOg0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogRmFjdG9y
IG91dCBjb25maWcgdmFyaWFibGVzIGludG8gc2VwYXJhdGUgc3RydWN0DQogICAgICBuZXQvc2No
ZWQ6IHNjaF9jYWtlOiBBZGQgY2FrZV9tcSBxZGlzYyBmb3IgdXNpbmcgY2FrZSBvbiBtcSBkZXZp
Y2VzDQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBTaGFyZSBjb25maWcgYWNyb3NzIGNha2Vf
bXEgc3ViLXFkaXNjcw0KDQogRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwgfCAg
IDMgKw0KIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCAgICAgIHwgICAxICsNCiBuZXQv
c2NoZWQvc2NoX2Nha2UuYyAgICAgICAgICAgICAgICB8IDYyMyArKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0NCiAzIGZpbGVzIGNoYW5nZWQsIDUwMiBpbnNlcnRpb25zKCspLCAx
MjUgZGVsZXRpb25zKC0pDQotLS0NCmJhc2UtY29tbWl0OiBmOTM1MDVmMzU3NDU2MzdiNmQ5NGVm
ZThlZmZhOTdlZjI2ODE5Nzg0DQpjaGFuZ2UtaWQ6IDIwMjUwOTAyLW1xLWNha2Utc3ViLXFkaXNj
LWNkZjBiNTlkMmZlNQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cg==
