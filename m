Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC31CFCBD3
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:33 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 50973B764DB;
	Tue, 06 Jan 2026 12:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767699669;
	bh=o0UFP7mQbyYDmL9KpEomXJmtXffXpDDcXeOY3qutUU4=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZKHg0M+u9Diyc3tT9CUcWZgXmAth2B9NVeNZR1m3qnm58oVZFi8Uvg5vPNEVToOFX
	 cwqZx3VhYhExuVEAFgYJJhWWucevIDG45iaLCc1tZgQchZeCrgcGLBmW8d0o99fXU7
	 9k22vI9Ub9GdBApPyXKtgILj+yXVzG1JIwVNmXFRAa4pFLQipc01qcNKS/ZxjyxOnL
	 5NQKbDjwP1s5icb+DbmHbJAIn8Ury535Xh8EpwQPdRrN+A+Uxm21mzvALeK5LA7Qwk
	 N4TKQgpZgIyMFzrV7IE3Ijy8gPKODG57xtEb3jYK4q+72K33ZowzzgUtkAHlbgNFdK
	 UyJk8QY8tQVHw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767699669;
 b=tJpZhRPZdDDn05QtSQM7X9FDnbNGPZ+43X5LFUOm9tTT95JPf9N601BWDBI53VKJkyg3W
 47EzB93TgOvNCHwr9tZIMISbi+/lnoLx2VKJsNRNZhIBvYyyBUfuaMFIWU6pme6geJVMtx+
 2L1AGFotCIJfDWvkG6Wu7n041sNKeTI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767699669; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o0UFP7mQbyYDmL9KpEomXJmtXffXpDDcXeOY3qutUU4=;
 b=6yUYJjsN51z1rMaztWRl1YX9EG4UXbfqS2jdla4faEAsoQ1P574VrwmyoRVmaU+z6Zvh3
 lGy5szyiJRgkrr+B1YpPNffy/+vrKqyTUH1QooObz1OzFH4MyyohOeDTnVXeXlJ26Dl+C1f
 eXG6vaCMZ3hASKRIPwIExV69+1wdMik=
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
	by mail.toke.dk (Postfix) with ESMTPS id B17CDB7645E
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 12:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767699665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+CWSd+PGM2JdeW7nTcCv/7NGr40swNVwKAd5RTnVFNo=;
	b=C8QD9+Os5cifYCZ2K3wsDxeXnWIVNf9iBjIbDTf/Gj00fhAPeqXdXcttVmfCuaeS3m8m3+
	t025bUAnbzPF9WXthLV9KvDLeF9FGNMNCa+apYoJoSweLki/HeoPoCJY/CkTiehG8VHBs5
	PPgnQLlksQkeXgzagn4EVukxmQSX6rM=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212-Udj7KEPrPsyhK0Qmdn07eg-1; Tue, 06 Jan 2026 06:41:04 -0500
X-MC-Unique: Udj7KEPrPsyhK0Qmdn07eg-1
X-Mimecast-MFC-AGG-ID: Udj7KEPrPsyhK0Qmdn07eg_1767699663
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b800ee1a176so123815366b.1
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 03:41:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767699663; x=1768304463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+CWSd+PGM2JdeW7nTcCv/7NGr40swNVwKAd5RTnVFNo=;
        b=My7oDnXI6nCY5i7TifH7PZwVoctZsZI5JhIIIRtJOt6bbsorQIsfOyyvX0k+oLsv/O
         pg381tCRkd7gaJh5Jl/afn5YMnvwQ1ptg7B7eR+O0TSuDejUqi2xSNeVAU8rLnCbYTG5
         L1ERKnqSZx1HVOvYL7g/S2bl3U5jxIXL4Kgphg6Okm1bYHC1ALHVYA4tUVF94bGuuP5j
         rQ5jDeAawLdg5AA+UW6Jnbl5AaXE9VDd1TO0p2NFHN7mCdzajTSRJ+g1FhvrLYl/bXDi
         BnwAm3mzIv80f76Q+7tcYb4F5mOts6XSXTex/lvA6F+jgdstkLkvHfwWjcgiDQq80Kgd
         I/Ig==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYaYUgnQkY3/04Nj5cv5kJjHkitHTq1QxrzOv6raYm5ESn2QALMPUnaGKO0waUQoN1yywU@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzhckXv6gjq2HS4yVf5py1HNxjZp+NpjJCmz/lI4KUlrmsDZtA6
	9/+VefP0x2dsafROQVBau/2cqgn/wgovSB75Y69a8do+zl47Q5N5RVkRqKJUriC4MYPDtCcVUh7
	CyaGEB1LLm9Eu2HlPtOtocDwPxAHfYjWTMgkQb26a4BJv94lVutJI/4orkuFdrNk=
X-Gm-Gg: AY/fxX7Ls/TiIMfGNUjXUx/OsW/TKjuTgZ7JyKTDZuT0BCMVzg71H5pnFLPiyxUJXv/
	xXehac7KzReGPfjjeCaPHg5o3rFjUTMFN4VL7gBghrM0ELmt2i2MWr+gWapH8zGKTxamj13peQ+
	O7LvzNk/Sa5OBpxj5goFI/uLNxrhyaPVOoLzoTjXa47vSFIPH1QqyIyct4WiBmgFMqAoevufmf7
	voNFojl/aEK5RVFDPTH52FIJkUzFELzO7CIU/J5Wi5cQ80zel1oP93OUOpFtfL2W3tcKBLeab7p
	49TuvgZMmPRC60tVkHp3xwt8QOhE8h2XnBLTG+IDPk6TVeRSrwRxnXxtgvgBHpNDvuwHz4gTKqt
	8CYoOD2wsPB07bneJI7HX6u1UtrN1lvHbvPGs
X-Received: by 2002:a17:907:70c:b0:b7a:1bde:a01b with SMTP id
 a640c23a62f3a-b8426c3ed60mr276949966b.63.1767699662830;
        Tue, 06 Jan 2026 03:41:02 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFAaiE8g6Eq8MiEKgZTOLIO86BKRGmMgIbiw+sOEZ4B1WqOVglaOjdirFOh0/o1N5soYa4aqQ==
X-Received: by 2002:a17:907:70c:b0:b7a:1bde:a01b with SMTP id
 a640c23a62f3a-b8426c3ed60mr276948166b.63.1767699662395;
        Tue, 06 Jan 2026 03:41:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a2340a2sm211196666b.5.2026.01.06.03.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:41:00 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id B8525407FD6; Tue, 06 Jan 2026 12:40:58 +0100 (CET)
Date: Tue, 06 Jan 2026 12:40:56 +0100
MIME-Version: 1.0
Message-Id: <20260106-mq-cake-sub-qdisc-v6-5-ee2e06b1eb1a@redhat.com>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
In-Reply-To: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
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
X-Mimecast-MFC-PROC-ID: 7QNESi6eEfVlrswyjx6HwNzvSTX-lNeuGU3NK-C2fzw_1767699663
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: L3HBJE2HJAEJGD3X4XTWKDPU2YPBJQLN
X-Message-ID-Hash: L3HBJE2HJAEJGD3X4XTWKDPU2YPBJQLN
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v6 5/6] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260106-mq-cake-sub-qdisc-v6-5-ee2e06b1eb1a@redhat.com/>
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

RnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQoNClRoaXMg
Y29tbWl0IGFkZHMgc2hhcmVkIHNoYXBlciBzdGF0ZSBhY3Jvc3MgdGhlIGNha2UgaW5zdGFuY2Vz
IGJlbmVhdGggYQ0KY2FrZV9tcSBxZGlzYy4gSXQgd29ya3MgYnkgcGVyaW9kaWNhbGx5IHRyYWNr
aW5nIHRoZSBudW1iZXIgb2YgYWN0aXZlDQppbnN0YW5jZXMsIGFuZCBzY2FsaW5nIHRoZSBjb25m
aWd1cmVkIHJhdGUgYnkgdGhlIG51bWJlciBvZiBhY3RpdmUNCnF1ZXVlcy4NCg0KVGhlIHNjYW4g
aXMgbG9ja2xlc3MgYW5kIHNpbXBseSByZWFkcyB0aGUgcWxlbiBhbmQgdGhlIGxhc3RfYWN0aXZl
IHN0YXRlDQp2YXJpYWJsZSBvZiBlYWNoIG9mIHRoZSBpbnN0YW5jZXMgY29uZmlndXJlZCBiZW5l
YXRoIHRoZSBwYXJlbnQgY2FrZV9tcQ0KaW5zdGFuY2UuIExvY2tpbmcgaXMgbm90IHJlcXVpcmVk
IHNpbmNlIHRoZSB2YWx1ZXMgYXJlIG9ubHkgdXBkYXRlZCBieQ0KdGhlIG93bmluZyBpbnN0YW5j
ZSwgYW5kIGV2ZW50dWFsIGNvbnNpc3RlbmN5IGlzIHN1ZmZpY2llbnQgZm9yIHRoZQ0KcHVycG9z
ZSBvZiBlc3RpbWF0aW5nIHRoZSBudW1iZXIgb2YgYWN0aXZlIHF1ZXVlcy4NCg0KVGhlIGludGVy
dmFsIGZvciBzY2FubmluZyB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBxdWV1ZXMgaXMgc2V0IHRvIDIw
MCB1cy4NCldlIGZvdW5kIHRoaXMgdG8gYmUgYSBnb29kIHRyYWRlb2ZmIGJldHdlZW4gb3Zlcmhl
YWQgYW5kIHJlc3BvbnNlIHRpbWUuDQpGb3IgYSBkZXRhaWxlZCBhbmFseXNpcyBvZiB0aGlzIGFz
cGVjdCBzZWUgdGhlIE5ldGRldmNvbmYgdGFsazoNCg0KaHR0cHM6Ly9uZXRkZXZjb25mLmluZm8v
MHgxOS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1wYXBlci5wZGYNCg0KU2lnbmVkLW9m
Zi1ieTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQpSZXZpZXdl
ZC1ieTogSmFtYWwgSGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4NClNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KLS0tDQogRG9jdW1l
bnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwgfCAgMyArKysNCiBpbmNsdWRlL3VhcGkvbGlu
dXgvcGt0X3NjaGVkLmggICAgICB8ICAxICsNCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyAgICAgICAg
ICAgICAgICB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiAzIGZp
bGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0bGluay9zcGVjcy90Yy55YW1sIGIvRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3Rj
LnlhbWwNCmluZGV4IGIzOThmN2E0NmRhZS4uMmU2NjMzMzNhMjc5IDEwMDY0NA0KLS0tIGEvRG9j
dW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwNCisrKyBiL0RvY3VtZW50YXRpb24vbmV0
bGluay9zcGVjcy90Yy55YW1sDQpAQCAtMjIwNyw2ICsyMjA3LDkgQEAgYXR0cmlidXRlLXNldHM6
DQogICAgICAgLQ0KICAgICAgICAgbmFtZTogYmx1ZS10aW1lci11cw0KICAgICAgICAgdHlwZTog
czMyDQorICAgICAgLQ0KKyAgICAgICAgbmFtZTogYWN0aXZlLXF1ZXVlcw0KKyAgICAgICAgdHlw
ZTogdTMyDQogICAtDQogICAgIG5hbWU6IGNha2UtdGluLXN0YXRzLWF0dHJzDQogICAgIG5hbWUt
cHJlZml4OiB0Y2EtY2FrZS10aW4tc3RhdHMtDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xp
bnV4L3BrdF9zY2hlZC5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQppbmRleCBj
MmRhNzZlNzhiYWQuLjY2ZTgwNzJmNDRkZiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC9wa3Rfc2NoZWQuaA0KKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQpAQCAt
MTAzNiw2ICsxMDM2LDcgQEAgZW51bSB7DQogCVRDQV9DQUtFX1NUQVRTX0RST1BfTkVYVF9VUywN
CiAJVENBX0NBS0VfU1RBVFNfUF9EUk9QLA0KIAlUQ0FfQ0FLRV9TVEFUU19CTFVFX1RJTUVSX1VT
LA0KKwlUQ0FfQ0FLRV9TVEFUU19BQ1RJVkVfUVVFVUVTLA0KIAlfX1RDQV9DQUtFX1NUQVRTX01B
WA0KIH07DQogI2RlZmluZSBUQ0FfQ0FLRV9TVEFUU19NQVggKF9fVENBX0NBS0VfU1RBVFNfTUFY
IC0gMSkNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hf
Y2FrZS5jDQppbmRleCBmOWRhZmE2ODc5NTAuLmU5YmE3Nzc3ZWMzZSAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTIwMiw2
ICsyMDIsNyBAQCBzdHJ1Y3QgY2FrZV9zY2hlZF9jb25maWcgew0KIAl1NjQJCXJhdGVfYnBzOw0K
IAl1NjQJCWludGVydmFsOw0KIAl1NjQJCXRhcmdldDsNCisJdTY0CQlzeW5jX3RpbWU7DQogCXUz
MgkJYnVmZmVyX2NvbmZpZ19saW1pdDsNCiAJdTMyCQlmd21hcmtfbWFzazsNCiAJdTE2CQlmd21h
cmtfc2hmdDsNCkBAIC0yNTgsNiArMjU5LDExIEBAIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgew0K
IAl1MTYJCW1heF9hZGpsZW47DQogCXUxNgkJbWluX25ldGxlbjsNCiAJdTE2CQltaW5fYWRqbGVu
Ow0KKw0KKwkvKiBtcSBzeW5jIHN0YXRlICovDQorCXU2NAkJbGFzdF9jaGVja2VkX2FjdGl2ZTsN
CisJdTY0CQlsYXN0X2FjdGl2ZTsNCisJdTMyCQlhY3RpdmVfcXVldWVzOw0KIH07DQogDQogZW51
bSB7DQpAQCAtMzg0LDYgKzM5MCw4IEBAIHN0YXRpYyBjb25zdCB1MzIgaW52X3NxcnRfY2FjaGVb
UkVDX0lOVl9TUVJUX0NBQ0hFXSA9IHsNCiAJMTIzOTg1MDI2MywgMTE5MTIwOTYwMSwgMTE0Nzg3
ODI5NCwgMTEwODk1NTc4OA0KIH07DQogDQorc3RhdGljIHZvaWQgY2FrZV9zZXRfcmF0ZShzdHJ1
Y3QgY2FrZV90aW5fZGF0YSAqYiwgdTY0IHJhdGUsIHUzMiBtdHUsDQorCQkJICB1NjQgdGFyZ2V0
X25zLCB1NjQgcnR0X2VzdF9ucyk7DQogLyogaHR0cDovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9N
ZXRob2RzX29mX2NvbXB1dGluZ19zcXVhcmVfcm9vdHMNCiAgKiBuZXdfaW52c3FydCA9IChpbnZz
cXJ0IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQ0KICAqDQpAQCAtMjAwNCw2ICsyMDEy
LDQwIEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqY2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlzYyAq
c2NoKQ0KIAl1NjQgZGVsYXk7DQogCXUzMiBsZW47DQogDQorCWlmIChxLT5jb25maWctPmlzX3No
YXJlZCAmJiBub3cgLSBxLT5sYXN0X2NoZWNrZWRfYWN0aXZlID49IHEtPmNvbmZpZy0+c3luY190
aW1lKSB7DQorCQlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0gcWRpc2NfZGV2KHNjaCk7DQorCQlz
dHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpvdGhlcl9wcml2Ow0KKwkJdTY0IG5ld19yYXRlID0gcS0+
Y29uZmlnLT5yYXRlX2JwczsNCisJCXU2NCBvdGhlcl9xbGVuLCBvdGhlcl9sYXN0X2FjdGl2ZTsN
CisJCXN0cnVjdCBRZGlzYyAqb3RoZXJfc2NoOw0KKwkJdTMyIG51bV9hY3RpdmVfcXMgPSAxOw0K
KwkJdW5zaWduZWQgaW50IG50eDsNCisNCisJCWZvciAobnR4ID0gMDsgbnR4IDwgZGV2LT5udW1f
dHhfcXVldWVzOyBudHgrKykgew0KKwkJCW90aGVyX3NjaCA9IHJjdV9kZXJlZmVyZW5jZShuZXRk
ZXZfZ2V0X3R4X3F1ZXVlKGRldiwgbnR4KS0+cWRpc2Nfc2xlZXBpbmcpOw0KKwkJCW90aGVyX3By
aXYgPSBxZGlzY19wcml2KG90aGVyX3NjaCk7DQorDQorCQkJaWYgKG90aGVyX3ByaXYgPT0gcSkN
CisJCQkJY29udGludWU7DQorDQorCQkJb3RoZXJfcWxlbiA9IFJFQURfT05DRShvdGhlcl9zY2gt
PnEucWxlbik7DQorCQkJb3RoZXJfbGFzdF9hY3RpdmUgPSBSRUFEX09OQ0Uob3RoZXJfcHJpdi0+
bGFzdF9hY3RpdmUpOw0KKw0KKwkJCWlmIChvdGhlcl9xbGVuIHx8IG90aGVyX2xhc3RfYWN0aXZl
ID4gcS0+bGFzdF9jaGVja2VkX2FjdGl2ZSkNCisJCQkJbnVtX2FjdGl2ZV9xcysrOw0KKwkJfQ0K
Kw0KKwkJaWYgKG51bV9hY3RpdmVfcXMgPiAxKQ0KKwkJCW5ld19yYXRlID0gZGl2NjRfdTY0KHEt
PmNvbmZpZy0+cmF0ZV9icHMsIG51bV9hY3RpdmVfcXMpOw0KKw0KKwkJLyogbXR1ID0gMCBpcyB1
c2VkIHRvIG9ubHkgdXBkYXRlIHRoZSByYXRlIGFuZCBub3QgbWVzcyB3aXRoIGNvYmFsdCBwYXJh
bXMgKi8NCisJCWNha2Vfc2V0X3JhdGUoYiwgbmV3X3JhdGUsIDAsIDAsIDApOw0KKwkJcS0+bGFz
dF9jaGVja2VkX2FjdGl2ZSA9IG5vdzsNCisJCXEtPmFjdGl2ZV9xdWV1ZXMgPSBudW1fYWN0aXZl
X3FzOw0KKwkJcS0+cmF0ZV9ucyA9IGItPnRpbl9yYXRlX25zOw0KKwkJcS0+cmF0ZV9zaGZ0ID0g
Yi0+dGluX3JhdGVfc2hmdDsNCisJfQ0KKw0KIGJlZ2luOg0KIAlpZiAoIXNjaC0+cS5xbGVuKQ0K
IAkJcmV0dXJuIE5VTEw7DQpAQCAtMjIwMyw2ICsyMjQ1LDcgQEAgc3RhdGljIHN0cnVjdCBza19i
dWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpDQogDQogCWItPnRpbl9lY25fbWFy
ayArPSAhIWZsb3ctPmN2YXJzLmVjbl9tYXJrZWQ7DQogCXFkaXNjX2JzdGF0c191cGRhdGUoc2No
LCBza2IpOw0KKwlXUklURV9PTkNFKHEtPmxhc3RfYWN0aXZlLCBub3cpOw0KIA0KIAkvKiBjb2xs
ZWN0IGRlbGF5IHN0YXRzICovDQogCWRlbGF5ID0ga3RpbWVfdG9fbnMoa3RpbWVfc3ViKG5vdywg
Y29iYWx0X2dldF9lbnF1ZXVlX3RpbWUoc2tiKSkpOw0KQEAgLTIzMDMsNiArMjM0Niw5IEBAIHN0
YXRpYyB2b2lkIGNha2Vfc2V0X3JhdGUoc3RydWN0IGNha2VfdGluX2RhdGEgKmIsIHU2NCByYXRl
LCB1MzIgbXR1LA0KIAliLT50aW5fcmF0ZV9ucyAgID0gcmF0ZV9uczsNCiAJYi0+dGluX3JhdGVf
c2hmdCA9IHJhdGVfc2hmdDsNCiANCisJaWYgKG10dSA9PSAwKQ0KKwkJcmV0dXJuOw0KKw0KIAli
eXRlX3RhcmdldF9ucyA9IChieXRlX3RhcmdldCAqIHJhdGVfbnMpID4+IHJhdGVfc2hmdDsNCiAN
CiAJYi0+Y3BhcmFtcy50YXJnZXQgPSBtYXgoKGJ5dGVfdGFyZ2V0X25zICogMykgLyAyLCB0YXJn
ZXRfbnMpOw0KQEAgLTI3NjksNiArMjgxNSw3IEBAIHN0YXRpYyB2b2lkIGNha2VfY29uZmlnX2lu
aXQoc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpxLCBib29sIGlzX3NoYXJlZCkNCiAJCQkgICAg
ICAgKi8NCiAJcS0+cmF0ZV9mbGFncyB8PSBDQUtFX0ZMQUdfU1BMSVRfR1NPOw0KIAlxLT5pc19z
aGFyZWQgPSBpc19zaGFyZWQ7DQorCXEtPnN5bmNfdGltZSA9IDIwMCAqIE5TRUNfUEVSX1VTRUM7
DQogfQ0KIA0KIHN0YXRpYyBpbnQgY2FrZV9pbml0KHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qg
bmxhdHRyICpvcHQsDQpAQCAtMjg0Miw2ICsyODg5LDkgQEAgc3RhdGljIGludCBjYWtlX2luaXQo
c3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiAJcWQtPmF2Z19wZWFrX2Jh
bmR3aWR0aCA9IHEtPnJhdGVfYnBzOw0KIAlxZC0+bWluX25ldGxlbiA9IH4wOw0KIAlxZC0+bWlu
X2FkamxlbiA9IH4wOw0KKwlxZC0+YWN0aXZlX3F1ZXVlcyA9IDA7DQorCXFkLT5sYXN0X2NoZWNr
ZWRfYWN0aXZlID0gMDsNCisNCiAJcmV0dXJuIDA7DQogZXJyOg0KIAlrdmZyZWUocWQtPmNvbmZp
Zyk7DQpAQCAtMjk3NCw2ICszMDI0LDcgQEAgc3RhdGljIGludCBjYWtlX2R1bXBfc3RhdHMoc3Ry
dWN0IFFkaXNjICpzY2gsIHN0cnVjdCBnbmV0X2R1bXAgKmQpDQogCVBVVF9TVEFUX1UzMihNQVhf
QURKTEVOLCBxLT5tYXhfYWRqbGVuKTsNCiAJUFVUX1NUQVRfVTMyKE1JTl9ORVRMRU4sIHEtPm1p
bl9uZXRsZW4pOw0KIAlQVVRfU1RBVF9VMzIoTUlOX0FESkxFTiwgcS0+bWluX2Fkamxlbik7DQor
CVBVVF9TVEFUX1UzMihBQ1RJVkVfUVVFVUVTLCBxLT5hY3RpdmVfcXVldWVzKTsNCiANCiAjdW5k
ZWYgUFVUX1NUQVRfVTMyDQogI3VuZGVmIFBVVF9TVEFUX1U2NA0KDQotLSANCjIuNTIuMA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==
