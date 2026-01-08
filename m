Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D67ED04988
	for <lists+cake@lfdr.de>; Thu, 08 Jan 2026 17:58:03 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B09A9B855D2;
	Thu, 08 Jan 2026 17:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767891482;
	bh=PleFTXp5KX3jaKKQF4HayPPAWg7eMTMA0p/My/yn01w=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=QJWKfBZLim8rKljbHWUXhd6qgQuHzMdNoR0Ezp77Uc0WuNIfjNDXEO/j0983i+BXH
	 YMS2wIy9KUXJ1YBENEW5KxppNXD1aCVMJIaN5lg0MNfBHEm3mDpiIFuZIW78gw3tKk
	 6dA7xVX+WZN1mA9IprNAk833+2xFi86rtAQiAtNQHVsXr2nupapj0qCxtFNq2rd45d
	 skEcn7kWlBVDxqOh9xBpui+EFu8xFkYFctqc2MD4aRiQlh+3xUC8unxaQ4NEijFsEk
	 pTjkzJ5wDWyazwJ0uG8ObsSr/CyecrB9ZBk9nzY1pE9hcMcXiDAe1hrqM9cEQBlsmM
	 18HkGXBv4ypVw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767891482;
 b=Auw51Pn0f+YD3nZAr5tcSIQa250tx1z5bzxDPsDXnhbXHTB3C2aMfcw5+H13kZHnBOlMk
 kmxaqNBzYvktxyIdoJTO75fT5ZMQuzExsxpXSO8oFLSdJCXkRfvDufOxtOmkrONFEOdJyyF
 n7011oo1vvCmG152cTCaHhA6iY8owBw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767891482; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PleFTXp5KX3jaKKQF4HayPPAWg7eMTMA0p/My/yn01w=;
 b=Xo3rSrz9ttZ71veMctjqzlQ80U87Np8IEbgZ0o0plTVELFo8KAous6z2XFjP2WCTSIN93
 t/OzfjtLHk0AcGyWlIP1p8MW8P2JAwwHz9O68cmwq3aM1BTbwy1vA2quecjmP/FEhW0NtxC
 CYPLtRkA1Qjc1jVwHR87Po1nvPnJQaE=
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
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.toke.dk (Postfix) with ESMTPS id 693ACB85580
	for <cake@lists.bufferbloat.net>; Thu, 08 Jan 2026 17:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767891477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FjS4feJSaN6kOmYKqAI8LPvPwfc7zrDjsTbRox8HRnQ=;
	b=gvb9MbgX5lqd24OOwyRz8OPeIb6Tut3FcqAk2f2vZhhjxyz8ucdEq8ZEI88kuvH6ZSE8nL
	hX0Q9qdnSxT7BpqRiA7D4dUXxqdw3b1agWmsdduTEncY5i3wkremO+yuCcU/y52PQnzRQg
	y8WFAbBFINX5di1PPVvaKGOraHFL7n4=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-KZStewPnMJeElPkcOgbrsA-1; Thu, 08 Jan 2026 11:57:55 -0500
X-MC-Unique: KZStewPnMJeElPkcOgbrsA-1
X-Mimecast-MFC-AGG-ID: KZStewPnMJeElPkcOgbrsA_1767891474
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b841fc79f3eso325082666b.2
        for <cake@lists.bufferbloat.net>;
 Thu, 08 Jan 2026 08:57:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891474; x=1768496274;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FjS4feJSaN6kOmYKqAI8LPvPwfc7zrDjsTbRox8HRnQ=;
        b=S4toAvTX6TrC0HhTMtGQliZD2cNCIdcValsU7jtU22VdNc127MZgEgi8OqmVaTstWg
         EX0ay9uLRzKVppbey6a+Dj8yR5s35Le/fwCW3Oz1iE3KfJhKZ81Ge3+C2RvajHPv4cjx
         VL/U0XKXYhIRQcsxUXw7KbuoScngJEC4xtWxmY6IZh/gJYiOqYsS5LsF5eyLlTg5Nc5g
         UwBSZtOYeP+r2fLmlQUEnX/cTeGpBD0LPkC9LluAaKkRDGXQau7Wnp0Urx7gJDgC2GoF
         +2aRzLWhgLVmUJYQ/dRaL6MXkhTnNC6ARZUjx+crKQlrgJqBae+3LQ3nik3Q20c3jquQ
         ja6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVo+dEL0M/OlE/h3stqc51LSsVsjJzsFhoxmArlDZofj30jLI/oKyjB++X5m8v8xoCGty/R@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwEzcDAzt36gmDJgLB3P0UvOf0JVrGUi282J5MXCS4EsHBtm6op
	+2cUtjoe0STOVwaopOoUWD5+9MgAkSZJ3AvKYCz4hW71ZupUeqDqSr6TeRyTR7Phf+o2gLEnlJL
	7htViSgxlsg9h00ZIL9zix4ea4T3N3uFknvsKOOn8b4zaT3tqSkCUBAedYP7vD3Q=
X-Gm-Gg: AY/fxX4K1KP9i57zy1mkvXSN4LNDJZRF1ZkMtV1Jkk3KGpuiuv9hAgcsaeJozd+5kJ+
	TZmP3T7pZkxxNtD6qI0mt8Fg59JyVQhAYylu/7jEoTzcFW6MJfIQmMt9R9HiSuIyTSzw5fAz04a
	DUzEnhqwJ/8tMXpNe2OWdooyo8BYIOVIig9f5mh/Ej5qNV2bXTd/NLke6WquNhaDZwakLXiuedQ
	Ougy6uoy1I3WT0MJ402ZR8mwMUoG1T4DQlaliUWDyxawhMxpyqbQ0YyOrM9u+YZsLbN+3csf5hR
	QvsAfbOdhwP96CgkQ5cEUf1pOQsA5JfBvNiTUHrOiUn9EFne0fNWsX4c5L/uVu/vwDONiF5Hn2B
	vJlEEMYALtGhWYbARMo9j2LOKVlH1e8M5Vw==
X-Received: by 2002:a17:907:2d88:b0:b7a:1be1:984 with SMTP id
 a640c23a62f3a-b84453f2266mr608595466b.64.1767891474320;
        Thu, 08 Jan 2026 08:57:54 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFFWJVAHTUWbZTy1KF6VR+6h/Us1UzmfRaGVZweCOKnOEbb1/ZVYwDxcy96zyzkUcNJkGt4QQ==
X-Received: by 2002:a17:907:2d88:b0:b7a:1be1:984 with SMTP id
 a640c23a62f3a-b84453f2266mr608593666b.64.1767891473839;
        Thu, 08 Jan 2026 08:57:53 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a4d029bsm869145066b.41.2026.01.08.08.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:57:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id C38E64083B9; Thu, 08 Jan 2026 17:57:52 +0100 (CET)
Date: Thu, 08 Jan 2026 17:56:02 +0100
Message-Id: <20260108-mq-cake-sub-qdisc-v7-0-4eb645f0419c@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKLhX2kC/3XRwU7DMAwG4FeZcibIdpOs4YSExANwRRyS2GERW
 sfaMg1Ne3dCETDUcvz1258PPqlB+iKDulmdVC+HMpRdV8P6aqXSJnTPogvXrAjIggfS271O4UX
 08Bb1nsuQdOIM0XqmLFbVvddecjlO5qPqZNSdHEf1VJtNGcZd/z4de7i/mwa+YDIL8AE1aNMEc
 MCISOG2F96E8TrttpN3wB+i1v8SgXJGDtG0bZ4RdEmslwiqBBn2EhjMOvoZ0VwQDSwRTSVsdi5
 Z00riNCPML0GAS4T5JIC5IcSAyc0I+004QLBLhK1EG7yPniNYmRPuknBLhKuECAm4iBLx70fO5
 /MHcmeJO1ACAAA=
X-Change-ID: 20250902-mq-cake-sub-qdisc-cdf0b59d2fe5
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Willem de Bruijn <willemb@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 Victor Nogueira <victor@mojatatu.com>
X-Mailer: b4 0.14.3
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LLEXyvG7GIyLi2Oe9IQbUVV9UWJm2ae3X0GeOuhIs0o_1767891474
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: ATLTXEL3X6B4NFZXRCEPGO5HZTHTCU34
X-Message-ID-Hash: ATLTXEL3X6B4NFZXRCEPGO5HZTHTCU34
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v7 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260108-mq-cake-sub-qdisc-v7-0-4eb645f0419c@redhat.com/>
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
YXdhcmUgb2YgdGhlIGNha2VfbXEgcWRpc2Mgd2VyZSBzdWJtaXR0ZWQNCnNlcGFyYXRlbHkgd2l0
aCBhIHByZXZpb3VzIHBhdGNoIHZlcnNpb246DQoNCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyNjAxMDUxNjI5MDIuMTQzMjk0MC0xLXRva2VAcmVkaGF0LmNvbQ0KDQotLS0NCkNoYW5nZXMg
aW4gdjc6DQotIFVzZSBremFsbG9jKCkgaW5zdGVhZCBvZiBrdmNhbGxvYygxLCAuLi4pDQotIEFk
ZCBtaXNzaW5nIFNvQiB0byBsYXN0IHBhdGNoDQotIEFkZCBuZXcgaW5jbHVkZS9saW51eC9zY2hf
cHJpdi5oIGhlYWRlciBmaWxlIHRvIE1BSU5UQUlORVJTIGVudHJ5IGZvciBUQw0KLSBMaW5rIHRv
IHY2OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMTA2LW1xLWNha2Utc3ViLXFkaXNj
LXY2LTAtZWUyZTA2YjFlYjFhQHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2NjoNCi0gQWRkIG1p
c3NpbmcgdGVhcmRvd24gY29tbWFuZCBpbiBsYXN0IHNlbGZ0ZXN0DQotIExpbmsgdG8gdjU6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAxMDUtbXEtY2FrZS1zdWItcWRpc2MtdjUtMC04
YTk5YjlkYjA1ZTZAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHY1Og0KLSBEaXNhbGxvdyB1c2lu
ZyBhdXRvcmF0ZS1pbmdyZXNzIHdpdGggY2FrZV9tcQ0KLSBMb2NrIGVhY2ggY2hpbGQgaW4gY2Fr
ZV9tcV9jaGFuZ2UoKSBpbnN0ZWFkIG9mIHRoZSBwYXJlbnQNCi0gTW92ZSBtcSBleHBvcnRzIGlu
dG8gaXRzIG93biBoZWFkZXIgZmlsZSBhbmQgZXhwb3J0IHRoZW0gd2l0aCBFWFBPUlRfU1lNQk9M
X05TX0dQTA0KLSBBZGQgc2VsZnRlc3RzDQotIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyNTEyMDEtbXEtY2FrZS1zdWItcWRpc2MtdjQtMC01MGRkMzIxMWExYzZAcmVk
aGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHY0Og0KLSBBIGJ1bmNoIG9mIGJvdCBuaXRzOg0KIC0gRml4
IG51bGwgcG9pbnRlciBkZXJlZiBpbiBjYWtlX2Rlc3Ryb3koKQ0KIC0gVW53aW5kIHFkaXNjIHJl
Z2lzdHJhdGlvbiBvbiBmYWlsdXJlDQogLSBVc2UgcmN1X2RlcmVmZXJlbmNlKCkgaW5zdGVhZCBv
ZiBydG5sX2RlcmVmZXJlbmNlKCkgaW4gZGF0YSBwYXRoDQogLSBVc2UgV1JJVEVfT05DRSgpIGZv
ciBxLT5sYXN0X2FjdGl2ZQ0KIC0gU3RvcmUgbnVtX2FjdGl2ZV9xcyB0byBzdGF0cyB2YWx1ZSBh
ZnRlciBjb21wdXRpbmcgaXQNCi0gTGluayB0byB2MzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI1MTEzMC1tcS1jYWtlLXN1Yi1xZGlzYy12My0wLTVmNjZjNTQ4ZWNkY0ByZWRoYXQuY29t
DQoNCkNoYW5nZXMgaW4gdjM6DQotIEV4cG9ydCB0aGUgZnVuY3Rpb25zIGZyb20gc2NoX21xIGFu
ZCByZXVzZSB0aGVtIGluc3RlYWQgb2YgY29weS1wYXN0aW5nDQotIERyb3BwZWQgSmFtYWwncyBy
ZXZpZXdlZC1ieSBvbiB0aGUgcGF0Y2hlcyB0aGF0IGNoYW5nZWQgZHVlIHRvIHRoZSBhYm92ZQ0K
LSBGaXhlZCBhIGNyYXNoIGlmIGNha2VfbXFfaW5pdCBpcyBjYWxsZWQgd2l0aCBhIE5VTEwgb3B0
IHBhcmFtZXRlcg0KLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUx
MTI3LW1xLWNha2Utc3ViLXFkaXNjLXYyLTAtMjRkOWVhZDA0N2I5QHJlZGhhdC5jb20NCg0KQ2hh
bmdlcyBpbiB2MjoNCi0gUmViYXNlIG9uIHRvcCBvZiBuZXQtbmV4dCwgaW5jb3Jwb3JhdGluZyBF
cmljJ3MgY2hhbmdlcw0KLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjUxMTI0LW1xLWNha2Utc3ViLXFkaXNjLXYxLTAtYTJmZjFkYWI0ODhmQHJlZGhhdC5jb20NCg0K
Q2hhbmdlcyBpbiB2MSAoc2luY2UgUkZDKToNCi0gRHJvcCB0aGUgc3luY190aW1lIHBhcmFtZXRl
ciBmb3Igbm93IGFuZCBhbHdheXMgdXNlIHRoZSAyMDAgdXMgdmFsdWUuDQogIFdlIGFyZSBwbGFu
bmluZyB0byBleHBsb3JlIGF1dG8tY29uZmlndXJhdGlvbiBvZiB0aGUgc3luYyB0aW1lLCBzbw0K
ICB0aGlzIGlzIHRvIGF2b2lkIGNvbW1pdHRpbmcgdG8gYSBVQVBJLiBJZiBuZWVkZWQsIGEgcGFy
YW1ldGVyIGNhbiBiZQ0KICBhZGRlZCBiYWNrIGxhdGVyLg0KLSBLZWVwIHRoZSB0YyB5YW1sIHNw
ZWMgaW4gc3luYyB3aXRoIHRoZSBuZXcgc3RhdHMgbWVtYmVyDQotIFJlYmFzZSBvbiBuZXQtbmV4
dA0KLSBMaW5rIHRvIFJGQzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDkyNC1tcS1j
YWtlLXN1Yi1xZGlzYy12MS0wLTQzYTA2MGQxMTEyYUByZWRoYXQuY29tDQoNCi0tLQ0KSm9uYXMg
S8O2cHBlbGVyICgyKToNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IHNoYXJlIHNoYXBlciBz
dGF0ZSBhY3Jvc3Mgc3ViLWluc3RhbmNlcyBvZiBjYWtlX21xDQogICAgICBzZWxmdGVzdHMvdGMt
dGVzdGluZzogYWRkIHNlbGZ0ZXN0cyBmb3IgY2FrZV9tcSBxZGlzYw0KDQpUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gKDQpOg0KICAgICAgbmV0L3NjaGVkOiBFeHBvcnQgbXEgZnVuY3Rpb25zIGZv
ciByZXVzZQ0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogRmFjdG9yIG91dCBjb25maWcgdmFy
aWFibGVzIGludG8gc2VwYXJhdGUgc3RydWN0DQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBB
ZGQgY2FrZV9tcSBxZGlzYyBmb3IgdXNpbmcgY2FrZSBvbiBtcSBkZXZpY2VzDQogICAgICBuZXQv
c2NoZWQ6IHNjaF9jYWtlOiBTaGFyZSBjb25maWcgYWNyb3NzIGNha2VfbXEgc3ViLXFkaXNjcw0K
DQogRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwgICAgICAgICAgICAgICAgfCAg
IDMgKw0KIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAxICsNCiBpbmNsdWRlL25ldC9zY2hfcHJpdi5oICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAyNyArDQogaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oICAgICAgICAgICAg
ICAgICAgICAgfCAgIDEgKw0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgNTE0ICsrKysrKysrKysrKysrLS0tLS0NCiBuZXQvc2NoZWQvc2NoX21x
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA3MSArKy0NCiAuLi4vdGMtdGVz
dGluZy90Yy10ZXN0cy9xZGlzY3MvY2FrZV9tcS5qc29uICAgICAgICB8IDU1OSArKysrKysrKysr
KysrKysrKysrKysNCiA3IGZpbGVzIGNoYW5nZWQsIDEwMTggaW5zZXJ0aW9ucygrKSwgMTU4IGRl
bGV0aW9ucygtKQ0KLS0tDQpiYXNlLWNvbW1pdDogNzZkZTRlMTU5NGI3ZGZhY2JhNTQ5ZTlkYjYw
NTg1ODExZjQ1ZGJlNQ0KY2hhbmdlLWlkOiAyMDI1MDkwMi1tcS1jYWtlLXN1Yi1xZGlzYy1jZGYw
YjU5ZDJmZTUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dAo=
