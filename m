Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B22CCFCBD0
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:33 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 57BA3B76573;
	Tue, 06 Jan 2026 12:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767699671;
	bh=dHesLQdjolpsleQ9quv78r1FNuMX9bJ9jCBsVCv8Vmw=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=QSnJYC1kwyEbqyIQkUNhX/XKoKBjwWnU/DqMnOFxyNTWOuq6Jer6bTxmwa4LTCI8r
	 Xp4L5zSzfc1dr3PCUTlLjyvCFSy0UtBzB3/gIDsHmXyFZg6BLVLhkQj25UGxS+xQem
	 T+D2cHsyNuy5axm/V0TElmfOz9QySSNpfu4udAbtglk7gCRhJn2MV0pQ94wIRR4RUJ
	 j7WjFTSKbVI6M9ehluRSZmgnpMa6L2PbKP7TNjUdp3VsivTxDFDzYNi5FgZhoKGYAb
	 NibY81F2UiWCS206mKbS++RINeZpEZQ1xg+0HTjWeZOLv33MXow6W+yzD23BBxuKWa
	 +cSBz+UkSS7hQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767699671;
 b=B/5yQhHJP3DPrSmzol9LUXKVuA/1OQRBmw+F0M1FzCxV31kct845KoKI/LPcgX3K9nU1Z
 g5d5Ls3uJJsZRPJIyMCILOgr5MNMpkWe6kK5kWNa3Ml3J5OXk7Vr4Y4RlU61ATPe/o1C3Ab
 54QcIpWhthG2cBX+g2nNHSdgEqtLZqw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767699671; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=dHesLQdjolpsleQ9quv78r1FNuMX9bJ9jCBsVCv8Vmw=;
 b=PjwK3VwvgaIQ3EMIg2RKivAPhWEIJYcJeAsfEv88IqjfiCDZbxy64j12f4kogdJQBg6w2
 0iS686r9blXXlkReilK4DGpq314YNZWfckOxL7mUOBEacfzyY188mH0bbi2AD02mZSYlJ7O
 7wI+CaR+awns3O2ihBtnIVoaSzJjOw0=
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
	by mail.toke.dk (Postfix) with ESMTPS id 611C1B76465
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 12:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767699663;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pZWlNkkO0n9yVY4xFn+ub+kByruEzCdu/5otM2kzl2s=;
	b=hTeR5D6pTR7AwS0003sFMuhE6NNcuaabXCKx9qSjHnaJJjdH6Xdpa21o3hRfYk9pWcza2z
	YoDSjzOmPudxaMyiFIXrmEFmhV0LM6YHw8Lrvp2mkrTAV9nsIOLcjuUHTDNNrVakm4WDMJ
	fIa74dY0p5XojHb1AiWpWlEkFZP4A4A=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-484-hiROmAHoPsSKdjNHReRBxA-1; Tue, 06 Jan 2026 06:41:02 -0500
X-MC-Unique: hiROmAHoPsSKdjNHReRBxA-1
X-Mimecast-MFC-AGG-ID: hiROmAHoPsSKdjNHReRBxA_1767699661
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b83c3dd2092so112365266b.1
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 03:41:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767699661; x=1768304461;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZWlNkkO0n9yVY4xFn+ub+kByruEzCdu/5otM2kzl2s=;
        b=g6pLPX4YK8PjB9PP/Dodo6Xs/c8G2etLW7AtHeN+ntBGaIQh3BCMlegjYvZ9gIYWkP
         eNZ8S3rM2pjce3Ljq0gDsrXFZGi/WJMaGn3adysLBp4yM3iEul4ryhv4iea+GEIQr0dr
         HXFpyZgTkJgDI1cGl5cCB58QvDCRK/p0ldm/3NgSRZ1t6XnFM9BegAIufcQjmE1vguue
         nj/CAdt4vg7VyMtrPpSsGpShOXXnfBgx+vzLwQJIscJ2/X75BzBRVXp5iPArQ3rBB9cs
         porS7S9OEpt4IrTflYR0UjO8hvg0pvK/WEwx6vr2NwyP8/x2y8bOosmiZ4NQDXlYqTz1
         7tsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+tLAc1GLitzcZ8mzeV1feTgQRMkb5n67YDM3CCG62/9/HDtuGAnPifh3lSuu+1pv/Mbnz@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxVLLMKcYRDArCEybAT/kLLEbuLsRmoLe40bLA0t6w/zlcAdzWt
	xwKVtyljOwUlBXLZ53iFnnG2mXaPpQIED9antrdJHAk9eUZ4SGOha6NhdhWV4Ha/erHrvi1fcn6
	wq7n4bXChzRK58INbmW1dHsbZO8GyxPTIcqqpCkKUN1nhL9BxXYwE/WJR4IbbDAk=
X-Gm-Gg: AY/fxX4cJfTQYP3LlhVCWntfjug54YsCofb5SSiI93wAgl81QHFG5PIpCsZJJ9+yXh7
	Ei6mtlH/BW7bGi2TEXNIuQFzbSf3ZMb8imO+rV+voMBglYjJTtzH90ntLulxX1v5FQ24Wox9Vz8
	peEiFzljGzO2C/lcSe4vL5Bl5hm1/LBVPA2hSW4WV00sdgf2xBP26TOkZvF4Wl0G/h4hqV0hH/L
	n0y7zI7dsqXiamcYcY2cDQBUfjJnac+2G6oZJFgPK7DhY+gwMIfy8B0wuDe663nP5m6uIt+AO/G
	7+AHucPgi4Vptpi2/r32oF1ocm1pYrWzX+WbdfWHEEBRNnzc/RFk4ay97JC8rwCvR6omDGToWUc
	i7Nhd4KXdv0IfrEUMDdoj79MN21D/0jBHUg==
X-Received: by 2002:a17:907:2da6:b0:b2b:3481:93c8 with SMTP id
 a640c23a62f3a-b8426a721fdmr254461366b.19.1767699660790;
        Tue, 06 Jan 2026 03:41:00 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IG84dM2UbyxKeGPMg2mgLwullZrJG1K6ilHte+bW3twi+D5DlhzPWphkNla6phTEwHL0SIdQQ==
X-Received: by 2002:a17:907:2da6:b0:b2b:3481:93c8 with SMTP id
 a640c23a62f3a-b8426a721fdmr254458166b.19.1767699660261;
        Tue, 06 Jan 2026 03:41:00 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a4cfe76sm202719566b.40.2026.01.06.03.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:40:59 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id A6DAA407FCC; Tue, 06 Jan 2026 12:40:58 +0100 (CET)
Date: Tue, 06 Jan 2026 12:40:51 +0100
Message-Id: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMP0XGkC/3XNwUrEMBAG4FdZcjYymSbZxpMg+ABexUOamdgg2
 7pNLStL391YUVdajz///N+cReYhcRY3u7MYeEo59V0J9monQuu7Z5aJShYIaMABysNRBv/CMr8
 18kgpBxkoQmMcYWQjyu514JhOi/koOh5lx6dRPJWmTXnsh/fl2cP93XLwBaPegCclQerKgwVSS
 qG/HZhaP16H/rB4k/ohSv0v4TFGRb7RdR1XBF4S+y0CC4GaHHsCvW/ciqguiAq2iKoQJlobjK4
 5UFgR+pdAUFuE/iSAqEKlvAp2RZhvwoICs0WYQtTeucZRA4b/EvM8fwD76w95DQIAAA==
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
X-Mimecast-MFC-PROC-ID: N5d0HC0VFTUNT6Xdy78GBagms7DhZDM82WnC5-z_bNo_1767699661
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: NI4OFKRPP26NPXCSLTW5WTPE4ZGGIWI2
X-Message-ID-Hash: NI4OFKRPP26NPXCSLTW5WTPE4ZGGIWI2
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v6 0/6] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com/>
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
aW4gdjY6DQotIEFkZCBtaXNzaW5nIHRlYXJkb3duIGNvbW1hbmQgaW4gbGFzdCBzZWxmdGVzdA0K
LSBMaW5rIHRvIHY1OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMTA1LW1xLWNha2Ut
c3ViLXFkaXNjLXY1LTAtOGE5OWI5ZGIwNWU2QHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2NToN
Ci0gRGlzYWxsb3cgdXNpbmcgYXV0b3JhdGUtaW5ncmVzcyB3aXRoIGNha2VfbXENCi0gTG9jayBl
YWNoIGNoaWxkIGluIGNha2VfbXFfY2hhbmdlKCkgaW5zdGVhZCBvZiB0aGUgcGFyZW50DQotIE1v
dmUgbXEgZXhwb3J0cyBpbnRvIGl0cyBvd24gaGVhZGVyIGZpbGUgYW5kIGV4cG9ydCB0aGVtIHdp
dGggRVhQT1JUX1NZTUJPTF9OU19HUEwNCi0gQWRkIHNlbGZ0ZXN0cw0KLSBMaW5rIHRvIHY0OiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMjAxLW1xLWNha2Utc3ViLXFkaXNjLXY0LTAt
NTBkZDMyMTFhMWM2QHJlZGhhdC5jb20NCg0KQ2hhbmdlcyBpbiB2NDoNCi0gQSBidW5jaCBvZiBi
b3Qgbml0czoNCiAtIEZpeCBudWxsIHBvaW50ZXIgZGVyZWYgaW4gY2FrZV9kZXN0cm95KCkNCiAt
IFVud2luZCBxZGlzYyByZWdpc3RyYXRpb24gb24gZmFpbHVyZQ0KIC0gVXNlIHJjdV9kZXJlZmVy
ZW5jZSgpIGluc3RlYWQgb2YgcnRubF9kZXJlZmVyZW5jZSgpIGluIGRhdGEgcGF0aA0KIC0gVXNl
IFdSSVRFX09OQ0UoKSBmb3IgcS0+bGFzdF9hY3RpdmUNCiAtIFN0b3JlIG51bV9hY3RpdmVfcXMg
dG8gc3RhdHMgdmFsdWUgYWZ0ZXIgY29tcHV0aW5nIGl0DQotIExpbmsgdG8gdjM6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMzAtbXEtY2FrZS1zdWItcWRpc2MtdjMtMC01ZjY2YzU0
OGVjZGNAcmVkaGF0LmNvbQ0KDQpDaGFuZ2VzIGluIHYzOg0KLSBFeHBvcnQgdGhlIGZ1bmN0aW9u
cyBmcm9tIHNjaF9tcSBhbmQgcmV1c2UgdGhlbSBpbnN0ZWFkIG9mIGNvcHktcGFzdGluZw0KLSBE
cm9wcGVkIEphbWFsJ3MgcmV2aWV3ZWQtYnkgb24gdGhlIHBhdGNoZXMgdGhhdCBjaGFuZ2VkIGR1
ZSB0byB0aGUgYWJvdmUNCi0gRml4ZWQgYSBjcmFzaCBpZiBjYWtlX21xX2luaXQgaXMgY2FsbGVk
IHdpdGggYSBOVUxMIG9wdCBwYXJhbWV0ZXINCi0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI1MTEyNy1tcS1jYWtlLXN1Yi1xZGlzYy12Mi0wLTI0ZDllYWQwNDdiOUBy
ZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjI6DQotIFJlYmFzZSBvbiB0b3Agb2YgbmV0LW5leHQs
IGluY29ycG9yYXRpbmcgRXJpYydzIGNoYW5nZXMNCi0gTGluayB0byB2MTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI1MTEyNC1tcS1jYWtlLXN1Yi1xZGlzYy12MS0wLWEyZmYxZGFiNDg4
ZkByZWRoYXQuY29tDQoNCkNoYW5nZXMgaW4gdjEgKHNpbmNlIFJGQyk6DQotIERyb3AgdGhlIHN5
bmNfdGltZSBwYXJhbWV0ZXIgZm9yIG5vdyBhbmQgYWx3YXlzIHVzZSB0aGUgMjAwIHVzIHZhbHVl
Lg0KICBXZSBhcmUgcGxhbm5pbmcgdG8gZXhwbG9yZSBhdXRvLWNvbmZpZ3VyYXRpb24gb2YgdGhl
IHN5bmMgdGltZSwgc28NCiAgdGhpcyBpcyB0byBhdm9pZCBjb21taXR0aW5nIHRvIGEgVUFQSS4g
SWYgbmVlZGVkLCBhIHBhcmFtZXRlciBjYW4gYmUNCiAgYWRkZWQgYmFjayBsYXRlci4NCi0gS2Vl
cCB0aGUgdGMgeWFtbCBzcGVjIGluIHN5bmMgd2l0aCB0aGUgbmV3IHN0YXRzIG1lbWJlcg0KLSBS
ZWJhc2Ugb24gbmV0LW5leHQNCi0gTGluayB0byBSRkM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvMjAyNTA5MjQtbXEtY2FrZS1zdWItcWRpc2MtdjEtMC00M2EwNjBkMTExMmFAcmVkaGF0LmNv
bQ0KDQotLS0NCkpvbmFzIEvDtnBwZWxlciAoMik6DQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtl
OiBzaGFyZSBzaGFwZXIgc3RhdGUgYWNyb3NzIHN1Yi1pbnN0YW5jZXMgb2YgY2FrZV9tcQ0KICAg
ICAgc2VsZnRlc3RzL3RjLXRlc3Rpbmc6IGFkZCBzZWxmdGVzdHMgZm9yIGNha2VfbXEgcWRpc2MN
Cg0KVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuICg0KToNCiAgICAgIG5ldC9zY2hlZDogRXhwb3J0
IG1xIGZ1bmN0aW9ucyBmb3IgcmV1c2UNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IEZhY3Rv
ciBvdXQgY29uZmlnIHZhcmlhYmxlcyBpbnRvIHNlcGFyYXRlIHN0cnVjdA0KICAgICAgbmV0L3Nj
aGVkOiBzY2hfY2FrZTogQWRkIGNha2VfbXEgcWRpc2MgZm9yIHVzaW5nIGNha2Ugb24gbXEgZGV2
aWNlcw0KICAgICAgbmV0L3NjaGVkOiBzY2hfY2FrZTogU2hhcmUgY29uZmlnIGFjcm9zcyBjYWtl
X21xIHN1Yi1xZGlzY3MNCg0KIERvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy90Yy55YW1sICAg
ICAgICAgICAgICAgIHwgICAzICsNCiBpbmNsdWRlL25ldC9zY2hfcHJpdi5oICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAyNyArDQogaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5o
ICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgNTE0ICsrKysrKysrKysrKysrLS0tLS0NCiBuZXQv
c2NoZWQvc2NoX21xLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA3MSArKy0N
CiAuLi4vdGMtdGVzdGluZy90Yy10ZXN0cy9xZGlzY3MvY2FrZV9tcS5qc29uICAgICAgICB8IDU1
OSArKysrKysrKysrKysrKysrKysrKysNCiA2IGZpbGVzIGNoYW5nZWQsIDEwMTcgaW5zZXJ0aW9u
cygrKSwgMTU4IGRlbGV0aW9ucygtKQ0KLS0tDQpiYXNlLWNvbW1pdDogYzMwM2U4Yjg2ZDlkYmQ2
ODY4ZjUyMTYyNzI5NzMyOTJmN2YzYjdmMQ0KY2hhbmdlLWlkOiAyMDI1MDkwMi1tcS1jYWtlLXN1
Yi1xZGlzYy1jZGYwYjU5ZDJmZTUNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo=
