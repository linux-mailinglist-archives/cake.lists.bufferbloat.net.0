Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB5CCF39CC
	for <lists+cake@lfdr.de>; Mon, 05 Jan 2026 13:51:43 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 270A7B57B0B;
	Mon, 05 Jan 2026 13:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767617502;
	bh=rnMUzUEav0mgUQ7kawY8pyZeVho7rFsXZ7DpPl7PxOk=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=VntuBjIU1vHWwnrkR6ZSK2ZffsswInNGvxvyE6rfp3su3yLglaBlJc6zZwxT4lR4r
	 1QW14Fk2naERJKLvsi55gYuDC9yLeb7nDnSyg8JjJp+3QF8naQaISf9gGtOsBB+y8M
	 nrv6AYwmcuZiPRXGi8GwCPg1WNqLxgGddD+COWNF8QYv6+06Y5vlaWC42Hxz+t2Z4t
	 ik+lcOcnSXTqBsuCFI2X3+0MQ7UXkk6KC+FmZxaxr9YzqUkvo3rJ8pA24+OF6mxlam
	 CL6aMAsDJHwGjCA5ZJmP7wHxA7uWr3LSrJVY18H7qRUU8vzsOmRYrHOSLJB66rWbEp
	 E2VjDxzKuGWXw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767617502;
 b=uQ8QDtvNflNWMeK9UyH8MMAs+a/fihkEeah6Mn+qImtsSaCetvBC+7wsUjLjRr9b0b8KS
 DQ2CkUbc/ohIN1aN3MIUaqm+gqQJvknQu44LSROI6U1bbUqAxB7klnA5K7ShiJqhNMFxJF1
 ByskPm1QtqCO4Si0WPUuKUy4SOq14vI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767617502; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rnMUzUEav0mgUQ7kawY8pyZeVho7rFsXZ7DpPl7PxOk=;
 b=HGfkIYFR6sIyVPLEfl4BMeZ6EqDTRnU14tLqwYPirXQ6cpToemzZUAlwlrMTfkZ2QwTmR
 gYUn6ngL31RCOnPprwWxPvSbPqv7Kkjuc7YDIlM2FlXyv6Dl9CIQum0Eamfnlpb8VoO9JTu
 iWV9hifcUJdB8WSYHoaSqLmlfFxZr3Q=
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
	by mail.toke.dk (Postfix) with ESMTPS id 8E28BB57AEE
	for <cake@lists.bufferbloat.net>; Mon, 05 Jan 2026 13:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767617497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2f+IxNsBv6GF8BavhEiE3pDkZUej2rfCK4D7VugLdIA=;
	b=Y2tq0kikaEgI7duU2sV5sHYrwBzUMXjSXpq86f2nwm9xBpsGvPpY7pcnUuMqcWaWTCm+z8
	JxwakC0QKDYF7c5bUCyT0gaU02xJJW7HuGNzTDVDJSSgkj644ks4cHtJEnLKlU11IBr7pw
	ywcWDN5n+L0P/np1yuwI+vchPKiqgTA=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-410-vyMP1IKGPPywrkHut_kioQ-1; Mon, 05 Jan 2026 07:51:35 -0500
X-MC-Unique: vyMP1IKGPPywrkHut_kioQ-1
X-Mimecast-MFC-AGG-ID: vyMP1IKGPPywrkHut_kioQ_1767617494
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-b72de28c849so1200725066b.1
        for <cake@lists.bufferbloat.net>;
 Mon, 05 Jan 2026 04:51:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767617494; x=1768222294;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f+IxNsBv6GF8BavhEiE3pDkZUej2rfCK4D7VugLdIA=;
        b=l2DosrY/LXlG5JN+uN/aqIOFZ+SREU/RTpOxaVorVrwwdZywDloOMUJPfH/zLP3rX1
         9ON6JSmmeBzgzmVXyajyeL0XqDMO2M5eL4xdTkqoaT9mD4nu3MJIB6HwrrBo6537oTW2
         u7lmTnOvdXn7WABeuAut+UeoHhMNvHkZSxd7KuOTtXYBZJMc+Hu3B5ONjjIa6oFrriKq
         PEUm4KWUK5sqxXGVuxClSNmR7SwtbmGT/KXm4454eywGjir3V+xywaESrXAaX8UmMnAY
         KbDsrX4UrETG3+NUIFlxZuj8sdnm2vEeDU0jGcsAd9tb9FMoonST0+77Wvt+Tg+bhQHf
         gp7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVvTm+WqWn99DAMwCPON1ZaDpa9xUpaB6PV5KVXudIAeMCO+SZEhkIv9sUMFDmUCxCC5GeT@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxcLLWtlldJeOts+K1GXVAMedHNAdhKmMRw7ywFMxF/9a86xdhE
	N6MSS3klyd/li7tEGej7DBhy/HszHFsV0HqxjCfEUrukfvdVFaR7d+qpKZQEk5iMR7DSpOJFn91
	Hhp07i1okZmrsna6RXnuABSanV+0RR6SgepZU+EWLKvZtB9X/3TY1A3PMFFh/++I=
X-Gm-Gg: AY/fxX4lXy8IVE0mbF7ZXxY4IXPnYOW1FnsIum3n4MnNDMDGw9XkMeRxkIJu8jISeNF
	7skKceBhO/JKPKvP4Bl0AgnU7WYdCyeLcl8JteuoUkjrVRHukFthWBfqH3MRZmnRnOzAq6HMl4P
	qs3QVKOgJZR9KuYsBt/OhZrnQF+O2KN8e1cuo60UhxXXcuyoTZOlI6O5jtsjdN7391Aog644mds
	vBLxCVZ2dzeLxHzeHN+xYBDEvkwXeynoGNaCwCcb0IP3KUurC3UEnX4mf9nNTqfZMGpENBGHYVm
	DyWs0B8VMD5T0fsjQV6gyG9yxiUTVSTr92GgMZp5qyci++TE/hww1Fm0R4FyMiGg4lmg7iTE2YD
	J/PmjTtqtbgYfEz7DkOy98MHS2tYZIFnYhg==
X-Received: by 2002:a17:907:6d22:b0:b76:5b73:75fb with SMTP id
 a640c23a62f3a-b8036ecdbfcmr4716229566b.9.1767617494320;
        Mon, 05 Jan 2026 04:51:34 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IGGQaDgovpm3y4b84zzxWCz5fqFjPqL08nJtmfqDzDLr+2uiepGtSoWowtpBmQT2d7vIE4WOg==
X-Received: by 2002:a17:907:6d22:b0:b76:5b73:75fb with SMTP id
 a640c23a62f3a-b8036ecdbfcmr4716227266b.9.1767617493818;
        Mon, 05 Jan 2026 04:51:33 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b838d3f12f6sm2330257466b.62.2026.01.05.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 04:51:33 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 44692407E8D; Mon, 05 Jan 2026 13:51:32 +0100 (CET)
Date: Mon, 05 Jan 2026 13:50:25 +0100
Message-Id: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJGzW2kC/3XNwUrEMBAG4FdZcjYymSTd1pMg+ABexUOamdiwb
 OsmtawsfXdjBV1pPf78839zEZlT5CzudheReIo5Dn0J9mYnfOf6V5aRShYIaKEBlMeT9O7AMr+
 38kQxe+kpQGsbwsBWlN1b4hDPi/kseh5lz+dRvJSmi3kc0sfy7OnxYTn4htFswJOSII12UAEpp
 dDdJ6bOjbd+OC7epH6IUv9LOAxBkWtNXYcVgdfEfovAQqChhh2B2bfNitBXhIYtQhfChqry1tT
 sya8I80sgqC3CfBFApFEpp3z1h5jn+RO9coU/ygEAAA==
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
X-Mimecast-MFC-PROC-ID: xGY3DoxKc7P58SJNr43QJyEolPVyG7mYoX9i3v4C5hs_1767617494
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: PK54CLQIBPXLDSFYYGO6Z73UHO6427UF
X-Message-ID-Hash: PK54CLQIBPXLDSFYYGO6Z73UHO6427UF
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v5 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com/>
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
c3RhbmNlLg0KDQpEb2luZyB0aGluZ3MgdGhpcyB3YXkgc2ltcGxpZmllcyB1c2VyIGNvbmZpZ3Vy
YXRpb24gYnkgY2VudHJhbGlzaW5nDQphbGwgY29uZmlndXJhdGlvbiB0aHJvdWdoIHRoZSBjYWtl
X21xIHFkaXNjICh3aGljaCBhbHNvIHNlcnZlcyBhcyBhbg0Kb2J2aW91cyB3YXkgb2Ygb3B0aW5n
IGludG8gdGhlIG11bHRpLXF1ZXVlIGF3YXJlIGJlaGF2aW91cikuIFRoZSBjYWtlX21xDQpxZGlz
YyB0YWtlcyBhbGwgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXJzIGFzIHRoZSBjYWtl
IHFkaXNjLg0KDQpBbiBlYXJsaWVyIHZlcnNpb24gb2YgdGhpcyB3b3JrIHdhcyBwcmVzZW50ZWQg
YXQgdGhpcyB5ZWFyJ3MgTmV0ZGV2Y29uZjoNCmh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTkv
c2Vzc2lvbnMvdGFsay9tcS1jYWtlLXNjYWxpbmctc29mdHdhcmUtcmF0ZS1saW1pdGluZy1hY3Jv
c3MtY3B1LWNvcmVzLmh0bWwNCg0KVGhlIHBhdGNoIHNlcmllcyBpcyBzdHJ1Y3R1cmVkIGFzIGZv
bGxvd3M6DQoNCi0gUGF0Y2ggMSBleHBvcnRzIHRoZSBtcSBxZGlzYyBmdW5jdGlvbnMgZm9yIHJl
dXNlLg0KDQotIFBhdGNoIDIgZmFjdG9ycyBvdXQgdGhlIHNjaF9jYWtlIGNvbmZpZ3VyYXRpb24g
dmFyaWFibGVzIGludG8gYQ0KICBzZXBhcmF0ZSBzdHJ1Y3QgdGhhdCBjYW4gYmUgc2hhcmVkIGJl
dHdlZW4gaW5zdGFuY2VzLg0KDQotIFBhdGNoIDMgYWRkcyB0aGUgYmFzaWMgY2FrZV9tcSBxZGlz
YywgcmV1c2luZyB0aGUgZXhwb3J0ZWQgbXEgY29kZQ0KDQotIFBhdGNoIDQgYWRkcyBjb25maWd1
cmF0aW9uIHNoYXJpbmcgYWNyb3NzIHRoZSBjYWtlIGluc3RhbmNlcyBpbnN0YWxsZWQNCiAgdW5k
ZXIgY2FrZV9tcQ0KDQotIFBhdGNoIDUgYWRkcyB0aGUgc2hhcmVkIHNoYXBlciBzdGF0ZSB0aGF0
IGVuYWJsZXMgdGhlIG11bHRpLWNvcmUgcmF0ZQ0KICBzaGFwaW5nDQoNCi0gUGF0Y2ggNiBhZGRz
IHNlbGZ0ZXN0cyBmb3IgY2FrZV9tcQ0KDQpBIHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQg
YXdhcmUgb2YgdGhlIGNha2VfbXEgcWRpc2Mgd2lsbCBiZQ0Kc3VibWl0dGVkIHNlcGFyYXRlbHku
DQoNCi0tLQ0KQ2hhbmdlcyBpbiB2NToNCi0gRGlzYWxsb3cgdXNpbmcgYXV0b3JhdGUtaW5ncmVz
cyB3aXRoIGNha2VfbXENCi0gTG9jayBlYWNoIGNoaWxkIGluIGNha2VfbXFfY2hhbmdlKCkgaW5z
dGVhZCBvZiB0aGUgcGFyZW50DQotIE1vdmUgbXEgZXhwb3J0cyBpbnRvIGl0cyBvd24gaGVhZGVy
IGZpbGUgYW5kIGV4cG9ydCB0aGVtIHdpdGggRVhQT1JUX1NZTUJPTF9OU19HUEwNCi0gQWRkIHNl
bGZ0ZXN0cw0KLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMjAx
LW1xLWNha2Utc3ViLXFkaXNjLXY0LTAtNTBkZDMyMTFhMWM2QHJlZGhhdC5jb20NCg0KQ2hhbmdl
cyBpbiB2NDoNCi0gQSBidW5jaCBvZiBib3Qgbml0czoNCiAtIEZpeCBudWxsIHBvaW50ZXIgZGVy
ZWYgaW4gY2FrZV9kZXN0cm95KCkNCiAtIFVud2luZCBxZGlzYyByZWdpc3RyYXRpb24gb24gZmFp
bHVyZQ0KIC0gVXNlIHJjdV9kZXJlZmVyZW5jZSgpIGluc3RlYWQgb2YgcnRubF9kZXJlZmVyZW5j
ZSgpIGluIGRhdGEgcGF0aA0KIC0gVXNlIFdSSVRFX09OQ0UoKSBmb3IgcS0+bGFzdF9hY3RpdmUN
CiAtIFN0b3JlIG51bV9hY3RpdmVfcXMgdG8gc3RhdHMgdmFsdWUgYWZ0ZXIgY29tcHV0aW5nIGl0
DQotIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMzAtbXEtY2Fr
ZS1zdWItcWRpc2MtdjMtMC01ZjY2YzU0OGVjZGNAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYz
Og0KLSBFeHBvcnQgdGhlIGZ1bmN0aW9ucyBmcm9tIHNjaF9tcSBhbmQgcmV1c2UgdGhlbSBpbnN0
ZWFkIG9mIGNvcHktcGFzdGluZw0KLSBEcm9wcGVkIEphbWFsJ3MgcmV2aWV3ZWQtYnkgb24gdGhl
IHBhdGNoZXMgdGhhdCBjaGFuZ2VkIGR1ZSB0byB0aGUgYWJvdmUNCi0gRml4ZWQgYSBjcmFzaCBp
ZiBjYWtlX21xX2luaXQgaXMgY2FsbGVkIHdpdGggYSBOVUxMIG9wdCBwYXJhbWV0ZXINCi0gTGlu
ayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MTEyNy1tcS1jYWtlLXN1Yi1x
ZGlzYy12Mi0wLTI0ZDllYWQwNDdiOUByZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjI6DQotIFJl
YmFzZSBvbiB0b3Agb2YgbmV0LW5leHQsIGluY29ycG9yYXRpbmcgRXJpYydzIGNoYW5nZXMNCi0g
TGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MTEyNC1tcS1jYWtlLXN1
Yi1xZGlzYy12MS0wLWEyZmYxZGFiNDg4ZkByZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjEgKHNp
bmNlIFJGQyk6DQotIERyb3AgdGhlIHN5bmNfdGltZSBwYXJhbWV0ZXIgZm9yIG5vdyBhbmQgYWx3
YXlzIHVzZSB0aGUgMjAwIHVzIHZhbHVlLg0KICBXZSBhcmUgcGxhbm5pbmcgdG8gZXhwbG9yZSBh
dXRvLWNvbmZpZ3VyYXRpb24gb2YgdGhlIHN5bmMgdGltZSwgc28NCiAgdGhpcyBpcyB0byBhdm9p
ZCBjb21taXR0aW5nIHRvIGEgVUFQSS4gSWYgbmVlZGVkLCBhIHBhcmFtZXRlciBjYW4gYmUNCiAg
YWRkZWQgYmFjayBsYXRlci4NCi0gS2VlcCB0aGUgdGMgeWFtbCBzcGVjIGluIHN5bmMgd2l0aCB0
aGUgbmV3IHN0YXRzIG1lbWJlcg0KLSBSZWJhc2Ugb24gbmV0LW5leHQNCi0gTGluayB0byBSRkM6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA5MjQtbXEtY2FrZS1zdWItcWRpc2MtdjEt
MC00M2EwNjBkMTExMmFAcmVkaGF0LmNvbQ0KDQotLS0NCkpvbmFzIEvDtnBwZWxlciAoMik6DQog
ICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBzaGFyZSBzaGFwZXIgc3RhdGUgYWNyb3NzIHN1Yi1p
bnN0YW5jZXMgb2YgY2FrZV9tcQ0KICAgICAgc2VsZnRlc3RzL3RjLXRlc3Rpbmc6IGFkZCBzZWxm
dGVzdHMgZm9yIGNha2VfbXEgcWRpc2MNCg0KVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuICg0KToN
CiAgICAgIG5ldC9zY2hlZDogRXhwb3J0IG1xIGZ1bmN0aW9ucyBmb3IgcmV1c2UNCiAgICAgIG5l
dC9zY2hlZDogc2NoX2Nha2U6IEZhY3RvciBvdXQgY29uZmlnIHZhcmlhYmxlcyBpbnRvIHNlcGFy
YXRlIHN0cnVjdA0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogQWRkIGNha2VfbXEgcWRpc2Mg
Zm9yIHVzaW5nIGNha2Ugb24gbXEgZGV2aWNlcw0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTog
U2hhcmUgY29uZmlnIGFjcm9zcyBjYWtlX21xIHN1Yi1xZGlzY3MNCg0KIERvY3VtZW50YXRpb24v
bmV0bGluay9zcGVjcy90Yy55YW1sICAgICAgICAgICAgICAgIHwgICAzICsNCiBpbmNsdWRlL25l
dC9zY2hfcHJpdi5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyNyArDQogaW5jbHVk
ZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KIG5l
dC9zY2hlZC9zY2hfY2FrZS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNTE0ICsr
KysrKysrKysrKysrLS0tLS0NCiBuZXQvc2NoZWQvc2NoX21xLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICA3MSArKy0NCiAuLi4vdGMtdGVzdGluZy90Yy10ZXN0cy9xZGlzY3Mv
Y2FrZV9tcS5qc29uICAgICAgICB8IDU1NyArKysrKysrKysrKysrKysrKysrKysNCiA2IGZpbGVz
IGNoYW5nZWQsIDEwMTUgaW5zZXJ0aW9ucygrKSwgMTU4IGRlbGV0aW9ucygtKQ0KLS0tDQpiYXNl
LWNvbW1pdDogYzMwM2U4Yjg2ZDlkYmQ2ODY4ZjUyMTYyNzI5NzMyOTJmN2YzYjdmMQ0KY2hhbmdl
LWlkOiAyMDI1MDkwMi1tcS1jYWtlLXN1Yi1xZGlzYy1jZGYwYjU5ZDJmZTUNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3Qg
LS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
